import 'package:birdbreeder/common_imports.dart';

enum ActionButtonType {
  cageAdd,
  cageEdit,
  cageDelete,
  speciesAdd,
  speciesEdit,
  speciesDelete,
  colorAdd,
  colorEdit,
  colorDelete,
  contactAdd,
  contactEdit,
  contactDelete,
  birdAdd,
  birdEdit,
  breedingPairEdit,
  breedingPairAdd,
  breedingPairDelete,
  broodAdd,
  broodDelete,
  eggAdd,
  ;

  IconData get icon {
    switch (this) {
      case ActionButtonType.cageAdd:
      case ActionButtonType.speciesAdd:
      case ActionButtonType.colorAdd:
      case ActionButtonType.contactAdd:
      case ActionButtonType.birdAdd:
      case ActionButtonType.breedingPairAdd:
      case ActionButtonType.broodAdd:
      case ActionButtonType.eggAdd:
        return Icons.add;
      case ActionButtonType.broodDelete:
      case ActionButtonType.cageDelete:
      case ActionButtonType.speciesDelete:
      case ActionButtonType.colorDelete:
      case ActionButtonType.contactDelete:
      case ActionButtonType.breedingPairDelete:
        return Icons.delete;
      case ActionButtonType.cageEdit:
      case ActionButtonType.colorEdit:
      case ActionButtonType.speciesEdit:
      case ActionButtonType.contactEdit:
      case ActionButtonType.birdEdit:
      case ActionButtonType.breedingPairEdit:
        return Icons.edit;
    }
  }

  Color get color {
    return switch (this) { _ => Colors.white };
  }

  String get label {
    switch (this) {
      case ActionButtonType.cageAdd:
        return 'Käfig hinzufügen';
      case ActionButtonType.cageEdit:
        return 'Käfig bearbeiten';
      case ActionButtonType.speciesAdd:
        return 'Art hinzufügen';
      case ActionButtonType.speciesEdit:
        return 'Art bearbeiten';
      case ActionButtonType.colorAdd:
        return 'Farbe hinzufügen';
      case ActionButtonType.colorEdit:
        return 'Farbe bearbeiten';
      case ActionButtonType.contactAdd:
        return 'Kontakt hinzufügen';
      case ActionButtonType.contactEdit:
        return 'Kontakt bearbeiten';
      case ActionButtonType.birdAdd:
        return 'Vogel hinzufügen';
      case ActionButtonType.birdEdit:
        return 'Vogel bearbeiten';
      case ActionButtonType.broodAdd:
        return 'Brut hinzufügen';
      case ActionButtonType.broodDelete:
        return 'Brut löschen';
      case ActionButtonType.cageDelete:
        return 'Käfig löschen';
      case ActionButtonType.speciesDelete:
        return 'Art löschen';
      case ActionButtonType.colorDelete:
        return 'Farbe löschen';
      case ActionButtonType.contactDelete:
        return 'Kontakt löschen';
      case ActionButtonType.breedingPairEdit:
        return 'Zuchtpaar bearbeiten';
      case ActionButtonType.breedingPairAdd:
        return 'Zuchtpaar hinzufügen';
      case ActionButtonType.breedingPairDelete:
        return 'Zuchtpaar löschen';
      case ActionButtonType.eggAdd:
        return 'Ei hinzufügen';
    }
  }
}

enum ButtonType {
  icon,
  floatingActionButton,
  elevated,
}

class AppActionButton extends StatelessWidget {
  const AppActionButton({
    super.key,
    required this.onPressed,
    required this.type,
    required this.actionButtonType,
  });

  final void Function()? onPressed;
  final ButtonType type;
  final ActionButtonType actionButtonType;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case ButtonType.icon:
        return InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(25),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Icon(actionButtonType.icon,
                size: 24, color: Theme.of(context).colorScheme.primary),
          ),
        );
      case ButtonType.floatingActionButton:
        return FloatingActionButton(
          onPressed: onPressed,
          child: Icon(actionButtonType.icon, color: Colors.white),
        );
      case ButtonType.elevated:
        return ElevatedButton(
          onPressed: onPressed,
          child: Text(actionButtonType.label),
        );
    }
  }
}
