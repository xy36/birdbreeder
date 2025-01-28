import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/colors/domain/models/bird_color.dart';
import 'package:birdbreeder/features/colors/presentation/cubit/colors_cubit.dart';
import 'package:birdbreeder/features/colors/presentation/widgets/buttons/add_new_color_button.dart';
import 'package:birdbreeder/features/colors/presentation/widgets/color_item.dart';
import 'package:birdbreeder/shared/widgets/search_bar_widget.dart';

class ColorsScreen extends StatefulWidget {
  const ColorsScreen({super.key});

  @override
  State<ColorsScreen> createState() => _ColorsScreenState();
}

class _ColorsScreenState extends State<ColorsScreen> {
  String searchQuery = '';

  List<BirdColor> filteredColors(List<BirdColor> colors) {
    return List<BirdColor>.from(
      colors.where((color) {
        if (searchQuery.isEmpty) return true;
        return color.name!.toLowerCase().contains(searchQuery.toLowerCase());
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorsCubit, ColorsState>(
      buildWhen: (previous, current) => current.isNotListerner,
      builder: (context, state) {
        return Scaffold(
          appBar: SharedAppBarWithDrawer(
            title: context.l10n.colors__title,
            actions: [
              SearchBarWidget(
                onChanged: (value) {
                  setState(() {
                    searchQuery = value;
                  });
                },
              ),
            ],
          ),
          floatingActionButton: const AddNewColorButton(),
          body: state.when(
            initial: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (colors) {
              final searchedColors = filteredColors(colors);

              return ListView.builder(
                itemCount: searchedColors.length,
                itemBuilder: (context, index) {
                  final color = searchedColors[index];

                  if (color.name == null) {
                    return const SizedBox.shrink();
                  }
                  return ColorItem(
                    color: color,
                  );
                },
              );
            },
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
