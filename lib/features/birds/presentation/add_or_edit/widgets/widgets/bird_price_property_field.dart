import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/widgets/bird_property_field.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/shared/utils/formatter/price_formatter.dart';

class BirdPricePropertyField extends StatelessWidget {
  const BirdPricePropertyField({
    required this.bird,
    required this.label,
    required this.name,
    required this.select,
    required this.apply,
    super.key,
    this.hint,
    this.maxLines,
    this.minLines,
    this.suffixIcon,
    this.suffixText,
  });

  final Bird bird;
  final String label;
  final String name;
  final String? hint;
  final int? maxLines;
  final int? minLines;
  final Widget? suffixIcon;
  final String? suffixText;

  final double? Function(Bird) select;
  final Bird Function(Bird, double?) apply;

  @override
  Widget build(BuildContext context) {
    final priceFormatter =
        PriceFormatter(Localizations.localeOf(context).languageCode);

    return BirdPropertyField<String>(
      bird: bird,
      label: label,
      name: name,
      hint: hint,
      select: (b) {
        final value = select(b);
        return value == null ? null : priceFormatter.format(value);
      },
      apply: (b, text) => apply(b, priceFormatter.parse(text)),
      builder: (ctx, initialValue, onChanged) {
        return FormBuilderTextField(
          name: name,
          onChanged: onChanged,
          initialValue: initialValue,
          minLines: minLines,
          maxLines: maxLines,
          onTapOutside: (event) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          inputFormatters: [priceFormatter.inputFormatter],
          decoration: InputDecoration(
            hintText: hint ?? label,
            contentPadding: const EdgeInsets.all(8),
            suffixIcon: suffixIcon,
            suffixText: suffixText,
          ),
        );
      },
    );
  }
}
