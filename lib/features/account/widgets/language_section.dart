import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/account/widgets/account_ui.dart';
import 'package:birdbreeder/i18n/strings.g.dart';
import 'package:birdbreeder/shared/cubits/locale_cubit/locale_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';

/// Language names shown in their own language.
///
/// Endonyms stay readable no matter which locale is active, so they need no
/// translation keys of their own.
const Map<AppLocale, String> _endonyms = {
  AppLocale.de: 'Deutsch',
  AppLocale.en: 'English',
  AppLocale.es: 'Español',
  AppLocale.fr: 'Français',
  AppLocale.it: 'Italiano',
  AppLocale.nl: 'Nederlands',
};

/// Row that opens a sheet for picking the app language.
///
/// Shows the active choice as a trailing label; "system" is the default and
/// keeps following the device setting.
class LanguageSection extends StatelessWidget {
  const LanguageSection({super.key});

  @override
  Widget build(BuildContext context) {
    final tr = context.tr.account.language;

    return BlocBuilder<LocaleCubit, AppLocale?>(
      builder: (context, pinned) {
        return AccountRow(
          badge: const AccountIconBadge(icon: AppIcons.language),
          title: tr.title,
          subtitle: Text(
            pinned == null ? tr.system : _endonyms[pinned] ?? pinned.languageTag,
          ),
          trailing: const Icon(AppIcons.chevronRight),
          onTap: () => _openPicker(context, pinned),
        );
      },
    );
  }

  Future<void> _openPicker(BuildContext context, AppLocale? pinned) {
    final cubit = context.read<LocaleCubit>();
    return showModalBottomSheet<void>(
      context: context,
      backgroundColor: Theme.of(context).colorScheme.surface,
      showDragHandle: true,
      builder: (sheetContext) => _LanguageSheet(
        pinned: pinned,
        onSelected: (locale) {
          Navigator.of(sheetContext).pop();
          cubit.setLocale(locale);
        },
      ),
    );
  }
}

/// Sheet body listing "system" plus every shipped locale.
class _LanguageSheet extends StatelessWidget {
  const _LanguageSheet({required this.pinned, required this.onSelected});

  final AppLocale? pinned;
  final ValueChanged<AppLocale?> onSelected;

  @override
  Widget build(BuildContext context) {
    final tr = context.tr.account.language;
    final textTheme = Theme.of(context).textTheme;

    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 8),
            child: Text(tr.sheet_title, style: textTheme.titleMedium),
          ),
          _LanguageTile(
            label: tr.system,
            selected: pinned == null,
            onTap: () => onSelected(null),
          ),
          const Divider(height: 1),
          for (final locale in AppLocale.values)
            _LanguageTile(
              label: _endonyms[locale] ?? locale.languageTag,
              selected: locale == pinned,
              onTap: () => onSelected(locale),
            ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

/// A single selectable row within [_LanguageSheet].
class _LanguageTile extends StatelessWidget {
  const _LanguageTile({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return ListTile(
      title: Text(
        label,
        style: TextStyle(
          fontWeight: selected ? FontWeight.w600 : FontWeight.w400,
          color: selected ? scheme.primary : scheme.onSurface,
        ),
      ),
      trailing: selected ? Icon(AppIcons.check, color: scheme.primary) : null,
      onTap: onTap,
    );
  }
}
