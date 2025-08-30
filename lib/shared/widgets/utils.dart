import 'dart:ui';

import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/birds_overview_screen.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/cubit/birds_filter_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/cubit/birds_search_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/models/bird_filter.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/services/screen_size.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';

Future<bool> showChildAsDrawerDialog(
  BuildContext context,
  Widget child,
) async {
  double getScreenWidth(BuildContext context) {
    final size = ScreenSize.getScreenSize(context);
    final widthFactor = switch (size) {
      ScreenSize.xs => 1,
      ScreenSize.sm => 1,
      ScreenSize.md => 0.6,
      ScreenSize.lg => 0.35,
    };
    return MediaQuery.of(context).size.width * widthFactor;
  }

  final success = await showGeneralDialog<bool>(
    context: context,
    transitionBuilder: (context, a1, a2, widget) {
      final curvedValue = Curves.easeInOut.transform(a1.value) - 1;
      final width = getScreenWidth(context);
      return Transform(
        transform: Matrix4.translationValues(
          curvedValue * -width,
          0,
          0,
        ),
        child: widget,
      );
    },
    pageBuilder: (
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
    ) {
      return SafeArea(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: Dialog(
            insetPadding: EdgeInsets.zero,
            alignment: Alignment.centerRight,
            child: SizedBox(
              width: getScreenWidth(context),
              child: child,
            ),
          ),
        ),
      );
    },
  );

  return success ?? false;
}

Future<T?> openSheet<T>(
  BuildContext context,
  Widget child,
) async {
  // Fokus vom vorherigen Textfeld lösen, damit nix zurückspringt
  FocusManager.instance.primaryFocus?.unfocus();

  return showModalBottomSheet<T>(
    context: context,
    useSafeArea: true,
    isScrollControlled: true,
    showDragHandle: true,
    backgroundColor: Theme.of(context).colorScheme.surface,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) => child,
  );
}

Future<Bird?> onPickBird(BuildContext context, {BirdFilter? birdFilter}) async {
  final bird = await openSheet<Bird?>(
    context,
    DraggableScrollableSheet(
      initialChildSize: 1,
      expand: false,
      builder: (context, scrollController) {
        context.read<BirdSearchCubit>().reset();
        context.read<BirdsFilterCubit>().applyFilter(
              birdFilter ?? const BirdFilter(),
            );

        return BlocProvider.value(
          value: s1.get<BirdBreederCubit>(),
          child: BirdsOverviewScreen(
            mode: BirdOverviewMode.picker,
            scrollController: scrollController,
          ),
        );
      },
    ),
  );
  return bird;
}
