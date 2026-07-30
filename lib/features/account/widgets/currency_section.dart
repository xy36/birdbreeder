import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/account/widgets/account_ui.dart';
import 'package:birdbreeder/services/currency/currency_service.dart';
import 'package:birdbreeder/shared/cubits/currency_cubit/currency_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/utils/formatter/money_formatter.dart';

/// Row that opens a sheet for picking the display currency.
///
/// Shows the active ISO code plus its symbol; the symbol comes from the locale
/// so it matches what the rest of the app renders.
class CurrencySection extends StatelessWidget {
  const CurrencySection({super.key});

  @override
  Widget build(BuildContext context) {
    final tr = context.tr.account.currency;

    return BlocBuilder<CurrencyCubit, String>(
      builder: (context, code) {
        return AccountRow(
          badge: const AccountIconBadge(icon: AppIcons.currency),
          title: tr.title,
          subtitle: Text('$code · ${context.money.symbol}'),
          trailing: const Icon(AppIcons.chevronRight),
          onTap: () => _openPicker(context, code),
        );
      },
    );
  }

  Future<void> _openPicker(BuildContext context, String code) {
    final cubit = context.read<CurrencyCubit>();
    final locale = Localizations.localeOf(context).languageCode;
    return showModalBottomSheet<void>(
      context: context,
      backgroundColor: Theme.of(context).colorScheme.surface,
      showDragHandle: true,
      isScrollControlled: true,
      builder: (sheetContext) => _CurrencySheet(
        locale: locale,
        selected: code,
        onSelected: (next) {
          Navigator.of(sheetContext).pop();
          cubit.setCurrency(next);
        },
      ),
    );
  }
}

/// Sheet body listing every supported currency.
class _CurrencySheet extends StatelessWidget {
  const _CurrencySheet({
    required this.locale,
    required this.selected,
    required this.onSelected,
  });

  final String locale;
  final String selected;
  final ValueChanged<String> onSelected;

  @override
  Widget build(BuildContext context) {
    final tr = context.tr.account.currency;
    final theme = Theme.of(context);

    return SafeArea(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.sizeOf(context).height * 0.7,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 4),
              child: Text(tr.sheet_title, style: theme.textTheme.titleMedium),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 12),
              child: Text(
                tr.hint,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ),
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: CurrencyService.supported.length,
                itemBuilder: (context, index) {
                  final code = CurrencyService.supported[index];
                  return _CurrencyTile(
                    code: code,
                    sample: MoneyFormatter(locale: locale, currencyCode: code)
                        .format(1234.5),
                    selected: code == selected,
                    onTap: () => onSelected(code),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// A single selectable row within [_CurrencySheet].
class _CurrencyTile extends StatelessWidget {
  const _CurrencyTile({
    required this.code,
    required this.sample,
    required this.selected,
    required this.onTap,
  });

  final String code;
  final String sample;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return ListTile(
      title: Text(
        code,
        style: TextStyle(
          fontWeight: selected ? FontWeight.w600 : FontWeight.w400,
          color: selected ? scheme.primary : scheme.onSurface,
        ),
      ),
      subtitle: Text(sample),
      trailing: selected ? Icon(AppIcons.check, color: scheme.primary) : null,
      onTap: onTap,
    );
  }
}
