import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/cages/domain/models/cage.dart';
import 'package:birdbreeder/features/colors/domain/models/bird_color.dart';
import 'package:birdbreeder/features/contacts/domain/models/contact.dart';
import 'package:birdbreeder/features/species/domain/models/species.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/search_bar_widget.dart';

class RessourceScreen<T> extends StatefulWidget {
  const RessourceScreen({
    super.key,
    required this.fn,
    required this.itemBuilder,
    required this.onAddOrEdit,
    required this.title,
  });

  final bool Function(T object, String query) fn;
  final Widget Function(T object) itemBuilder;
  final void Function(BuildContext context, T? ressource) onAddOrEdit;
  final String title;

  @override
  State<RessourceScreen<T>> createState() => _RessourceScreenState<T>();
}

class _RessourceScreenState<T> extends State<RessourceScreen<T>> {
  String searchQuery = '';

  List<T> filter(List<T> ressource) {
    return List<T>.from(
      ressource.where((object) {
        if (searchQuery.isEmpty) return true;
        return widget.fn(object, searchQuery);
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ressource = context.watch<BirdBreederCubit>().state.maybeWhen(
          loaded: (birdBreederResources) => switch (T) {
            Cage => birdBreederResources.cages as List<T>,
            BirdColor => birdBreederResources.colors as List<T>,
            Species => birdBreederResources.species as List<T>,
            Contact => birdBreederResources.contacts as List<T>,
            _ => <T>[],
          },
          orElse: () => <T>[],
        );

    final filteredRessource = filter(ressource);

    return Scaffold(
      appBar: SharedAppBarWithDrawer(
        title: widget.title,
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
      floatingActionButton: FloatingActionButton(
        onPressed: () => widget.onAddOrEdit(context, null),
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: filteredRessource.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => widget.onAddOrEdit(context, filteredRessource[index]),
          child: widget.itemBuilder(
            filteredRessource[index],
          ),
        ),
      ),
    );
  }
}
