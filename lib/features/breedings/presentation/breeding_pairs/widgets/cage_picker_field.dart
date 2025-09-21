import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/models/cage.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

enum ParentType { father, mother }

class CagePickerField extends StatelessWidget {
  const CagePickerField({
    super.key,
    this.initialValue,
    this.enabled = true,
    this.onChanged,
    this.validator,
  });

  final Cage? initialValue;
  final bool enabled;
  final void Function(Cage?)? onChanged;
  final String? Function(Cage?)? validator;

  @override
  Widget build(BuildContext context) {
    return FormBuilderField<Cage?>(
      name: 'cage_selector',
      initialValue: initialValue,
      enabled: enabled,
      validator: validator,
      builder: (field) {
        final cage = field.value;
        final hasValue = cage != null;
        final display = hasValue ? (cage.name ?? '—') : '';

        return InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: !enabled
              ? null
              : () async {
                  FocusManager.instance.primaryFocus?.unfocus();
                  final picked = await promptValueSelector<Cage>(
                    context,
                    values: context
                        .read<BirdBreederCubit>()
                        .state
                        .birdBreederResources
                        .cages,
                    title: 'Select Cage',
                    filterFn: (item, filter) =>
                        item.name
                            ?.toLowerCase()
                            .contains(filter.toLowerCase()) ??
                        false,
                    itemBuilder: (context, item, index) => ListTile(
                      title: Text(item.name ?? '-'),
                    ),
                  );
                  if (picked != null) {
                    field.didChange(picked);
                    onChanged?.call(picked);
                  }
                },
          child: InputDecorator(
            isEmpty: !hasValue,
            decoration: InputDecoration(
              labelText: 'Select Cage',
              prefixIcon: const Icon(AppIcons.cage),
              errorText: field.errorText,
              enabled: enabled,
              suffixIcon: hasValue && enabled
                  ? IconButton(
                      tooltip: context.tr.common.reset,
                      icon: const Icon(AppIcons.clear),
                      onPressed: () {
                        field.didChange(null);
                        onChanged?.call(null);
                      },
                    )
                  : null,
            ),
            child: Text(
              display,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        );
      },
    );
  }
}
