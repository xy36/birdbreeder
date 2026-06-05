import 'package:birdbreeder/features/ressourcen_center/colors/cubit/colors_filter_state.dart';
import 'package:birdbreeder/models/ressources/entity/bird_color.dart';
import 'package:birdbreeder/shared/utils/natural_compare.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorsFilterCubit extends Cubit<ColorsFilterState> {
  ColorsFilterCubit() : super(const ColorsFilterState());

  void setQuery(String q) => emit(state.copyWith(query: q));

  void setSort(ColorSortField field, bool ascending) =>
      emit(state.copyWith(sortField: field, sortAsc: ascending));

  void reset() => emit(const ColorsFilterState());

  List<BirdColor> filterColors(List<BirdColor> colors) {
    final q = state.query.trim().toLowerCase();
    final filtered = q.isEmpty
        ? List<BirdColor>.from(colors)
        : colors.where((c) {
            return (c.name ?? '').toLowerCase().contains(q) ||
                (c.hex ?? '').toLowerCase().contains(q);
          }).toList();
    _sort(filtered);
    return filtered;
  }

  void _sort(List<BirdColor> list) {
    final dir = state.sortAsc ? 1 : -1;
    list.sort((a, b) {
      switch (state.sortField) {
        case ColorSortField.name:
          return dir * naturalCompare(a.name ?? '', b.name ?? '');
        case ColorSortField.created:
          final ac = a.created ?? DateTime(1970);
          final bc = b.created ?? DateTime(1970);
          return dir * ac.compareTo(bc);
        case ColorSortField.hex:
          return dir *
              (a.hex ?? '').toLowerCase().compareTo(
                    (b.hex ?? '').toLowerCase(),
                  );
      }
    });
  }
}
