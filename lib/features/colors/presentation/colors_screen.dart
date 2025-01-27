import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/colors/domain/models/bird_color.dart';
import 'package:birdbreeder/features/colors/presentation/cubit/colors_cubit.dart';
import 'package:birdbreeder/features/colors/presentation/widgets/buttons/add_new_color_button.dart';
import 'package:birdbreeder/features/colors/presentation/widgets/color_item.dart';
import 'package:birdbreeder/services/screen_size.dart';

class ColorsScreen extends StatefulWidget {
  const ColorsScreen({super.key});

  @override
  State<ColorsScreen> createState() => _ColorsScreenState();
}

class _ColorsScreenState extends State<ColorsScreen> {
  bool showSearch = false;

  final controller = TextEditingController();

  String searchQuery = '';

  @override
  void initState() {
    controller.addListener(() {
      setState(() {
        searchQuery = controller.text;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorsCubit, ColorsState>(
      buildWhen: (previous, current) => current.isNotListerner,
      builder: (context, state) {
        final width = ScreenSize.getScreenSize(context).isMobile()
            ? MediaQuery.of(context).size.width - 150
            : 400.0;
        return Scaffold(
          appBar: SharedAppBarWithDrawer(
            title: context.l10n.colors__title,
            actions: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: showSearch ? width : 0,
                child: showSearch
                    ? Padding(
                        padding: const EdgeInsets.all(4),
                        child: SearchBar(
                          controller: controller,
                          hintText: 'Search',
                          onChanged: (value) {
                            setState(() {
                              controller.text = value;
                            });
                          },
                          trailing: [
                            if (controller.text.isNotEmpty)
                              IconButton(
                                onPressed: () {
                                  setState(controller.clear);
                                },
                                icon: const Icon(Icons.close),
                              ),
                          ],
                        ),
                      )
                    : const SizedBox.shrink(),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    showSearch = !showSearch;

                    if (!showSearch) {
                      controller.clear();
                    }
                  });
                },
                icon: Icon(showSearch ? Icons.search_off : Icons.search),
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
              final searchedColors = List<BirdColor>.from(
                colors.where((color) {
                  if (searchQuery.isEmpty) return true;
                  return color.name!
                      .toLowerCase()
                      .contains(searchQuery.toLowerCase());
                }),
              );

              return ListView.builder(
                itemCount: searchedColors.length,
                itemBuilder: (context, index) {
                  final color = searchedColors[index];

                  if (color.name == null) return const SizedBox.shrink();
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
