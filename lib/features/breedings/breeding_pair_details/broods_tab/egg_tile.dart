import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/egg_extension.dart';
import 'package:birdbreeder/core/extensions/generic_join.dart';
import 'package:birdbreeder/models/egg/egg_actions.dart';
import 'package:birdbreeder/models/egg/entity/egg.dart';
import 'package:birdbreeder/shared/icons.dart';

class EggTile extends StatelessWidget {
  const EggTile({
    required this.egg,
    super.key,
  });

  final Egg egg;

  @override
  Widget build(BuildContext context) {
    final (bg, fg, icon, label) = egg.status.getDisplayData(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Column(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              spacing: 12,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    spacing: 8,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: bg,
                          borderRadius: BorderRadius.circular(999),
                        ),
                        child: Text(
                          label,
                          style: TextStyle(
                            color: fg,
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    spacing: 4,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (egg.ringnumber != null)
                        _textWithIcon(
                          context,
                          egg.ringnumber!,
                          AppIcons.ringNumber,
                        ),
                      if (egg.colorId != null)
                        _textWithIcon(
                          context,
                          egg.colorResolved?.name ?? '-',
                          AppIcons.color,
                        ),
                    ],
                  ),
                ),
                _moreMenu(context, egg),
              ],
            ),
            Row(
              children: <Widget>[
                _dateWidget(context, egg.laidAt, fg, AppIcons.egg),
                if (egg.hatchedAt != null)
                  _dateWidget(context, egg.hatchedAt!, fg, AppIcons.hatched),
                if (egg.fledgedAt != null)
                  _dateWidget(
                    context,
                    egg.fledgedAt!,
                    fg,
                    AppIcons.fledged,
                  ),
              ].genericJoin(
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Icon(AppIcons.separator, size: 4, color: fg),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _textWithIcon(
    BuildContext context,
    String text,
    IconData icon,
  ) {
    return Row(
      spacing: 4,
      children: [
        Icon(
          icon,
          size: 14,
        ),
        Expanded(
          child: Text(
            text,
            style: context.bodySmall,
          ),
        ),
      ],
    );
  }

  Widget _dateWidget(
    BuildContext context,
    DateTime date,
    Color fg,
    IconData icon,
  ) {
    return Row(
      spacing: 4,
      children: [
        Icon(
          icon,
          color: fg,
          size: 14,
        ),
        Text(
          MaterialLocalizations.of(context).formatShortDate(date),
          style: Theme.of(context).textTheme.bodySmall?.copyWith(color: fg),
        ),
      ],
    );
  }

  Widget _moreMenu(BuildContext context, Egg egg) {
    return PopupMenuButton<EggActions>(
      onSelected: (v) => v.executeAction(context, egg),
      itemBuilder: (context) =>
          EggActions.values.map((action) => action.getItem(context)).toList(),
      icon: const Icon(AppIcons.more),
    );
  }
}
