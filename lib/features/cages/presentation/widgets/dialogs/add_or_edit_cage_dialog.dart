import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/generic_join.dart';
import 'package:birdbreeder/features/cages/domain/models/cage.dart';
import 'package:birdbreeder/services/screen_size.dart';
import 'package:birdbreeder/shared/widgets/field_with_label.dart';
import 'package:birdbreeder/shared/widgets/icons.dart';
import 'package:birdbreeder/shared/widgets/navigate_back_button.dart';
import 'package:flutter/services.dart';

class AddOrEditCageDialog extends StatefulWidget {
  const AddOrEditCageDialog({super.key, required this.onAdd, this.initialCage});

  final void Function(Cage) onAdd;
  final Cage? initialCage;

  @override
  State<AddOrEditCageDialog> createState() => _AddOrEditCageDialogState();
}

class _AddOrEditCageDialogState extends State<AddOrEditCageDialog> {
  @override
  void initState() {
    _cage = widget.initialCage;
    super.initState();
  }

  Cage? _cage;

  final formKey = GlobalKey<FormState>();

  bool get isDirty => widget.initialCage != _cage;

  @override
  Widget build(BuildContext context) {
    final size = ScreenSize.getScreenSize(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.cages__add_cage),
        leading: NavigateBackButton(discardDialogEnabled: isDirty),
        actions: [
          if (isDirty)
            IconButton(
              onPressed: () {
                if (formKey.currentState?.validate() == true && _cage != null) {
                  widget.onAdd(_cage!);

                  Navigator.of(context).pop();
                }
              },
              icon: isDirty ? saveIcon : const SizedBox(),
            ),
        ],
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.hPaddingSmall,
            vertical: size.vPaddingSmall,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              FieldWithLabel(
                label: context.l10n.cages__name,
                child: TextFormField(
                  initialValue: _cage?.name,
                  decoration: InputDecoration(
                    hintText: context.l10n.cages__name,
                  ),
                  onChanged: (value) {
                    setState(() {
                      _cage = (_cage ?? Cage.create()).copyWith(name: value);
                    });
                  },
                  validator: (value) {
                    if (value.isNullOrEmpty) {
                      return context.l10n.cages__name_is_required;
                    }
                    return null;
                  },
                ),
              ),
              FieldWithLabel(
                label: context.l10n.cages__description,
                child: TextFormField(
                  initialValue: _cage?.description,
                  minLines: 3,
                  maxLines: 10,
                  decoration: InputDecoration(
                    hintText: context.l10n.cages__description,
                  ),
                  onChanged: (value) {
                    setState(() {
                      _cage =
                          (_cage ?? Cage.create()).copyWith(description: value);
                    });
                  },
                ),
              ),
              FieldWithLabel(
                label: context.l10n.cages__height,
                child: TextFormField(
                  initialValue: _cage?.height?.toString(),
                  decoration: InputDecoration(
                    hintText: context.l10n.cages__height,
                    suffix: Text(context.l10n.common__unit_m),
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _cage = (_cage ?? Cage.create())
                          .copyWith(height: int.tryParse(value));
                    });
                  },
                ),
              ),
              FieldWithLabel(
                label: context.l10n.cages__width,
                child: TextFormField(
                  initialValue: _cage?.width?.toString(),
                  decoration: InputDecoration(
                    hintText: context.l10n.cages__width,
                    suffix: Text(context.l10n.common__unit_m),
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _cage = (_cage ?? Cage.create())
                          .copyWith(width: int.tryParse(value));
                    });
                  },
                ),
              ),
              FieldWithLabel(
                label: context.l10n.cages__depth,
                child: TextFormField(
                  initialValue: _cage?.depth?.toString(),
                  decoration: InputDecoration(
                    hintText: context.l10n.cages__depth,
                    suffix: Text(context.l10n.common__unit_m),
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _cage = (_cage ?? Cage.create())
                          .copyWith(depth: int.tryParse(value));
                    });
                  },
                ),
              ),
            ].genericJoin(const SizedBox(height: 16)),
          ),
        ),
      ),
    );
  }
}
