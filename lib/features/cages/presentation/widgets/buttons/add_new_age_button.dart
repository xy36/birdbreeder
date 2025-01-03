import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/cages/presentation/cubit/cages_cubit.dart';
import 'package:birdbreeder/features/cages/presentation/widgets/dialogs/add_or_edit_cage_dialog.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

class AddNewCageButton extends StatefulWidget {
  const AddNewCageButton({super.key});

  @override
  State<AddNewCageButton> createState() => _AddNewCageButtonState();
}

class _AddNewCageButtonState extends State<AddNewCageButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        final bloc = context.read<CagesCubit>();
        await showChildAsDrawerDialog(
          context,
          AddOrEditCageDialog(
            cagesBloc: bloc,
          ),
        );
      },
      child: const Icon(Icons.add),
    );
  }
}
