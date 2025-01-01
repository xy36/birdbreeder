import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/cages/presentation/bloc/cages_bloc.dart';
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
        final bloc = context.read<CagesBloc>();
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
