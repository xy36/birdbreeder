import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/widgets/section_card.dart';

class ChildrenSection extends StatelessWidget {
  const ChildrenSection(this.bird, {super.key});

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      collapsible: true,
      icon: Icons.child_friendly,
      title:
          '${context.l10n.bird__section_title_children} (${bird.childrenResolved.length})',
      subtitle: context.l10n.bird__section_sub_title_children,
      children: [
        ListView.separated(
          primary: false,
          shrinkWrap: true,
          itemCount: bird.childrenResolved.length,
          itemBuilder: (context, index) {
            final b = bird.childrenResolved[index];

            return ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(b.ringNumber ?? '-'),
                  Text(
                    b.hatchedAt?.toDateFormat(context) ?? '',
                    style: context.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ],
              ),
              leading: Icon(b.lifeStage?.icon ?? Icons.question_mark),
              subtitle: Row(
                spacing: 8,
                children: [
                  Text(
                    style: context.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                    b.cageResolved?.name ?? '',
                  ),
                  Text(
                    style: context.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                    b.colorResolved?.name ?? '',
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider();
          },
        ),
      ],
    );
  }
}
