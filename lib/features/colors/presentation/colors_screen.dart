import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/colors/presentation/cubit/colors_cubit.dart';
import 'package:birdbreeder/features/colors/presentation/widgets/buttons/add_new_color_button.dart';
import 'package:birdbreeder/features/colors/presentation/widgets/color_item.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorsCubit, ColorsState>(
      buildWhen: (previous, current) => current.isNotListerner,
      builder: (context, state) {
        return Scaffold(
          appBar: SharedAppBarWithDrawer(
            title: context.l10n.colors__title,
          ),
          floatingActionButton: const AddNewColorButton(),
          body: state.when(
            initial: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (colors) => ListView.builder(
              itemCount: colors.length,
              itemBuilder: (context, index) {
                final color = colors[index];

                if (color.name == null) return const SizedBox.shrink();
                return ColorItem(
                  color: color,
                );
              },
            ),
            errorScreen: () {
              return Center(
                child: Text(context.l10n.common__something_went_wrong),
              );
            },
          ),
        );
      },
    );
  }
}
