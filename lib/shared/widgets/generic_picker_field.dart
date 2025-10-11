import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

class GenericPickerField<T> extends StatelessWidget {
  const GenericPickerField({
    super.key,
    required this.name,
    required this.title,
    required this.values,
    required this.displayStringFor,
    required this.itemBuilder,
    this.initialValue,
    this.enabled = true,
    this.onChanged,
    this.validator,
    this.labelText,
    this.prefixIcon,
    this.clearable = true,
    this.filterFn,
    this.onAdd, // if provided and using default picker, shows an "Add" flow
    this.decoration,
    this.pickerBuilder, // custom picker UI if you prefer your own
  });

  /// Form field name
  final String name;

  /// Initial value
  final T? initialValue;

  /// Items to choose from
  final List<T> values;

  /// Whether the field is interactive
  final bool enabled;

  /// How to render a T as a one-line label
  final String Function(T) displayStringFor;

  /// Called when the field changes
  final void Function(T?)? onChanged;

  /// Form validator
  final String? Function(T?)? validator;

  /// Label for the InputDecorator
  final String? labelText;

  /// Optional prefix icon
  final IconData? prefixIcon;

  /// Allow clearing the current value
  final bool clearable;

  /// Optional filter predicate (default uses displayStringFor contains)
  final bool Function(T item, String filter)? filterFn;

  /// Optional custom ListTile for an item in the default picker
  final Widget Function(BuildContext context, T item, int index) itemBuilder;

  /// Optional "Add" handler for the default picker (appears when typed text doesn't match)
  final Future<T?> Function(String name)? onAdd;

  /// Title for the default picker
  final String title;

  /// Override the decoration; if provided, `labelText`, `prefixIcon` are ignored.
  final InputDecoration? decoration;

  /// Custom picker builder:
  /// If provided, this will be called to pick an item instead of the default bottom sheet.
  /// Signature: Future<T?> Function(BuildContext, List<T> values, T? current)
  final Future<T?> Function(BuildContext, List<T>, T?)? pickerBuilder;

  @override
  Widget build(BuildContext context) {
    return FormBuilderField<T?>(
      name: name,
      initialValue: initialValue,
      enabled: enabled,
      validator: validator,
      builder: (field) {
        final value = field.value;
        final hasValue = value != null;
        final display = hasValue ? displayStringFor(value as T) : '';

        final deco = decoration ??
            InputDecoration(
              labelText: labelText ?? context.tr.common.hint.select,
              prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
              errorText: field.errorText,
              enabled: enabled,
              suffixIcon: hasValue && enabled && clearable
                  ? IconButton(
                      icon: const Icon(AppIcons.clear),
                      onPressed: () {
                        field.didChange(null);
                        onChanged?.call(null);
                      },
                    )
                  : null,
            );

        return InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: !enabled
              ? null
              : () async {
                  FocusManager.instance.primaryFocus?.unfocus();

                  final T? picked;
                  if (pickerBuilder != null) {
                    picked = await pickerBuilder!(context, values, field.value);
                  } else {
                    picked = await promptValueSelector<T>(
                      context,
                      values: values,
                      title: title,
                      filterFn: filterFn,
                      itemBuilder: itemBuilder,
                      onAdd: onAdd,
                    );
                  }

                  if (picked != null) {
                    field.didChange(picked);
                    onChanged?.call(picked);
                  }
                },
          child: InputDecorator(
            isEmpty: !hasValue,
            decoration: deco,
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
