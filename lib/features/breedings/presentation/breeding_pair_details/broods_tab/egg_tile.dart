import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/egg_extension.dart';
import 'package:birdbreeder/core/extensions/generic_join.dart';
import 'package:birdbreeder/features/birds/domain/models/egg.dart';
import 'package:birdbreeder/features/breedings/presentation/breeding_pair_details/models/egg_actions.dart';

class EggTile extends StatelessWidget {
  const EggTile({
    super.key,
    required this.egg,
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
                          Icons.animation_outlined,
                        ),
                      if (egg.colorId != null)
                        _textWithIcon(
                          context,
                          egg.colorResolved?.name ?? '-',
                          Icons.color_lens_outlined,
                        ),
                    ],
                  ),
                ),
                _moreMenu(context, egg),
              ],
            ),
            Row(
              children: <Widget>[
                _dateWidget(context, egg.laidAt, fg, Icons.egg_outlined),
                if (egg.hatchedAt != null)
                  _dateWidget(context, egg.hatchedAt!, fg, Icons.access_alarm),
                if (egg.fledgedAt != null)
                  _dateWidget(
                    context,
                    egg.fledgedAt!,
                    fg,
                    Icons.flight_takeoff,
                  ),
              ].genericJoin(
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Icon(Icons.circle, size: 4, color: fg),
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
      icon: const Icon(Icons.more_vert_rounded),
    );
  }
}
