import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/models/breeding/entity/breeding_pair.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:birdbreeder/models/ressources/entity/bird_color.dart';
import 'package:birdbreeder/models/ressources/entity/cage.dart';
import 'package:birdbreeder/models/ressources/entity/species.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/search_bar_widget.dart';

class RessourceScreen<T> extends StatefulWidget {
  const RessourceScreen({
    required this.fn,
    required this.itemBuilder,
    required this.onAdd,
    required this.onItemTap,
    required this.title,
    super.key,
  });

  final bool Function(T object, String query) fn;
  final Widget Function(T object) itemBuilder;
  final void Function(BuildContext context) onAdd;
  final void Function(BuildContext context, T ressource) onItemTap;
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
            BreedingPair => birdBreederResources.breedingPairs as List<T>,
            _ => throw Exception('Unsupported type for ressource screen'),
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
        onPressed: () => widget.onAdd(context),
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: filteredRessource.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => widget.onItemTap(context, filteredRessource[index]),
          child: widget.itemBuilder(
            filteredRessource[index],
          ),
        ),
      ),
    );
  }
}
