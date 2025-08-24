import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/screen_size_extensions.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/models/cage.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/buttons/app_action_button.dart';
import 'package:birdbreeder/shared/widgets/buttons/generic_button.dart';
import 'package:birdbreeder/shared/widgets/field_with_label.dart';
import 'package:birdbreeder/shared/widgets/icons.dart';
import 'package:birdbreeder/shared/widgets/navigate_back_button.dart';
import 'package:flutter/services.dart';

@RoutePage()
class CageDetailsPage extends StatefulWidget {
  const CageDetailsPage({
    super.key,
    this.initialCage,
  });

  final Cage? initialCage;

  @override
  State<CageDetailsPage> createState() => _CageDetailsPageState();
}

class _CageDetailsPageState extends State<CageDetailsPage> {
  @override
  void initState() {
    _cage = widget.initialCage;
    super.initState();
  }

  Cage? _cage;

  final formKey = GlobalKey<FormState>();

  bool get isDirty => widget.initialCage != _cage;

  bool get isEdit => widget.initialCage != null;

  bool get isValid => formKey.currentState?.validate() == true && _cage != null;

  Widget get icon => isEdit ? saveIcon : acceptIcon;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<BirdBreederCubit>();
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.cages__add_cage),
        leading: NavigateBackButton(discardDialogEnabled: isDirty),
        actions: [
          IconButton(
            onPressed: () {
              if (isValid) {
                isEdit ? cubit.updateCage(_cage!) : cubit.addCage(_cage!);

                Navigator.of(context).pop();
              }
            },
            icon: isDirty ? icon : const SizedBox(),
          ),
          if (widget.initialCage != null)
            GenericButton.icon(
              actionButtonType: ActionButtonType.cageDelete,
              onTap: () {
                context.read<BirdBreederCubit>().deleteCage(_cage!);
                Navigator.of(context).pop();
              },
            ),
        ],
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: EdgeInsets.all(
            context.responsiveValueMobileAndGreater<double>(
              mobile: 8,
              greater: 16,
            ),
          ),
          child: Column(
            children: [
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
                      return context.l10n.common__required;
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
            ],
          ),
        ),
      ),
    );
  }
}
