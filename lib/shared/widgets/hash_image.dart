import 'dart:io';

import 'package:birdbreeder/services/images/image_store.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:flutter/material.dart';

/// Displays a content-addressed image blob from the local [ImageStore] by its
/// [hash]. Blobs have no file extension; `Image.file` detects the format by
/// content. Shows a broken-image placeholder while resolving or on error.
class HashImage extends StatefulWidget {
  const HashImage({required this.hash, this.fit = BoxFit.cover, super.key});

  final String hash;
  final BoxFit fit;

  @override
  State<HashImage> createState() => _HashImageState();
}

class _HashImageState extends State<HashImage> {
  late Future<File?> _file = ImageStore.get(widget.hash);

  @override
  void didUpdateWidget(HashImage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.hash != widget.hash) {
      _file = ImageStore.get(widget.hash);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<File?>(
      future: _file,
      builder: (context, snapshot) {
        final file = snapshot.data;
        if (snapshot.connectionState == ConnectionState.done && file != null) {
          return Image.file(
            file,
            fit: widget.fit,
            errorBuilder: (_, __, ___) => const _Placeholder(),
          );
        }
        return const _Placeholder();
      },
    );
  }
}

class _Placeholder extends StatelessWidget {
  const _Placeholder();

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return ColoredBox(
      color: scheme.surfaceContainerHighest,
      child: Center(
        child: Icon(
          AppIcons.brokenImageOutlined,
          color: scheme.onSurfaceVariant,
        ),
      ),
    );
  }
}
