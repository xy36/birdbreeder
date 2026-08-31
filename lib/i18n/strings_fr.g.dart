///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsFr extends Translations with BaseTranslations<AppLocale, Translations> {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsFr(
      {Map<String, Node>? overrides,
      PluralResolver? cardinalResolver,
      PluralResolver? ordinalResolver,
      TranslationMetadata<AppLocale, Translations>? meta})
      : assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
        $meta = meta ??
            TranslationMetadata(
              locale: AppLocale.fr,
              overrides: overrides ?? {},
              cardinalResolver: cardinalResolver,
              ordinalResolver: ordinalResolver,
            ),
        super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

  /// Metadata for the translations of <fr>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final TranslationsFr _root = this; // ignore: unused_field

  @override
  TranslationsFr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsFr(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsAppFr app = _TranslationsAppFr._(_root);
  @override
  late final _TranslationsOnboardingFr onboarding = _TranslationsOnboardingFr._(_root);
  @override
  late final _TranslationsFinancesFr finances = _TranslationsFinancesFr._(_root);
  @override
  late final _TranslationsAccountFr account = _TranslationsAccountFr._(_root);
  @override
  late final _TranslationsBackupFr backup = _TranslationsBackupFr._(_root);
  @override
  late final _TranslationsBreedingsFr breedings = _TranslationsBreedingsFr._(_root);
  @override
  late final _TranslationsColorsFr colors = _TranslationsColorsFr._(_root);
  @override
  late final _TranslationsCagesFr cages = _TranslationsCagesFr._(_root);
  @override
  late final _TranslationsSpeciesFr species = _TranslationsSpeciesFr._(_root);
  @override
  late final _TranslationsContactsFr contacts = _TranslationsContactsFr._(_root);
  @override
  late final _TranslationsBreedingPairsFr breeding_pairs = _TranslationsBreedingPairsFr._(_root);
  @override
  late final _TranslationsResourcesFr resources = _TranslationsResourcesFr._(_root);
  @override
  late final _TranslationsBirdsFr birds = _TranslationsBirdsFr._(_root);
  @override
  late final _TranslationsPedigreeFr pedigree = _TranslationsPedigreeFr._(_root);
  @override
  late final _TranslationsInbreedingFr inbreeding = _TranslationsInbreedingFr._(_root);
  @override
  late final _TranslationsBirdFr bird = _TranslationsBirdFr._(_root);
  @override
  late final _TranslationsPairDetailFr pair_detail = _TranslationsPairDetailFr._(_root);
  @override
  late final _TranslationsBroodFr brood = _TranslationsBroodFr._(_root);
  @override
  late final _TranslationsEggFr egg = _TranslationsEggFr._(_root);
  @override
  late final _TranslationsCommonFr common = _TranslationsCommonFr._(_root);
  @override
  late final _TranslationsAuthFr auth = _TranslationsAuthFr._(_root);
  @override
  late final _TranslationsCsvImportFr csv_import = _TranslationsCsvImportFr._(_root);
  @override
  late final _TranslationsMenuFr menu = _TranslationsMenuFr._(_root);
  @override
  late final _TranslationsErrorFr error = _TranslationsErrorFr._(_root);
  @override
  late final _TranslationsDialogFr dialog = _TranslationsDialogFr._(_root);
  @override
  late final _TranslationsPopUpMenuFr pop_up_menu = _TranslationsPopUpMenuFr._(_root);
  @override
  late final _TranslationsExportFr export = _TranslationsExportFr._(_root);
  @override
  late final _TranslationsDocumentsFr documents = _TranslationsDocumentsFr._(_root);
  @override
  late final _TranslationsSnackbarsFr snackbars = _TranslationsSnackbarsFr._(_root);
}

// Path: app
class _TranslationsAppFr extends TranslationsAppDe {
  _TranslationsAppFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Birdbreeder';
}

// Path: onboarding
class _TranslationsOnboardingFr extends TranslationsOnboardingDe {
  _TranslationsOnboardingFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Configurer le profil';
  @override
  String get subtitle => 'Créez votre propre profil. Il sert d\'utilisateur de l\'application, par exemple pour identifier vos propres oiseaux.';
  @override
  String get first_name => 'Prénom';
  @override
  String get last_name => 'Nom';
  @override
  String get last_name_required => 'Veuillez saisir un nom.';
  @override
  String get breeder_number => 'Numéro d\'éleveur';
  @override
  String get breeder_number_required => 'Veuillez saisir un numéro d\'éleveur.';
  @override
  String get save => 'Enregistrer le profil';
  @override
  String get or => 'ou';
  @override
  String get restore_backup => 'Restaurer une sauvegarde';
}

// Path: finances
class _TranslationsFinancesFr extends TranslationsFinancesDe {
  _TranslationsFinancesFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Finances';
  @override
  late final _TranslationsFinancesCategoriesFr categories = _TranslationsFinancesCategoriesFr._(_root);
  @override
  String get delete => 'Supprimer l\'écriture ?';
  @override
  late final _TranslationsFinancesAddFr add = _TranslationsFinancesAddFr._(_root);
  @override
  late final _TranslationsFinancesKindFr kind = _TranslationsFinancesKindFr._(_root);
  @override
  late final _TranslationsFinancesSummaryFr summary = _TranslationsFinancesSummaryFr._(_root);
  @override
  late final _TranslationsFinancesViewFr view = _TranslationsFinancesViewFr._(_root);
  @override
  late final _TranslationsFinancesScopeFr scope = _TranslationsFinancesScopeFr._(_root);
  @override
  late final _TranslationsFinancesFilterFr filter = _TranslationsFinancesFilterFr._(_root);
  @override
  late final _TranslationsFinancesSortingFr sorting = _TranslationsFinancesSortingFr._(_root);
}

// Path: account
class _TranslationsAccountFr extends TranslationsAccountDe {
  _TranslationsAccountFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Compte';
  @override
  String get logout => 'Déconnexion';
  @override
  String get switch_to_local => 'Passer en mode local';
  @override
  late final _TranslationsAccountSwitchToLocalDialogFr switch_to_local_dialog = _TranslationsAccountSwitchToLocalDialogFr._(_root);
  @override
  late final _TranslationsAccountLocalModeFr local_mode = _TranslationsAccountLocalModeFr._(_root);
  @override
  late final _TranslationsAccountAppearanceFr appearance = _TranslationsAccountAppearanceFr._(_root);
  @override
  late final _TranslationsAccountLanguageFr language = _TranslationsAccountLanguageFr._(_root);
  @override
  late final _TranslationsAccountCurrencyFr currency = _TranslationsAccountCurrencyFr._(_root);
  @override
  late final _TranslationsAccountProfileFr profile = _TranslationsAccountProfileFr._(_root);
  @override
  late final _TranslationsAccountUserFr user = _TranslationsAccountUserFr._(_root);
  @override
  late final _TranslationsAccountEventsFr events = _TranslationsAccountEventsFr._(_root);
}

// Path: backup
class _TranslationsBackupFr extends TranslationsBackupDe {
  _TranslationsBackupFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get section_title => 'Sauvegarde';
  @override
  String get page_title => 'Sauvegardes';
  @override
  String get empty => 'Aucune sauvegarde pour le moment.';
  @override
  String get loading => 'Chargement…';
  @override
  String get no_backup_yet => 'Aucune sauvegarde';
  @override
  String last_backup({required Object Date}) => 'Dernière sauvegarde : ${Date}';
  @override
  late final _TranslationsBackupExternalFr external = _TranslationsBackupExternalFr._(_root);
  @override
  late final _TranslationsBackupActionsFr actions = _TranslationsBackupActionsFr._(_root);
  @override
  String get manual_section => 'Sauvegarde manuelle';
  @override
  String get last_backup_label => 'Dernière sauvegarde';
  @override
  String get no_backup_size => 'Aucune sauvegarde';
  @override
  String get create_hint => 'Ouvre la boîte de partage – choisissez Drive, Fichiers, e-mail, etc. Les photos sont incluses.';
  @override
  String get restore_hint => 'Par ex. après un changement d\'appareil – restaure un état antérieur.';
  @override
  late final _TranslationsBackupRestoreSheetFr restore_sheet = _TranslationsBackupRestoreSheetFr._(_root);
  @override
  late final _TranslationsBackupMenuFr menu = _TranslationsBackupMenuFr._(_root);
  @override
  late final _TranslationsBackupDeleteDialogFr delete_dialog = _TranslationsBackupDeleteDialogFr._(_root);
  @override
  late final _TranslationsBackupRestoreDialogFr restore_dialog = _TranslationsBackupRestoreDialogFr._(_root);
  @override
  late final _TranslationsBackupReminderFr reminder = _TranslationsBackupReminderFr._(_root);
  @override
  late final _TranslationsBackupEventsFr events = _TranslationsBackupEventsFr._(_root);
  @override
  late final _TranslationsBackupCloudFr cloud = _TranslationsBackupCloudFr._(_root);
}

// Path: breedings
class _TranslationsBreedingsFr extends TranslationsBreedingsDe {
  _TranslationsBreedingsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Élevages';
}

// Path: colors
class _TranslationsColorsFr extends TranslationsColorsDe {
  _TranslationsColorsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Couleurs';
  @override
  String get add => 'Ajouter une couleur';
  @override
  String get edit => 'Modifier la couleur';
  @override
  String get select => 'Choisir une couleur';
  @override
  String get pick => 'Choisir une couleur';
  @override
  String get delete => 'Supprimer la couleur ?';
  @override
  String get color => 'Couleur';
  @override
  String get list_title => 'Variétés de couleur';
  @override
  String get value_label => 'Valeur de couleur';
  @override
  String get genetics_section => 'Génétique (facultatif)';
  @override
  String get inheritance_label => 'Hérédité';
  @override
  String get inheritance_hint => 'par ex. autosomique dominant';
  @override
  String get birds_with_color => 'Oiseaux de cette couleur';
  @override
  String get no_birds_with_color => 'Aucun oiseau de cette couleur';
  @override
  String get empty => 'Aucune couleur';
  @override
  String get detail_title => 'Couleur';
  @override
  late final _TranslationsColorsStatsFr stats = _TranslationsColorsStatsFr._(_root);
}

// Path: cages
class _TranslationsCagesFr extends TranslationsCagesDe {
  _TranslationsCagesFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Volières';
  @override
  String get add => 'Ajouter une volière';
  @override
  String get edit => 'Modifier la volière';
  @override
  String get select => 'Choisir une volière';
  @override
  String get delete => 'Supprimer la volière ?';
  @override
  String get name => 'Nom de la volière';
  @override
  String get description => 'Description';
  @override
  String get height => 'Hauteur';
  @override
  String get width => 'Largeur';
  @override
  String get depth => 'Profondeur';
  @override
  String get list_title => 'Cages';
  @override
  String get detail_title => 'Volière';
  @override
  late final _TranslationsCagesSectionFr section = _TranslationsCagesSectionFr._(_root);
  @override
  late final _TranslationsCagesFieldFr field = _TranslationsCagesFieldFr._(_root);
  @override
  late final _TranslationsCagesUnitsFr units = _TranslationsCagesUnitsFr._(_root);
  @override
  String get occupancy => 'Occupation';
  @override
  String get occupied_label => 'Occupées';
  @override
  String get free_label => 'Libres';
  @override
  String get birds_count_label => 'Oiseaux';
  @override
  String capacity_hint({required Object Occupied}) => 'Actuellement occupées : ${Occupied}. Impossible de descendre sous ${Occupied}.';
  @override
  String get capacity_missing_hint => 'Capacité non définie — veuillez saisir une valeur';
  @override
  String get empty_badge => 'VIDE';
  @override
  String places_occupied({required Object Occupied, required Object Capacity}) => '${Occupied}/${Capacity} places occupées';
  @override
  String get empty_filter => 'Aucune cage pour ce filtre';
  @override
  late final _TranslationsCagesFiltersFr filters = _TranslationsCagesFiltersFr._(_root);
  @override
  late final _TranslationsCagesTypesFr types = _TranslationsCagesTypesFr._(_root);
}

// Path: species
class _TranslationsSpeciesFr extends TranslationsSpeciesDe {
  _TranslationsSpeciesFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Espèces';
  @override
  String get add => 'Ajouter une espèce';
  @override
  String get edit => 'Modifier l\'espèce';
  @override
  String get select => 'Choisir une espèce';
  @override
  String get delete => 'Supprimer l\'espèce ?';
  @override
  String get name => 'Nom de l\'espèce';
  @override
  String get latin_name => 'Nom latin';
  @override
  String get detail_title => 'Espèce';
  @override
  late final _TranslationsSpeciesSectionFr section = _TranslationsSpeciesSectionFr._(_root);
  @override
  String get incubation => 'Incubation';
  @override
  String get fledge => 'Envol';
  @override
  String get days_short => 'j';
  @override
  String lifecycle_total({required Object Days}) => '${Days}j au total';
  @override
  String get lifecycle_hint => 'Utilisé automatiquement pour les prévisions d\'éclosion et d\'envol.';
  @override
  String lifecycle_label_total({required Object Total}) => '${Total} JOURS AU TOTAL';
  @override
  String get chick_until_fledge => 'Poussin jusqu\'à l\'envol';
  @override
  String hatch_label({required Object Day}) => 'Éclosion · J${Day}';
  @override
  String fledge_label({required Object Day}) => 'Envol · J${Day}';
  @override
  String get latin_hint_example => 'par ex. Melopsittacus undulatus';
  @override
  String get latin_hint => 'Nom latin de l\'espèce pour une identification précise.';
  @override
  String get endangered => 'Espèce menacée';
  @override
  String get endangered_hint => 'Signale les espèces protégées ou considérées comme menacées.';
  @override
  String get endangered_not => 'Espèce non menacée';
  @override
  String get reportable => 'Soumise à déclaration';
  @override
  String get reportable_hint => 'La détention de cette espèce doit être déclarée aux autorités.';
  @override
  String get reportable_not => 'Sans obligation de déclaration';
  @override
  String get suggestions => 'Suggestions';
  @override
  String get incubation_found => 'Durée d\'incubation reprise';
  @override
  String get incubation_missing => 'Aucune durée d\'incubation trouvée – veuillez la saisir vous-même.';
  @override
  String get scientific_name => 'Nom scientifique';
  @override
  String get empty => 'Aucune espèce';
  @override
  String get birds_in_stock => 'Oiseaux en cheptel';
  @override
  String get no_birds => 'Aucun oiseau';
  @override
  late final _TranslationsSpeciesStatsFr stats = _TranslationsSpeciesStatsFr._(_root);
  @override
  String stock_summary({required num count, required Object Count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(
        count,
        one: '${Count} oiseau dans le cheptel',
        other: '${Count} oiseaux dans le cheptel',
      );
  @override
  String get already_added => 'Déjà ajoutée';
  @override
  String get duplicate_warning => 'Une espèce portant ce nom existe déjà.';
  @override
  String get image_remove => 'Supprimer l\'image';
}

// Path: contacts
class _TranslationsContactsFr extends TranslationsContactsDe {
  _TranslationsContactsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String title({required Object Count}) => 'Contacts (${Count})';
  @override
  String get edit => 'Modifier le contact';
  @override
  String get create => 'Créer un contact';
  @override
  String get deleted => 'Contact supprimé';
  @override
  String get saved => 'Contact enregistré';
  @override
  late final _TranslationsContactsFieldsFr fields = _TranslationsContactsFieldsFr._(_root);
  @override
  String get empty_list_information => 'Il n\'y a encore aucun contact. Vous pouvez ajouter des contacts ou les importer depuis un fichier CSV.';
  @override
  String get import_button_text => 'Importer des contacts';
  @override
  String get add_contact_button_text => 'Ajouter un contact';
  @override
  String get delete => 'Supprimer le contact ?';
  @override
  String get add => 'Ajouter le contact ?';
  @override
  String get select => 'Choisir un contact';
  @override
  late final _TranslationsContactsSectionsFr sections = _TranslationsContactsSectionsFr._(_root);
  @override
  late final _TranslationsContactsActionButtonFr action_button = _TranslationsContactsActionButtonFr._(_root);
  @override
  late final _TranslationsContactsOverviewFr overview = _TranslationsContactsOverviewFr._(_root);
  @override
  late final _TranslationsContactsCardFr card = _TranslationsContactsCardFr._(_root);
  @override
  late final _TranslationsContactsDetailFr detail = _TranslationsContactsDetailFr._(_root);
}

// Path: breeding_pairs
class _TranslationsBreedingPairsFr extends TranslationsBreedingPairsDe {
  _TranslationsBreedingPairsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Couple reproducteur';
  @override
  String get add => 'Ajouter un couple';
  @override
  String get edit => 'Modifier le couple';
  @override
  String get delete => 'Supprimer le couple ?';
  @override
  late final _TranslationsBreedingPairsStatusFr status = _TranslationsBreedingPairsStatusFr._(_root);
  @override
  String get start_date => 'Date de début';
  @override
  String get end_date => 'Date de fin';
  @override
  String get notes => 'Notes';
  @override
  late final _TranslationsBreedingPairsYearFilterFr year_filter = _TranslationsBreedingPairsYearFilterFr._(_root);
  @override
  late final _TranslationsBreedingPairsFilterFr filter = _TranslationsBreedingPairsFilterFr._(_root);
  @override
  String get pair_one => 'Couple';
  @override
  String get pair_other => 'Couples';
  @override
  String cages_count({required Object Count}) => '${Count} cages';
  @override
  String active_broods_one({required Object Count}) => '${Count} nichée active';
  @override
  String active_broods_other({required Object Count}) => '${Count} nichées actives';
  @override
  String broods_total_one({required Object Count}) => '${Count} nichée';
  @override
  String broods_total_other({required Object Count}) => '${Count} nichées';
  @override
  late final _TranslationsBreedingPairsBroodStatusFr brood_status = _TranslationsBreedingPairsBroodStatusFr._(_root);
  @override
  String get finished_tag => 'TERMINÉ';
  @override
  String get no_cage => 'Sans cage';
  @override
  String since({required Object Date}) => 'depuis le ${Date}';
  @override
  String until({required Object Date}) => 'jusqu\'au ${Date}';
  @override
  String empty_for_year({required Object Year}) => 'Aucun couple en ${Year}.';
  @override
  String get empty => 'Aucun couple reproducteur.';
  @override
  String get search_hint => 'Rechercher une bague, une cage …';
  @override
  late final _TranslationsBreedingPairsSortByFr sort_by = _TranslationsBreedingPairsSortByFr._(_root);
  @override
  late final _TranslationsBreedingPairsStatsFr stats = _TranslationsBreedingPairsStatsFr._(_root);
}

// Path: resources
class _TranslationsResourcesFr extends TranslationsResourcesDe {
  _TranslationsResourcesFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ressources';
  @override
  String usage_count({required num count, required Object N}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(
        count,
        zero: 'Utilisé par aucun oiseau',
        one: 'Utilisé par un oiseau',
        other: 'Utilisé par ${N} oiseaux',
      );
  @override
  String get no_search_results => 'Aucun résultat, appuyez sur « Ajouter » pour créer une nouvelle entrée.';
  @override
  late final _TranslationsResourcesSectionFr section = _TranslationsResourcesSectionFr._(_root);
  @override
  late final _TranslationsResourcesActionsFr actions = _TranslationsResourcesActionsFr._(_root);
  @override
  late final _TranslationsResourcesColorPickerFr color_picker = _TranslationsResourcesColorPickerFr._(_root);
  @override
  late final _TranslationsResourcesFieldFr field = _TranslationsResourcesFieldFr._(_root);
  @override
  late final _TranslationsResourcesDeleteFr delete = _TranslationsResourcesDeleteFr._(_root);
  @override
  late final _TranslationsResourcesSortFr sort = _TranslationsResourcesSortFr._(_root);
}

// Path: birds
class _TranslationsBirdsFr extends TranslationsBirdsDe {
  _TranslationsBirdsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Oiseaux';
  @override
  late final _TranslationsBirdsOverviewFr overview = _TranslationsBirdsOverviewFr._(_root);
  @override
  late final _TranslationsBirdsFilterFr filter = _TranslationsBirdsFilterFr._(_root);
}

// Path: pedigree
class _TranslationsPedigreeFr extends TranslationsPedigreeDe {
  _TranslationsPedigreeFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Pedigree';
  @override
  String get subtitle => 'Arbre généalogique';
  @override
  String get col_bird => 'Oiseau';
  @override
  String get col_parents => 'Parents';
  @override
  String get col_grandparents => 'Grands-parents';
  @override
  String get col_greatgrandparents => 'Arrière-grands-parents';
  @override
  String get col_ancestors => 'Ancêtres';
  @override
  String get section_ancestors => 'Ascendants';
  @override
  String get section_descendants => 'Descendants';
  @override
  String get no_descendants => 'Aucun descendant enregistré';
  @override
  String get unknown => 'Inconnu';
  @override
  String get assign_parent => 'Attribuer un parent';
  @override
  String get add_father => 'Ajouter le père';
  @override
  String get add_mother => 'Ajouter la mère';
  @override
  String get common_ancestor => 'Ancêtre commun (consanguinité)';
  @override
  String get sold => 'Vendu';
  @override
  String get not_own => 'Pas en possession';
  @override
  String get deceased => 'Décédé';
  @override
  String get share => 'Partager';
  @override
  String share_filename({required Object Ring}) => 'pedigree_${Ring}';
  @override
  String get depth => 'Profondeur';
  @override
  String get depth_all => 'Tout';
  @override
  String get inbreeding_explainer => 'Ces oiseaux sont apparentés à la fois par la lignée paternelle et par la lignée maternelle.';
  @override
  String get via_father => 'par le père';
  @override
  String get via_mother => 'par la mère';
  @override
  late final _TranslationsPedigreeStatsFr stats = _TranslationsPedigreeStatsFr._(_root);
  @override
  String get swipe_hint => 'Balayez pour une meilleure vue d\'ensemble';
}

// Path: inbreeding
class _TranslationsInbreedingFr extends TranslationsInbreedingDe {
  _TranslationsInbreedingFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get coefficient => 'Coefficient de consanguinité';
  @override
  String get coefficient_short => 'F';
  @override
  String get severity_none => 'Aucune consanguinité';
  @override
  String get severity_low => 'Faible';
  @override
  String get severity_elevated => 'Élevé';
  @override
  String get severity_high => 'Fort';
  @override
  String get common_ancestors_one => '1 ancêtre commun';
  @override
  String common_ancestors_other({required Object Count}) => '${Count} ancêtres communs';
  @override
  String get path_contribution => 'Contribution';
  @override
  String banner_label({required Object Percent}) => 'Coefficient de consanguinité : ${Percent}';
  @override
  String get pair_warning_title => 'Avertissement de consanguinité';
  @override
  String pair_warning_body({required Object Percent, required Object Severity}) =>
      'L\'accouplement de ces oiseaux donne un coefficient de consanguinité de ${Percent} (${Severity}). Créer quand même ?';
  @override
  String get proceed_anyway => 'Créer quand même';
}

// Path: bird
class _TranslationsBirdFr extends TranslationsBirdDe {
  _TranslationsBirdFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Oiseau';
  @override
  String get edit => 'Modifier l\'oiseau';
  @override
  String get deleted => 'Oiseau supprimé';
  @override
  String get saved => 'Oiseau enregistré';
  @override
  String get delete => 'Supprimer l\'oiseau ?';
  @override
  String get duplicate => 'Dupliquer l\'oiseau';
  @override
  String get add => 'Ajouter un oiseau';
  @override
  String get select_color_label => 'Choisir une couleur';
  @override
  String get select_species_label => 'Choisir une espèce';
  @override
  String get select_cage_label => 'Choisir une volière';
  @override
  String get select_owner_label => 'Choisir un propriétaire';
  @override
  String get select_sold_to_label => 'Choisir l\'acheteur';
  @override
  String get select_bought_from_label => 'Choisir le vendeur';
  @override
  String created_information({required Object DateTimeDate, required Object Time}) => 'Créé le ${DateTimeDate} à ${Time}';
  @override
  late final _TranslationsBirdTabsFr tabs = _TranslationsBirdTabsFr._(_root);
  @override
  late final _TranslationsBirdSummaryFr summary = _TranslationsBirdSummaryFr._(_root);
  @override
  late final _TranslationsBirdSectionsFr sections = _TranslationsBirdSectionsFr._(_root);
}

// Path: pair_detail
class _TranslationsPairDetailFr extends TranslationsPairDetailDe {
  _TranslationsPairDetailFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get father_label => '♂ PÈRE';
  @override
  String get mother_label => '♀ MÈRE';
  @override
  String get current_brood => 'Nichée en cours';
  @override
  String get history => 'Historique';
  @override
  String history_count_one({required Object Count}) => '${Count} nichée';
  @override
  String history_count_other({required Object Count}) => '${Count} nichées';
  @override
  String get brood_short => 'NICHÉE';
  @override
  String day({required Object Day}) => 'Jour ${Day}';
  @override
  String start_label({required Object Date}) => 'Début : ${Date}';
  @override
  String get no_current_brood => 'Aucune nichée active';
  @override
  late final _TranslationsPairDetailKpiFr kpi = _TranslationsPairDetailKpiFr._(_root);
  @override
  String get new_brood => 'Nouvelle nichée';
  @override
  String since({required Object Date}) => 'depuis le ${Date}';
}

// Path: brood
class _TranslationsBroodFr extends TranslationsBroodDe {
  _TranslationsBroodFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Ponte';
  @override
  String get overview => 'Aperçu des nichées';
  @override
  String get latest => 'Dernière nichée';
  @override
  String get add => 'Ajouter une ponte';
  @override
  String get delete => 'Supprimer la ponte ?';
  @override
  String get edit => 'Modifier la ponte';
  @override
  String get empty => 'Aucune ponte ajoutée pour le moment';
  @override
  String since({required Object Date}) => 'Depuis le ${Date}';
  @override
  String eggs_count({required num count, required Object Count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(
        count,
        zero: 'Aucun œuf',
        one: '1 œuf',
        other: '${Count} œufs',
      );
  @override
  late final _TranslationsBroodKpiFr kpi = _TranslationsBroodKpiFr._(_root);
  @override
  String hatched_count({required num count, required Object Count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(
        count,
        zero: 'Aucun éclos',
        one: '1 éclos',
        other: '${Count} éclos',
      );
  @override
  String fledged_count({required num count, required Object Count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(
        count,
        zero: 'Aucun envolé',
        one: '1 envolé',
        other: '${Count} envolés',
      );
  @override
  String get notes => 'Notes (facultatif)';
  @override
  String created_information({required Object DateTimeDate, required Object Time}) => 'Créé le ${DateTimeDate} à ${Time}';
}

// Path: egg
class _TranslationsEggFr extends TranslationsEggDe {
  _TranslationsEggFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Œuf';
  @override
  String get add => 'Ajouter un œuf';
  @override
  late final _TranslationsEggStatusFr status = _TranslationsEggStatusFr._(_root);
  @override
  late final _TranslationsEggActionFr action = _TranslationsEggActionFr._(_root);
  @override
  String get pick_laid_date => 'Choisir la date de ponte';
  @override
  String get pick_fledged_date => 'Choisir la date d\'envol';
  @override
  String get pick_hatched_date => 'Choisir la date d\'éclosion';
  @override
  String get pick_fertilized_date => 'Choisir la date de fécondation';
  @override
  String get pick_unfertilized_date => 'Choisir la date de non-fécondation';
  @override
  String get pick_died_date => 'Choisir la date de décès';
  @override
  String get in_stock => 'En cheptel';
  @override
  late final _TranslationsEggLifecycleFr lifecycle = _TranslationsEggLifecycleFr._(_root);
}

// Path: common
class _TranslationsCommonFr extends TranslationsCommonDe {
  _TranslationsCommonFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsCommonBottomSheetFr bottom_sheet = _TranslationsCommonBottomSheetFr._(_root);
  @override
  late final _TranslationsCommonSaleStatusFr sale_status = _TranslationsCommonSaleStatusFr._(_root);
  @override
  String get all_label => 'Tout';
  @override
  String get more_label => 'Plus';
  @override
  String get less_label => 'Moins';
  @override
  String get search => 'Rechercher';
  @override
  String get search_hint => 'Rechercher ...';
  @override
  String countbird({required num count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(
        count,
        zero: 'Aucun oiseau',
        one: '1 oiseau',
        other: '{count} oiseaux',
      );
  @override
  String get optional => 'Facultatif';
  @override
  String get apply => 'Appliquer';
  @override
  String get reset => 'Réinitialiser';
  @override
  String get add => 'Ajouter';
  @override
  String get close => 'Fermer';
  @override
  String get cancel => 'Annuler';
  @override
  String get ok => 'Ok';
  @override
  late final _TranslationsCommonSexFr sex = _TranslationsCommonSexFr._(_root);
  @override
  late final _TranslationsCommonSellFr sell = _TranslationsCommonSellFr._(_root);
  @override
  late final _TranslationsCommonBoughtFr bought = _TranslationsCommonBoughtFr._(_root);
  @override
  String eggs_short({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(
        n,
        one: 'Œuf',
        other: 'Œufs',
      );
  @override
  String get laid_short => 'pond.';
  @override
  String get fertilzed_short => 'féc.';
  @override
  String get hatched_short => 'écl.';
  @override
  String get fledged_short => 'env.';
  @override
  String get died_short => 'mort';
  @override
  late final _TranslationsCommonSortingFr sorting = _TranslationsCommonSortingFr._(_root);
  @override
  String get something_went_wrong => 'Oups, une erreur s\'est produite.';
  @override
  String get save => 'Enregistrer';
  @override
  String get general => 'Général';
  @override
  String get ringnumber => 'Numéro de bague';
  @override
  String get notes => 'Notes';
  @override
  String get clutches => 'Pontes';
  @override
  String get laid => 'Pondu';
  @override
  String get fertilzed => 'Fécondé';
  @override
  String get hatched => 'Éclos';
  @override
  String get fledged => 'Envolé';
  @override
  String get origin => 'Origine';
  @override
  String get species => 'Espèce';
  @override
  String get color => 'Couleur';
  @override
  String get cage => 'Volière';
  @override
  String get owner => 'Propriétaire';
  @override
  late final _TranslationsCommonSoldFr sold = _TranslationsCommonSoldFr._(_root);
  @override
  String get gender => 'Sexe';
  @override
  String get died_at => 'Date de décès';
  @override
  String get born_at => 'Date de naissance';
  @override
  String get father => 'Père';
  @override
  String get mother => 'Mère';
  @override
  String get partner => 'Partenaire';
  @override
  String get is_for_sale => 'À vendre';
  @override
  String get yes => 'Oui';
  @override
  String get no => 'Non';
  @override
  late final _TranslationsCommonUnitFr unit = _TranslationsCommonUnitFr._(_root);
  @override
  String get email => 'E-mail';
  @override
  String get password => 'Mot de passe';
  @override
  late final _TranslationsCommonHintFr hint = _TranslationsCommonHintFr._(_root);
  @override
  String get required => 'Ce champ doit être rempli';
}

// Path: auth
class _TranslationsAuthFr extends TranslationsAuthDe {
  _TranslationsAuthFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get sign_in => 'Se connecter';
  @override
  String get sign_up => 'S\'inscrire';
  @override
  String get confirm_password => 'Confirmer le mot de passe';
  @override
  String get passwords_do_not_match => 'Les mots de passe ne correspondent pas';
  @override
  String get create_account => 'Créer un compte';
  @override
  String get first_name => 'Prénom';
  @override
  String get last_name => 'Nom';
  @override
  String get sign_in_text =>
      'Connectez-vous pour continuer. Si vous n\'avez pas encore de compte, vous pouvez en créer un. Passez simplement à l\'onglet « Créer un compte ».';
  @override
  String get sign_up_text =>
      'Créez un compte pour continuer. Si vous avez déjà un compte, vous pouvez simplement vous connecter. Passez simplement à l\'onglet « Se connecter ».';
  @override
  late final _TranslationsAuthValidatorsFr validators = _TranslationsAuthValidatorsFr._(_root);
}

// Path: csv_import
class _TranslationsCsvImportFr extends TranslationsCsvImportDe {
  _TranslationsCsvImportFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Import CSV';
  @override
  String get select_type => 'Choisissez ce que vous souhaitez importer :';
  @override
  String get back => 'Retour';
  @override
  String get select_file => 'Choisir un fichier CSV';
  @override
  String get cancel => 'Annuler';
  @override
  String get new_import => 'Nouvel import';
  @override
  String get retry => 'Réessayer';
  @override
  String reading({required Object FileName}) => 'Lecture de « ${FileName} »...';
  @override
  String importing({required Object ItemName}) => 'Import de ${ItemName} en cours...';
  @override
  String progress({required Object Current, required Object Total}) => '${Current} sur ${Total}';
  @override
  String get completed => 'Import terminé';
  @override
  late final _TranslationsCsvImportBirdsFr birds = _TranslationsCsvImportBirdsFr._(_root);
  @override
  late final _TranslationsCsvImportContactsFr contacts = _TranslationsCsvImportContactsFr._(_root);
  @override
  late final _TranslationsCsvImportColumnsFr columns = _TranslationsCsvImportColumnsFr._(_root);
  @override
  late final _TranslationsCsvImportPreviewFr preview = _TranslationsCsvImportPreviewFr._(_root);
  @override
  late final _TranslationsCsvImportTableFr table = _TranslationsCsvImportTableFr._(_root);
  @override
  late final _TranslationsCsvImportStatusFr status = _TranslationsCsvImportStatusFr._(_root);
  @override
  late final _TranslationsCsvImportSummaryFr summary = _TranslationsCsvImportSummaryFr._(_root);
  @override
  late final _TranslationsCsvImportErrorsFr errors = _TranslationsCsvImportErrorsFr._(_root);
}

// Path: menu
class _TranslationsMenuFr extends TranslationsMenuDe {
  _TranslationsMenuFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsMenuSectionsFr sections = _TranslationsMenuSectionsFr._(_root);
  @override
  late final _TranslationsMenuBirdsFr birds = _TranslationsMenuBirdsFr._(_root);
  @override
  late final _TranslationsMenuContactsFr contacts = _TranslationsMenuContactsFr._(_root);
  @override
  late final _TranslationsMenuBreedingsFr breedings = _TranslationsMenuBreedingsFr._(_root);
  @override
  late final _TranslationsMenuResourcesFr resources = _TranslationsMenuResourcesFr._(_root);
  @override
  late final _TranslationsMenuFinancesFr finances = _TranslationsMenuFinancesFr._(_root);
  @override
  late final _TranslationsMenuCsvImportFr csv_import = _TranslationsMenuCsvImportFr._(_root);
  @override
  late final _TranslationsMenuAccountFr account = _TranslationsMenuAccountFr._(_root);
  @override
  late final _TranslationsMenuSpeciesFr species = _TranslationsMenuSpeciesFr._(_root);
  @override
  late final _TranslationsMenuCagesFr cages = _TranslationsMenuCagesFr._(_root);
  @override
  late final _TranslationsMenuColorsFr colors = _TranslationsMenuColorsFr._(_root);
  @override
  late final _TranslationsMenuFinanceCategoriesFr finance_categories = _TranslationsMenuFinanceCategoriesFr._(_root);
  @override
  String get add_bird => 'Ajouter un oiseau';
}

// Path: error
class _TranslationsErrorFr extends TranslationsErrorDe {
  _TranslationsErrorFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get message => 'Désolé, une erreur s\'est produite';
}

// Path: dialog
class _TranslationsDialogFr extends TranslationsDialogDe {
  _TranslationsDialogFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsDialogDiscardChangesFr discard_changes = _TranslationsDialogDiscardChangesFr._(_root);
  @override
  late final _TranslationsDialogDeleteEntryFr delete_entry = _TranslationsDialogDeleteEntryFr._(_root);
}

// Path: pop_up_menu
class _TranslationsPopUpMenuFr extends TranslationsPopUpMenuDe {
  _TranslationsPopUpMenuFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get open => 'Ouvrir';
  @override
  String get edit => 'Modifier';
  @override
  String get show => 'Afficher';
  @override
  String get pedigree => 'Pedigree';
  @override
  String get documents => 'Documents';
  @override
  String get set_ringnumber => 'Définir le numéro de bague';
  @override
  String get set_color => 'Définir la couleur';
  @override
  String get add_to_stock => 'Intégrer au cheptel';
  @override
  String get duplicate => 'Dupliquer';
  @override
  String get delete => 'Supprimer';
}

// Path: export
class _TranslationsExportFr extends TranslationsExportDe {
  _TranslationsExportFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Exporter';
  @override
  String get action => 'Exporter';
  @override
  String get scope_hint => 'C\'est exactement la liste actuellement affichée qui est exportée.';
  @override
  String get file_name_label => 'Nom du fichier';
  @override
  String get empty => 'Il n\'y a rien à exporter.';
  @override
  late final _TranslationsExportEventsFr events = _TranslationsExportEventsFr._(_root);
  @override
  String get row_count_one => '1 entrée';
  @override
  String row_count_other({required Object Count}) => '${Count} entrées';
  @override
  late final _TranslationsExportFormatFr format = _TranslationsExportFormatFr._(_root);
  @override
  late final _TranslationsExportPresetFr preset = _TranslationsExportPresetFr._(_root);
  @override
  late final _TranslationsExportPdfFr pdf = _TranslationsExportPdfFr._(_root);
  @override
  late final _TranslationsExportHeaderFr header = _TranslationsExportHeaderFr._(_root);
  @override
  String get profile_label => 'En-tête';
  @override
  late final _TranslationsExportSummaryFr summary = _TranslationsExportSummaryFr._(_root);
  @override
  late final _TranslationsExportListsFr lists = _TranslationsExportListsFr._(_root);
  @override
  late final _TranslationsExportFileNamesFr file_names = _TranslationsExportFileNamesFr._(_root);
  @override
  late final _TranslationsExportPresetsFr presets = _TranslationsExportPresetsFr._(_root);
  @override
  late final _TranslationsExportColumnsFr columns = _TranslationsExportColumnsFr._(_root);
}

// Path: documents
class _TranslationsDocumentsFr extends TranslationsDocumentsDe {
  _TranslationsDocumentsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Créer un document';
  @override
  String get action => 'Créer';
  @override
  String get type_label => 'Document';
  @override
  late final _TranslationsDocumentsTypesFr types = _TranslationsDocumentsTypesFr._(_root);
  @override
  late final _TranslationsDocumentsProfileFr profile = _TranslationsDocumentsProfileFr._(_root);
  @override
  late final _TranslationsDocumentsPedigreeFr pedigree = _TranslationsDocumentsPedigreeFr._(_root);
  @override
  late final _TranslationsDocumentsReceiptFr receipt = _TranslationsDocumentsReceiptFr._(_root);
}

// Path: snackbars
class _TranslationsSnackbarsFr extends TranslationsSnackbarsDe {
  _TranslationsSnackbarsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get sign_in_failed => 'Échec de la connexion, veuillez vérifier vos identifiants et votre connexion Internet.';
  @override
  String get sign_up_failed => 'Échec de l\'inscription, veuillez vérifier vos saisies et votre connexion Internet.';
  @override
  String get sign_up_success => 'Inscription réussie, vous allez être connecté automatiquement.';
}

// Path: finances.categories
class _TranslationsFinancesCategoriesFr extends TranslationsFinancesCategoriesDe {
  _TranslationsFinancesCategoriesFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Catégories';
  @override
  String get category => 'Catégorie';
  @override
  String get add => 'Ajouter une catégorie';
  @override
  String get edit => 'Modifier la catégorie';
  @override
  String get select => 'Choisir une catégorie';
  @override
  String get delete => 'Supprimer la catégorie ?';
  @override
  String get name => 'Nom de la catégorie';
  @override
  String get color => 'Couleur de la catégorie';
  @override
  String get description => 'Description';
  @override
  String get list_title => 'Catégories';
  @override
  String get designation => 'Désignation';
  @override
  String get bookings => 'Opérations';
  @override
  late final _TranslationsFinancesCategoriesFiltersFr filters = _TranslationsFinancesCategoriesFiltersFr._(_root);
  @override
  late final _TranslationsFinancesCategoriesGroupsFr groups = _TranslationsFinancesCategoriesGroupsFr._(_root);
  @override
  late final _TranslationsFinancesCategoriesKindSingularFr kind_singular = _TranslationsFinancesCategoriesKindSingularFr._(_root);
  @override
  late final _TranslationsFinancesCategoriesPillFr pill = _TranslationsFinancesCategoriesPillFr._(_root);
  @override
  String get empty => 'Aucune catégorie';
  @override
  String type_lock_hint({required Object Usage}) => 'Le type ne peut plus être modifié après la création — ${Usage} opérations liées.';
  @override
  String get type_lock_default => 'Détermine le signe de calcul des opérations.';
  @override
  String get detail_title => 'Catégorie financière';
  @override
  late final _TranslationsFinancesCategoriesDetailFr detail = _TranslationsFinancesCategoriesDetailFr._(_root);
  @override
  late final _TranslationsFinancesCategoriesMonthsShortFr months_short = _TranslationsFinancesCategoriesMonthsShortFr._(_root);
}

// Path: finances.add
class _TranslationsFinancesAddFr extends TranslationsFinancesAddDe {
  _TranslationsFinancesAddFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Ajouter une écriture';
  @override
  String get title => 'Objet';
  @override
  String get date => 'Date';
  @override
  String get category => 'Choisir une catégorie';
  @override
  String get amount => 'Saisir un montant';
  @override
  String get amount_invalid => 'Veuillez saisir un montant valide';
  @override
  String get notes => 'Description';
  @override
  String get bird => 'Oiseau concerné';
}

// Path: finances.kind
class _TranslationsFinancesKindFr extends TranslationsFinancesKindDe {
  _TranslationsFinancesKindFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Type';
  @override
  String get income => 'Recettes';
  @override
  String get expense => 'Dépenses';
}

// Path: finances.summary
class _TranslationsFinancesSummaryFr extends TranslationsFinancesSummaryDe {
  _TranslationsFinancesSummaryFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get net => 'Solde';
  @override
  String get net_label => 'NET';
  @override
  String get today => 'AUJOURD\'HUI';
  @override
  String get income_label => 'RECETTES';
  @override
  String get expense_label => 'DÉPENSES';
}

// Path: finances.view
class _TranslationsFinancesViewFr extends TranslationsFinancesViewDe {
  _TranslationsFinancesViewFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Toutes';
  @override
  String get today => 'Aujourd\'hui';
  @override
  String get yesterday => 'Hier';
  @override
  String get search_hint => 'Rechercher une opération …';
  @override
  String get empty => 'Aucune opération sur la période';
  @override
  String get categories_filter_title => 'Filtrer par catégorie';
  @override
  String get all_categories => 'Toutes les catégories';
  @override
  String get filter_button => 'Filtre';
  @override
  String get filter_sheet_title => 'Filtrer les catégories';
  @override
  String get filter_clear_all => 'Tout désélectionner';
  @override
  String get filter_apply => 'Appliquer';
  @override
  String get filter_search_hint => 'Rechercher une catégorie …';
}

// Path: finances.scope
class _TranslationsFinancesScopeFr extends TranslationsFinancesScopeDe {
  _TranslationsFinancesScopeFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get month => 'Mois';
  @override
  String get year => 'Année';
  @override
  String get all => 'Tout';
  @override
  String get custom => 'Période';
  @override
  String get current_year => 'CETTE ANNÉE';
  @override
  String get from_short => 'Du';
  @override
  String get to_short => 'Au';
  @override
  String get pick_date => 'Choisir une date';
}

// Path: finances.filter
class _TranslationsFinancesFilterFr extends TranslationsFinancesFilterDe {
  _TranslationsFinancesFilterFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get bird => 'Oiseau';
  @override
  String get date_range => 'Période';
  @override
  String get from => 'Du';
  @override
  String get to => 'Au';
  @override
  String get all_years => 'Tout';
}

// Path: finances.sorting
class _TranslationsFinancesSortingFr extends TranslationsFinancesSortingDe {
  _TranslationsFinancesSortingFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get date_desc => 'Date (récent → ancien)';
  @override
  String get date_asc => 'Date (ancien → récent)';
  @override
  String get amount_desc => 'Montant (élevé → faible)';
  @override
  String get amount_asc => 'Montant (faible → élevé)';
}

// Path: account.switch_to_local_dialog
class _TranslationsAccountSwitchToLocalDialogFr extends TranslationsAccountSwitchToLocalDialogDe {
  _TranslationsAccountSwitchToLocalDialogFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Passer en mode local';
  @override
  String get content =>
      'Toutes vos données seront copiées du serveur vers la base de données locale. L\'application redémarrera ensuite en mode local.\n\nVoulez-vous continuer ?';
  @override
  String get confirm => 'Basculer';
}

// Path: account.local_mode
class _TranslationsAccountLocalModeFr extends TranslationsAccountLocalModeDe {
  _TranslationsAccountLocalModeFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Mode local';
  @override
  String get description => 'Toutes les données sont enregistrées localement sur cet appareil.';
}

// Path: account.appearance
class _TranslationsAccountAppearanceFr extends TranslationsAccountAppearanceDe {
  _TranslationsAccountAppearanceFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Apparence';
  @override
  String get system => 'Système';
  @override
  String get light => 'Clair';
  @override
  String get dark => 'Sombre';
}

// Path: account.language
class _TranslationsAccountLanguageFr extends TranslationsAccountLanguageDe {
  _TranslationsAccountLanguageFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Langue';
  @override
  String get system => 'Langue du système';
  @override
  String get sheet_title => 'Choisir la langue';
}

// Path: account.currency
class _TranslationsAccountCurrencyFr extends TranslationsAccountCurrencyDe {
  _TranslationsAccountCurrencyFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Devise';
  @override
  String get sheet_title => 'Choisir la devise';
  @override
  String get hint => 'Les montants sont seulement réétiquetés, pas convertis.';
}

// Path: account.profile
class _TranslationsAccountProfileFr extends TranslationsAccountProfileDe {
  _TranslationsAccountProfileFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String breeder_number({required Object Value}) => 'Numéro d\'éleveur ${Value}';
  @override
  String get no_contact => 'Aucun contact de profil enregistré';
  @override
  String get edit => 'Modifier le profil';
}

// Path: account.user
class _TranslationsAccountUserFr extends TranslationsAccountUserDe {
  _TranslationsAccountUserFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String email({required Object Value}) => 'E-mail : ${Value}';
  @override
  String first_name({required Object Value}) => 'Prénom : ${Value}';
  @override
  String last_name({required Object Value}) => 'Nom : ${Value}';
}

// Path: account.events
class _TranslationsAccountEventsFr extends TranslationsAccountEventsDe {
  _TranslationsAccountEventsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String switch_failed({required Object Error}) => 'Basculement échoué : ${Error}';
  @override
  String switched_to_local({required num count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(
        count,
        one: '1 entrée transférée. Mode local actif.',
        other: '{count} entrées transférées. Mode local actif.',
      );
}

// Path: backup.external
class _TranslationsBackupExternalFr extends TranslationsBackupExternalDe {
  _TranslationsBackupExternalFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get never => 'Jamais sauvegardé en externe';
  @override
  String get today => 'Dernière sauvegarde externe : aujourd\'hui';
  @override
  String days_ago({required num count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(
        count,
        one: 'Dernière sauvegarde externe : il y a 1 jour',
        other: 'Dernière sauvegarde externe : il y a {count} jours',
      );
}

// Path: backup.actions
class _TranslationsBackupActionsFr extends TranslationsBackupActionsDe {
  _TranslationsBackupActionsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get share_latest => 'Partager la dernière sauvegarde';
  @override
  String get create_now => 'Créer une sauvegarde';
  @override
  String get create_and_save => 'Créer et enregistrer une sauvegarde';
  @override
  String get restore => 'Restaurer une sauvegarde';
  @override
  String get manage => 'Gérer toutes les sauvegardes…';
  @override
  String get kNew => 'Nouveau';
}

// Path: backup.restore_sheet
class _TranslationsBackupRestoreSheetFr extends TranslationsBackupRestoreSheetDe {
  _TranslationsBackupRestoreSheetFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Choisir une sauvegarde';
  @override
  String get available => 'Sauvegardes disponibles';
  @override
  String get kind_cloud => 'CLOUD';
  @override
  String get kind_manual => 'MANUEL';
  @override
  String get pick_file_title => 'Choisir un fichier sur l\'appareil';
  @override
  String get pick_file_sub => 'Sélectionner manuellement une sauvegarde .zip';
  @override
  String get empty => 'Aucune sauvegarde trouvée';
  @override
  String get choose_folder_first => 'Choisissez d\'abord un dossier cloud';
  @override
  String get confirm_title => 'Restaurer la sauvegarde ?';
  @override
  String warning({required Object Name}) =>
      'Vos données actuelles sur cet appareil seront remplacées par cet état. Les modifications postérieures à « ${Name} » seront perdues.';
  @override
  String get confirm_button => 'Oui, remplacer et restaurer';
  @override
  String get restoring => 'Restauration en cours …';
  @override
  String get back => 'Retour';
}

// Path: backup.menu
class _TranslationsBackupMenuFr extends TranslationsBackupMenuDe {
  _TranslationsBackupMenuFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get share => 'Partager';
  @override
  String get restore => 'Restaurer';
  @override
  String get delete => 'Supprimer';
}

// Path: backup.delete_dialog
class _TranslationsBackupDeleteDialogFr extends TranslationsBackupDeleteDialogDe {
  _TranslationsBackupDeleteDialogFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Supprimer la sauvegarde ?';
  @override
  String get confirm => 'Supprimer';
}

// Path: backup.restore_dialog
class _TranslationsBackupRestoreDialogFr extends TranslationsBackupRestoreDialogDe {
  _TranslationsBackupRestoreDialogFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Restaurer la sauvegarde';
  @override
  String get content_picked => 'Les données locales actuelles seront écrasées par la sauvegarde sélectionnée. Continuer ?';
  @override
  String content_named({required Object Name}) => 'Les données locales actuelles seront écrasées par la sauvegarde\n"${Name}".\n\nContinuer ?';
  @override
  String get confirm => 'Restaurer';
}

// Path: backup.reminder
class _TranslationsBackupReminderFr extends TranslationsBackupReminderDe {
  _TranslationsBackupReminderFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Mettre la sauvegarde à l\'abri';
  @override
  String get never => 'Vous n\'avez encore enregistré aucune sauvegarde externe.';
  @override
  String age({required num count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(
        count,
        one: 'Votre dernière sauvegarde externe date d\'1 jour.',
        other: 'Votre dernière sauvegarde externe date de {count} jours.',
      );
  @override
  String get body =>
      'Enregistrez-la dès maintenant en lieu sûr (iCloud, Drive, e-mail) afin de ne pas perdre vos données en cas de perte de l\'appareil.';
  @override
  String get snooze => 'Me rappeler plus tard';
  @override
  String get already_saved => 'Déjà enregistrée';
  @override
  String get share_now => 'Partager maintenant';
  @override
  String get cloud_hint =>
      'Tu peux aussi activer la sauvegarde automatique dans le cloud : chaque sauvegarde est alors envoyée dans ton cloud sans rien faire.';
  @override
  String get setup_cloud => 'Configurer le cloud';
}

// Path: backup.events
class _TranslationsBackupEventsFr extends TranslationsBackupEventsDe {
  _TranslationsBackupEventsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get created => 'Sauvegarde créée';
  @override
  String create_failed({required Object Error}) => 'Échec de la sauvegarde : ${Error}';
  @override
  String share_failed({required Object Error}) => 'Échec du partage : ${Error}';
  @override
  String delete_failed({required Object Error}) => 'Échec de la suppression : ${Error}';
  @override
  String restore_failed({required Object Error}) => 'Échec de la restauration : ${Error}';
}

// Path: backup.cloud
class _TranslationsBackupCloudFr extends TranslationsBackupCloudDe {
  _TranslationsBackupCloudFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get section_title => 'Sauvegarde cloud';
  @override
  String get enable => 'Sauvegarder automatiquement dans le cloud';
  @override
  String get choose_location => 'Choisir un dossier cloud…';
  @override
  String get location_none => 'Aucun dossier cloud choisi';
  @override
  String location_set({required Object Name}) => 'Destination : ${Name}';
  @override
  String get sync_now => 'Synchroniser maintenant';
  @override
  String get auto_title => 'Sauvegarde cloud automatique';
  @override
  String get auto_on => 'Active · sauvegarde vos données automatiquement';
  @override
  String get auto_off => 'Désactivée';
  @override
  String get folder_label => 'Dossier cloud';
  @override
  String get change => 'Modifier';
  @override
  late final _TranslationsBackupCloudChooseFolderDialogFr choose_folder_dialog = _TranslationsBackupCloudChooseFolderDialogFr._(_root);
  @override
  late final _TranslationsBackupCloudSyncAfterChangeDialogFr sync_after_change_dialog = _TranslationsBackupCloudSyncAfterChangeDialogFr._(_root);
  @override
  String get last_sync_label => 'Dernière synchronisation';
  @override
  String get syncing => 'Synchronisation en cours …';
  @override
  String get syncing_hint => 'Vos photos et vos données sont envoyées vers le cloud.';
  @override
  String get settings => 'Paramètres de synchronisation';
  @override
  late final _TranslationsBackupCloudIntervalFr interval = _TranslationsBackupCloudIntervalFr._(_root);
  @override
  late final _TranslationsBackupCloudStatusFr status = _TranslationsBackupCloudStatusFr._(_root);
  @override
  late final _TranslationsBackupCloudEventsFr events = _TranslationsBackupCloudEventsFr._(_root);
}

// Path: colors.stats
class _TranslationsColorsStatsFr extends TranslationsColorsStatsDe {
  _TranslationsColorsStatsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get birds => 'Oiseaux';
  @override
  String get male_roosters => 'Mâles';
  @override
  String get female_hens => 'Femelles';
}

// Path: cages.section
class _TranslationsCagesSectionFr extends TranslationsCagesSectionDe {
  _TranslationsCagesSectionFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get basics => 'Données de base';
  @override
  String get capacity => 'Capacité et occupation';
}

// Path: cages.field
class _TranslationsCagesFieldFr extends TranslationsCagesFieldDe {
  _TranslationsCagesFieldFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get type => 'Type';
  @override
  String get location => 'Emplacement';
  @override
  String get max_capacity => 'Places maximales';
}

// Path: cages.units
class _TranslationsCagesUnitsFr extends TranslationsCagesUnitsDe {
  _TranslationsCagesUnitsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get birds => 'oiseaux';
}

// Path: cages.filters
class _TranslationsCagesFiltersFr extends TranslationsCagesFiltersDe {
  _TranslationsCagesFiltersFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Toutes';
  @override
  String get aviaries => 'Volières';
  @override
  String get breeding_boxes => 'Cages d\'élevage';
  @override
  String get quarantine => 'Quarantaine';
  @override
  String get empty => 'Vides';
}

// Path: cages.types
class _TranslationsCagesTypesFr extends TranslationsCagesTypesDe {
  _TranslationsCagesTypesFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get aviary => 'Volière';
  @override
  String get breeding_box => 'Cage d\'élevage';
  @override
  String get quarantine => 'Quarantaine';
}

// Path: species.section
class _TranslationsSpeciesSectionFr extends TranslationsSpeciesSectionDe {
  _TranslationsSpeciesSectionFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get identity => 'Identité';
  @override
  String get lifecycle => 'Cycle de vie';
  @override
  String get icon => 'Icône';
  @override
  String get notes => 'Notes';
}

// Path: species.stats
class _TranslationsSpeciesStatsFr extends TranslationsSpeciesStatsDe {
  _TranslationsSpeciesStatsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get stock => 'En cheptel';
  @override
  String get male_roosters => 'Mâles';
  @override
  String get female_hens => 'Femelles';
}

// Path: contacts.fields
class _TranslationsContactsFieldsFr extends TranslationsContactsFieldsDe {
  _TranslationsContactsFieldsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get first_name => 'Prénom';
  @override
  String get last_name => 'Nom';
  @override
  late final _TranslationsContactsFieldsTitleFr title = _TranslationsContactsFieldsTitleFr._(_root);
  @override
  late final _TranslationsContactsFieldsAppUserFr app_user = _TranslationsContactsFieldsAppUserFr._(_root);
  @override
  String get email => 'E-mail';
  @override
  String get number => 'Numéro d\'éleveur';
  @override
  String get phone => 'Numéro de téléphone';
  @override
  String get cell_phone_number => 'Numéro de mobile';
  @override
  String get address => 'Adresse';
  @override
  String get city => 'Ville';
  @override
  String get country => 'Pays';
  @override
  String get postal => 'Code postal';
  @override
  String get website => 'Site web';
}

// Path: contacts.sections
class _TranslationsContactsSectionsFr extends TranslationsContactsSectionsDe {
  _TranslationsContactsSectionsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get personal => 'Informations personnelles';
  @override
  String get app_user => 'Utilisateur de l\'application';
  @override
  String get breeder => 'Informations sur l\'éleveur';
  @override
  String get contact => 'Coordonnées';
  @override
  String get address => 'Adresse';
  @override
  String get meta => 'Métadonnées';
}

// Path: contacts.action_button
class _TranslationsContactsActionButtonFr extends TranslationsContactsActionButtonDe {
  _TranslationsContactsActionButtonFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get open_website_tooltipp => 'Ouvrir le site web';
  @override
  String get send_email_tooltipp => 'Écrire un e-mail';
  @override
  String get call_tooltipp => 'Appeler';
}

// Path: contacts.overview
class _TranslationsContactsOverviewFr extends TranslationsContactsOverviewDe {
  _TranslationsContactsOverviewFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get total_label => 'Contacts';
  @override
  String bought_chip({required Object Count}) => '${Count} achetés';
  @override
  String sold_chip({required Object Count}) => '${Count} vendus';
  @override
  String get all_contacts => 'Tous les contacts';
  @override
  String get search_hint => 'Rechercher un nom, une ville …';
  @override
  String activity_sold({required Object Ring}) => 'Vendu ${Ring}';
  @override
  String activity_bought({required Object Ring}) => 'Acheté ${Ring}';
}

// Path: contacts.card
class _TranslationsContactsCardFr extends TranslationsContactsCardDe {
  _TranslationsContactsCardFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get call => 'Appeler';
  @override
  String get email => 'E-mail';
  @override
  String get details => 'Détails';
}

// Path: contacts.detail
class _TranslationsContactsDetailFr extends TranslationsContactsDetailDe {
  _TranslationsContactsDetailFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Contact';
  @override
  String get bought => 'Acheté';
  @override
  String get sold => 'Vendu';
  @override
  String get balance => 'Solde';
  @override
  String get contact_data => 'Coordonnées';
  @override
  String get no_contact_data => 'Aucune coordonnée enregistrée';
  @override
  String get linked_birds => 'Oiseaux liés';
  @override
  String get role_sold => 'VENDU';
  @override
  String get role_bought => 'ACHETÉ';
  @override
  String get location => 'Emplacement';
  @override
  String get edit => 'Modifier';
}

// Path: breeding_pairs.status
class _TranslationsBreedingPairsStatusFr extends TranslationsBreedingPairsStatusDe {
  _TranslationsBreedingPairsStatusFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Statut';
  @override
  String get active => 'Actif';
  @override
  String get paused => 'En pause';
  @override
  String get finished => 'Terminé';
}

// Path: breeding_pairs.year_filter
class _TranslationsBreedingPairsYearFilterFr extends TranslationsBreedingPairsYearFilterDe {
  _TranslationsBreedingPairsYearFilterFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'ANNÉE';
  @override
  String get all => 'Toutes';
}

// Path: breeding_pairs.filter
class _TranslationsBreedingPairsFilterFr extends TranslationsBreedingPairsFilterDe {
  _TranslationsBreedingPairsFilterFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String show_results({required Object Count}) => 'Afficher ${Count} couples';
}

// Path: breeding_pairs.brood_status
class _TranslationsBreedingPairsBroodStatusFr extends TranslationsBreedingPairsBroodStatusDe {
  _TranslationsBreedingPairsBroodStatusFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get active => 'active';
  @override
  String get inactive => 'en pause';
  @override
  String get completed => 'terminée';
}

// Path: breeding_pairs.sort_by
class _TranslationsBreedingPairsSortByFr extends TranslationsBreedingPairsSortByDe {
  _TranslationsBreedingPairsSortByFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get cage => 'Volière';
  @override
  String get updated => 'Dernière modification';
  @override
  String get created => 'Créé le';
}

// Path: breeding_pairs.stats
class _TranslationsBreedingPairsStatsFr extends TranslationsBreedingPairsStatsDe {
  _TranslationsBreedingPairsStatsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsBreedingPairsStatsAbbrFr abbr = _TranslationsBreedingPairsStatsAbbrFr._(_root);
  @override
  late final _TranslationsBreedingPairsStatsLabelFr label = _TranslationsBreedingPairsStatsLabelFr._(_root);
  @override
  late final _TranslationsBreedingPairsStatsLegendFr legend = _TranslationsBreedingPairsStatsLegendFr._(_root);
}

// Path: resources.section
class _TranslationsResourcesSectionFr extends TranslationsResourcesSectionDe {
  _TranslationsResourcesSectionFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get identity => 'Identité';
  @override
  String get basics => 'Données de base';
  @override
  String get lifecycle => 'Cycle de vie';
  @override
  String get icon => 'Icône';
  @override
  String get notes => 'Notes';
  @override
  String get color => 'Couleur';
}

// Path: resources.actions
class _TranslationsResourcesActionsFr extends TranslationsResourcesActionsDe {
  _TranslationsResourcesActionsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get edit => 'Modifier';
}

// Path: resources.color_picker
class _TranslationsResourcesColorPickerFr extends TranslationsResourcesColorPickerDe {
  _TranslationsResourcesColorPickerFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Choisir une couleur';
}

// Path: resources.field
class _TranslationsResourcesFieldFr extends TranslationsResourcesFieldDe {
  _TranslationsResourcesFieldFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Nom';
  @override
  String get required => 'Champ obligatoire';
}

// Path: resources.delete
class _TranslationsResourcesDeleteFr extends TranslationsResourcesDeleteDe {
  _TranslationsResourcesDeleteFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String with_usage({required Object Usage}) => '${Usage} liens seront rompus. Continuer malgré tout ?';
}

// Path: resources.sort
class _TranslationsResourcesSortFr extends TranslationsResourcesSortDe {
  _TranslationsResourcesSortFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Trier';
  @override
  late final _TranslationsResourcesSortByFr by = _TranslationsResourcesSortByFr._(_root);
  @override
  String get asc => 'Croissant';
  @override
  String get desc => 'Décroissant';
}

// Path: birds.overview
class _TranslationsBirdsOverviewFr extends TranslationsBirdsOverviewDe {
  _TranslationsBirdsOverviewFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String subtitle({required Object Birds, required Object Cages}) => '${Birds} oiseaux · ${Cages} cages';
  @override
  String for_sale({required Object Count}) => '${Count} à vendre';
  @override
  String get group_by_cage => 'Grouper : cage';
  @override
  String get no_cage => 'Sans cage';
  @override
  String get birds_label => 'Oiseaux';
  @override
  String get sale_badge => 'À vendre';
  @override
  String get empty => 'Aucun oiseau trouvé';
  @override
  String get view_grouped => 'Grouper par volière';
  @override
  String get view_list => 'Afficher en liste';
}

// Path: birds.filter
class _TranslationsBirdsFilterFr extends TranslationsBirdsFilterDe {
  _TranslationsBirdsFilterFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String show_results({required Object Count}) => 'Afficher ${Count} oiseaux';
  @override
  String get sort_title => 'Trier';
  @override
  String get more_title => 'Plus';
  @override
  String get show_deceased => 'Afficher les décédés';
  @override
  String get endangered_only => 'Espèces menacées uniquement';
  @override
  String get reportable_only => 'Espèces à déclarer uniquement';
}

// Path: pedigree.stats
class _TranslationsPedigreeStatsFr extends TranslationsPedigreeStatsDe {
  _TranslationsPedigreeStatsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get generations => 'Générations';
  @override
  String get ancestors => 'Ascendants';
  @override
  String get descendants => 'Descendants';
  @override
  String get inbreeding => 'Consanguinité';
  @override
  String get no_inbreeding => 'Aucune consanguinité';
}

// Path: bird.tabs
class _TranslationsBirdTabsFr extends TranslationsBirdTabsDe {
  _TranslationsBirdTabsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get general => 'Général';
  @override
  String get state_and_life => 'État';
  @override
  String get breeding => 'Élevage';
  @override
  String get purchase_and_sale => 'Finances';
}

// Path: bird.summary
class _TranslationsBirdSummaryFr extends TranslationsBirdSummaryDe {
  _TranslationsBirdSummaryFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get sex => 'Sexe';
  @override
  String get age => 'Âge';
  @override
  String get cage => 'Cage';
  @override
  String get offspring => 'Descendants';
  @override
  String get unknown => '—';
}

// Path: bird.sections
class _TranslationsBirdSectionsFr extends TranslationsBirdSectionsDe {
  _TranslationsBirdSectionsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsBirdSectionsIdentificationFr identification = _TranslationsBirdSectionsIdentificationFr._(_root);
  @override
  late final _TranslationsBirdSectionsKeepingFr keeping = _TranslationsBirdSectionsKeepingFr._(_root);
  @override
  late final _TranslationsBirdSectionsStatusFr status = _TranslationsBirdSectionsStatusFr._(_root);
  @override
  late final _TranslationsBirdSectionsSaleFr sale = _TranslationsBirdSectionsSaleFr._(_root);
  @override
  late final _TranslationsBirdSectionsPurchaseFr purchase = _TranslationsBirdSectionsPurchaseFr._(_root);
  @override
  late final _TranslationsBirdSectionsHealthFr health = _TranslationsBirdSectionsHealthFr._(_root);
  @override
  late final _TranslationsBirdSectionsLifeFr life = _TranslationsBirdSectionsLifeFr._(_root);
  @override
  late final _TranslationsBirdSectionsNotesFr notes = _TranslationsBirdSectionsNotesFr._(_root);
  @override
  late final _TranslationsBirdSectionsPhotosFr photos = _TranslationsBirdSectionsPhotosFr._(_root);
  @override
  late final _TranslationsBirdSectionsParentFr parent = _TranslationsBirdSectionsParentFr._(_root);
  @override
  late final _TranslationsBirdSectionsBreederFr breeder = _TranslationsBirdSectionsBreederFr._(_root);
  @override
  late final _TranslationsBirdSectionsChildrenFr children = _TranslationsBirdSectionsChildrenFr._(_root);
}

// Path: pair_detail.kpi
class _TranslationsPairDetailKpiFr extends TranslationsPairDetailKpiDe {
  _TranslationsPairDetailKpiFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get broods => 'Nichées';
  @override
  String get eggs => 'Œufs';
  @override
  String get hatched => 'Éclos';
  @override
  String get fledged => 'Envolés';
}

// Path: brood.kpi
class _TranslationsBroodKpiFr extends TranslationsBroodKpiDe {
  _TranslationsBroodKpiFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get eggs => 'Œufs';
  @override
  String get hatched => 'Éclos';
  @override
  String get fledged => 'Envolés';
}

// Path: egg.status
class _TranslationsEggStatusFr extends TranslationsEggStatusDe {
  _TranslationsEggStatusFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get laid => 'Pondu';
  @override
  String get fertilized => 'Fécondé';
  @override
  String get unfertilized => 'Non fécondé';
  @override
  String get hatched => 'Éclos';
  @override
  String get dead => 'Mort';
  @override
  String get fledged => 'Envolé';
  @override
  String get in_stock => 'En cheptel';
  @override
  String get unknown => 'Inconnu';
}

// Path: egg.action
class _TranslationsEggActionFr extends TranslationsEggActionDe {
  _TranslationsEggActionFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get set_ringnumber => 'Saisir un nouveau numéro de bague';
}

// Path: egg.lifecycle
class _TranslationsEggLifecycleFr extends TranslationsEggLifecycleDe {
  _TranslationsEggLifecycleFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String title({required Object Number}) => 'Œuf ${Number}';
  @override
  String get section_cycle => 'Cycle de vie';
  @override
  String get section_details => 'Détails';
  @override
  String get set_date => 'Définir la date';
  @override
  String get confirm_delete => 'Supprimer l\'œuf ?';
}

// Path: common.bottom_sheet
class _TranslationsCommonBottomSheetFr extends TranslationsCommonBottomSheetDe {
  _TranslationsCommonBottomSheetFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String search_empty_builder_text({required Object Text}) => 'La recherche de ${Text} n\'a malheureusement donné aucun résultat.';
}

// Path: common.sale_status
class _TranslationsCommonSaleStatusFr extends TranslationsCommonSaleStatusDe {
  _TranslationsCommonSaleStatusFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Statut d\'achat/vente';
  @override
  String get not_for_sale => 'Pas à vendre';
  @override
  String get listed => 'Proposé à la vente';
  @override
  String get reserved => 'Réservé';
  @override
  String get sold => 'Vendu';
}

// Path: common.sex
class _TranslationsCommonSexFr extends TranslationsCommonSexDe {
  _TranslationsCommonSexFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Sexe';
  @override
  String get male => 'Mâle';
  @override
  String get female => 'Femelle';
  @override
  String get unknown => 'Inconnu';
}

// Path: common.sell
class _TranslationsCommonSellFr extends TranslationsCommonSellDe {
  _TranslationsCommonSellFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get year => 'Année de vente';
  @override
  String get bird => 'Vendre l\'oiseau';
  @override
  late final _TranslationsCommonSellPriceFr price = _TranslationsCommonSellPriceFr._(_root);
}

// Path: common.bought
class _TranslationsCommonBoughtFr extends TranslationsCommonBoughtDe {
  _TranslationsCommonBoughtFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get year => 'Année d\'achat';
  @override
  String get from => 'Acheté à';
  @override
  String get at => 'Acheté le';
  @override
  String get price => 'Prix d\'achat';
}

// Path: common.sorting
class _TranslationsCommonSortingFr extends TranslationsCommonSortingDe {
  _TranslationsCommonSortingFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Tri';
  @override
  String get updated => 'Dernière mise à jour';
  @override
  String get age => 'Âge';
  @override
  String get ringnumber => 'Numéro de bague';
}

// Path: common.sold
class _TranslationsCommonSoldFr extends TranslationsCommonSoldDe {
  _TranslationsCommonSoldFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get to => 'Vendu à';
  @override
  String get at => 'Vendu le';
}

// Path: common.unit
class _TranslationsCommonUnitFr extends TranslationsCommonUnitDe {
  _TranslationsCommonUnitFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get m => 'm';
  @override
  String get cm => 'cm';
}

// Path: common.hint
class _TranslationsCommonHintFr extends TranslationsCommonHintDe {
  _TranslationsCommonHintFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get select => 'Choisir';
  @override
  String get text => 'Saisir';
}

// Path: auth.validators
class _TranslationsAuthValidatorsFr extends TranslationsAuthValidatorsDe {
  _TranslationsAuthValidatorsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get email => 'Veuillez saisir une adresse e-mail valide';
  @override
  String get email_format => 'Veuillez saisir une adresse e-mail valide';
  @override
  String get password => 'Veuillez saisir un mot de passe';
  @override
  String get password_length => 'Le mot de passe doit comporter au moins 6 caractères';
  @override
  String get first_name => 'Veuillez saisir votre prénom';
  @override
  String get first_name_length => 'Le prénom doit comporter au moins 3 caractères';
  @override
  String get last_name => 'Veuillez saisir votre nom';
}

// Path: csv_import.birds
class _TranslationsCsvImportBirdsFr extends TranslationsCsvImportBirdsDe {
  _TranslationsCsvImportBirdsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Oiseaux';
  @override
  String get description => 'Importez des oiseaux avec espèce,\ncouleur et volière';
  @override
  String get import_title => 'Importer des oiseaux depuis un CSV';
  @override
  String get import_description =>
      'Choisissez un fichier CSV contenant vos données d\'oiseaux.\nLes espèces, couleurs et volières sont créées automatiquement si elles n\'existent pas encore. Le séparateur attendu dans le fichier CSV est le point-virgule (;). Le format de date doit être yyyy-MM-dd, dd.MM.yyyy ou dd/MM/yyyy.';
  @override
  String import_button({required Object Count}) => 'Importer ${Count} oiseaux';
  @override
  String get item_name => 'oiseaux';
}

// Path: csv_import.contacts
class _TranslationsCsvImportContactsFr extends TranslationsCsvImportContactsDe {
  _TranslationsCsvImportContactsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Contacts';
  @override
  String get description => 'Importez des coordonnées\nd\'éleveurs ou d\'acheteurs';
  @override
  String get import_title => 'Importer des contacts depuis un CSV';
  @override
  String get import_description =>
      'Choisissez un fichier CSV contenant vos coordonnées. Le séparateur attendu dans le fichier CSV est le point-virgule (;).';
  @override
  String import_button({required Object Count}) => 'Importer ${Count} contacts';
  @override
  String get item_name => 'contacts';
}

// Path: csv_import.columns
class _TranslationsCsvImportColumnsFr extends TranslationsCsvImportColumnsDe {
  _TranslationsCsvImportColumnsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Colonnes prises en charge :';
  @override
  String get date_formats => 'Formats de date : yyyy-MM-dd, dd.MM.yyyy, dd/MM/yyyy';
  @override
  String get bird_columns =>
      '• ringnumber / ring / ringnummer - Numéro de bague (obligatoire)\n• species / art / vogelart - Espèce\n• color / farbe / colour - Couleur\n• cage / voliere / käfig - Volière\n• sex / geschlecht - Sexe (male/female/männlich/weiblich)\n• born_at / geboren / geburtsdatum - Date de naissance\n• father / vater - Numéro de bague du père\n• mother / mutter - Numéro de bague de la mère\n• notes / notizen / bemerkungen - Notes';
  @override
  String get contact_columns =>
      '• firstname / vorname - Prénom\n• name / nachname / lastname - Nom (au moins le prénom ou le nom est requis)\n• number / nummer / kundennummer - Numéro de contact\n• phone / telefon / mobil - Numéro de téléphone\n• email / e-mail / mail - Adresse e-mail\n• address / adresse / strasse - Rue\n• city / stadt / ort - Ville\n• postalcode / plz / zip - Code postal\n• country / land - Pays\n• website / homepage / url - Site web';
}

// Path: csv_import.preview
class _TranslationsCsvImportPreviewFr extends TranslationsCsvImportPreviewDe {
  _TranslationsCsvImportPreviewFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String valid({required Object Count}) => '${Count} valides';
  @override
  String invalid({required Object Count}) => '${Count} non valides';
}

// Path: csv_import.table
class _TranslationsCsvImportTableFr extends TranslationsCsvImportTableDe {
  _TranslationsCsvImportTableFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get row => '#';
  @override
  String get ring_number => 'Numéro de bague';
  @override
  String get species => 'Espèce';
  @override
  String get color => 'Couleur';
  @override
  String get cage => 'Volière';
  @override
  String get sex => 'Sexe';
  @override
  String get birth_date => 'Naissance';
  @override
  String get death_date => 'Décès';
  @override
  String get father => 'Père';
  @override
  String get mother => 'Mère';
  @override
  String get breeder => 'Éleveur';
  @override
  String get owner => 'Propriétaire';
  @override
  String get status => 'Statut';
  @override
  String get number => 'Numéro';
  @override
  String get first_name => 'Prénom';
  @override
  String get last_name => 'Nom';
  @override
  String get phone => 'Téléphone';
  @override
  String get cell_phone => 'Mobile';
  @override
  String get email => 'E-mail';
  @override
  String get city => 'Ville';
}

// Path: csv_import.status
class _TranslationsCsvImportStatusFr extends TranslationsCsvImportStatusDe {
  _TranslationsCsvImportStatusFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get error => 'Erreur';
  @override
  String get missing_ring_number => 'Numéro de bague manquant';
  @override
  String get missing_name => 'Nom manquant';
  @override
  String get no_ring_number => 'Aucun numéro de bague';
}

// Path: csv_import.summary
class _TranslationsCsvImportSummaryFr extends TranslationsCsvImportSummaryDe {
  _TranslationsCsvImportSummaryFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get successful => 'Importés avec succès';
  @override
  String get failed => 'Échoués';
  @override
  String get skipped_duplicates => 'Ignorés (doublons)';
  @override
  String get skipped_invalid => 'Ignorés (non valides)';
  @override
  String get species_created => 'Nouvelles espèces créées';
  @override
  String get colors_created => 'Nouvelles couleurs créées';
  @override
  String get cages_created => 'Nouvelles volières créées';
  @override
  String get failed_imports => 'Imports échoués';
  @override
  String get skipped_entries => 'Entrées ignorées (doublons)';
}

// Path: csv_import.errors
class _TranslationsCsvImportErrorsFr extends TranslationsCsvImportErrorsDe {
  _TranslationsCsvImportErrorsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get select_csv_file => 'Veuillez choisir un fichier CSV';
  @override
  String get not_csv_file => 'Le fichier sélectionné n\'est pas un fichier CSV.';
  @override
  String get could_not_read_file => 'Le fichier n\'a pas pu être lu';
  @override
  String get error_reading_file => 'Erreur lors de la lecture du fichier';
  @override
  String get ring_number_exists => 'Numéro de bague déjà existant';
  @override
  String get could_not_create_bird => 'L\'oiseau n\'a pas pu être créé';
  @override
  String contact_number_exists({required Object Number}) => 'Le numéro de contact « ${Number} » existe déjà';
  @override
  String get could_not_create_contact => 'Le contact n\'a pas pu être créé';
}

// Path: menu.sections
class _TranslationsMenuSectionsFr extends TranslationsMenuSectionsDe {
  _TranslationsMenuSectionsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get main => 'Sections principales';
  @override
  String get data => 'Données de référence';
  @override
  String get settings => 'Paramètres';
}

// Path: menu.birds
class _TranslationsMenuBirdsFr extends TranslationsMenuBirdsDe {
  _TranslationsMenuBirdsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Oiseaux';
  @override
  String get description => 'Gérez vos oiseaux';
}

// Path: menu.contacts
class _TranslationsMenuContactsFr extends TranslationsMenuContactsDe {
  _TranslationsMenuContactsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Contacts';
  @override
  String get description => 'Gérez vos contacts';
}

// Path: menu.breedings
class _TranslationsMenuBreedingsFr extends TranslationsMenuBreedingsDe {
  _TranslationsMenuBreedingsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Élevages';
  @override
  String get description => 'Couples actifs et passés';
}

// Path: menu.resources
class _TranslationsMenuResourcesFr extends TranslationsMenuResourcesDe {
  _TranslationsMenuResourcesFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ressources';
  @override
  String get description => 'Couleurs, espèces, volières';
}

// Path: menu.finances
class _TranslationsMenuFinancesFr extends TranslationsMenuFinancesDe {
  _TranslationsMenuFinancesFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Finances';
  @override
  String get description => 'Livre de caisse';
}

// Path: menu.csv_import
class _TranslationsMenuCsvImportFr extends TranslationsMenuCsvImportDe {
  _TranslationsMenuCsvImportFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Import CSV';
  @override
  String get description => 'Importez des données depuis un CSV';
}

// Path: menu.account
class _TranslationsMenuAccountFr extends TranslationsMenuAccountDe {
  _TranslationsMenuAccountFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Compte';
  @override
  String get description => 'Votre compte';
}

// Path: menu.species
class _TranslationsMenuSpeciesFr extends TranslationsMenuSpeciesDe {
  _TranslationsMenuSpeciesFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Espèces';
  @override
  String get description => 'Gérer les espèces d\'oiseaux';
}

// Path: menu.cages
class _TranslationsMenuCagesFr extends TranslationsMenuCagesDe {
  _TranslationsMenuCagesFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Volières';
  @override
  String get description => 'Volières et cages';
}

// Path: menu.colors
class _TranslationsMenuColorsFr extends TranslationsMenuColorsDe {
  _TranslationsMenuColorsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Couleurs';
  @override
  String get description => 'Variétés de couleur';
}

// Path: menu.finance_categories
class _TranslationsMenuFinanceCategoriesFr extends TranslationsMenuFinanceCategoriesDe {
  _TranslationsMenuFinanceCategoriesFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Catégories financières';
  @override
  String get description => 'Catégories de recettes et de dépenses';
}

// Path: dialog.discard_changes
class _TranslationsDialogDiscardChangesFr extends TranslationsDialogDiscardChangesDe {
  _TranslationsDialogDiscardChangesFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Abandonner les modifications ?';
  @override
  String get content => 'Vos modifications seront abandonnées, êtes-vous sûr ?';
}

// Path: dialog.delete_entry
class _TranslationsDialogDeleteEntryFr extends TranslationsDialogDeleteEntryDe {
  _TranslationsDialogDeleteEntryFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get content => 'Voulez-vous vraiment supprimer cette entrée ?';
}

// Path: export.events
class _TranslationsExportEventsFr extends TranslationsExportEventsDe {
  _TranslationsExportEventsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String succeeded({required Object FileName}) => '« ${FileName} » créé.';
  @override
  String failed({required Object Error}) => 'Échec de l\'export : ${Error}';
}

// Path: export.format
class _TranslationsExportFormatFr extends TranslationsExportFormatDe {
  _TranslationsExportFormatFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Format';
  @override
  late final _TranslationsExportFormatCsvFr csv = _TranslationsExportFormatCsvFr._(_root);
  @override
  late final _TranslationsExportFormatPdfFr pdf = _TranslationsExportFormatPdfFr._(_root);
}

// Path: export.preset
class _TranslationsExportPresetFr extends TranslationsExportPresetDe {
  _TranslationsExportPresetFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Étendue';
}

// Path: export.pdf
class _TranslationsExportPdfFr extends TranslationsExportPdfDe {
  _TranslationsExportPdfFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String page({required Object Page, required Object Total}) => 'Page ${Page} sur ${Total}';
}

// Path: export.header
class _TranslationsExportHeaderFr extends TranslationsExportHeaderDe {
  _TranslationsExportHeaderFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'En-tête PDF';
  @override
  String get subtitle => 'En-tête des PDF exportés';
  @override
  String get list_empty => 'Aucun en-tête créé pour le moment. Sans profil, l\'export utilise le nom de la liste et les données de votre profil.';
  @override
  String get add => 'Créer un en-tête';
  @override
  String get new_name => 'Nouvel en-tête';
  @override
  String get none => 'Sans en-tête';
  @override
  String get default_badge => 'Par défaut';
  @override
  String get set_default => 'Utiliser par défaut';
  @override
  String get delete_title => 'Supprimer l\'en-tête ?';
  @override
  String delete_content({required Object Name}) => '« ${Name} » sera supprimé définitivement.';
  @override
  String get deleted => 'En-tête supprimé.';
  @override
  String get saved => 'En-tête enregistré.';
  @override
  String get name_label => 'Nom du profil';
  @override
  String get name_hint => 'par ex. association ou vente';
  @override
  String get section_layout => 'Disposition';
  @override
  String get section_logo => 'Logo';
  @override
  String get section_text => 'Textes';
  @override
  String get section_meta => 'Indications';
  @override
  String get section_footer => 'Pied de page';
  @override
  late final _TranslationsExportHeaderLayoutFr layout = _TranslationsExportHeaderLayoutFr._(_root);
  @override
  late final _TranslationsExportHeaderLogoSizeFr logo_size = _TranslationsExportHeaderLogoSizeFr._(_root);
  @override
  String get logo_pick => 'Choisir un logo';
  @override
  String get logo_replace => 'Remplacer le logo';
  @override
  String get logo_remove => 'Supprimer le logo';
  @override
  String get title_label => 'Ligne de titre';
  @override
  String get subtitle_label => 'Sous-titre';
  @override
  String get footer_label => 'Texte du pied de page';
  @override
  String get address_show => 'Afficher le bloc d\'adresse';
  @override
  String get address_override_label => 'Bloc d\'adresse personnalisé';
  @override
  String get address_override_hint => 'Laisser vide pour utiliser l\'adresse de votre profil';
  @override
  String get address_from_profile => 'Reprendre du profil';
  @override
  String get show_date => 'Afficher la date';
  @override
  String get show_count => 'Afficher le nombre';
  @override
  String get show_filter => 'Afficher les filtres actifs';
  @override
  String get show_breeder_number => 'Afficher le numéro d\'éleveur';
  @override
  String get show_divider => 'Afficher la ligne de séparation';
  @override
  String get show_page_numbers => 'Afficher les numéros de page';
  @override
  String get placeholders_hint => 'Appuyez sur un espace réservé pour l\'insérer';
  @override
  String get preview_title => 'Aperçu';
  @override
  String get preview_list => 'Inventaire';
  @override
  String get preview_filter => 'Espèce : Perruche ondulée';
}

// Path: export.summary
class _TranslationsExportSummaryFr extends TranslationsExportSummaryDe {
  _TranslationsExportSummaryFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get birds => 'Oiseaux';
  @override
  String get pairs => 'Couples';
  @override
  String get hatch_rate => 'Taux d\'éclosion';
  @override
  String get income => 'Recettes';
  @override
  String get expense => 'Dépenses';
  @override
  String get net => 'Solde';
}

// Path: export.lists
class _TranslationsExportListsFr extends TranslationsExportListsDe {
  _TranslationsExportListsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get birds => 'Inventaire';
  @override
  String get breeding_pairs => 'Couples reproducteurs';
  @override
  String get finances => 'Livre de caisse';
}

// Path: export.file_names
class _TranslationsExportFileNamesFr extends TranslationsExportFileNamesDe {
  _TranslationsExportFileNamesFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get birds => 'inventaire';
  @override
  String get breeding_pairs => 'couples_elevage';
  @override
  String get finances => 'livre_caisse';
}

// Path: export.presets
class _TranslationsExportPresetsFr extends TranslationsExportPresetsDe {
  _TranslationsExportPresetsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsExportPresetsBirdsFr birds = _TranslationsExportPresetsBirdsFr._(_root);
  @override
  late final _TranslationsExportPresetsBreedingPairsFr breeding_pairs = _TranslationsExportPresetsBreedingPairsFr._(_root);
  @override
  late final _TranslationsExportPresetsFinancesFr finances = _TranslationsExportPresetsFinancesFr._(_root);
}

// Path: export.columns
class _TranslationsExportColumnsFr extends TranslationsExportColumnsDe {
  _TranslationsExportColumnsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsExportColumnsBirdFr bird = _TranslationsExportColumnsBirdFr._(_root);
  @override
  late final _TranslationsExportColumnsBreedingPairFr breeding_pair = _TranslationsExportColumnsBreedingPairFr._(_root);
  @override
  late final _TranslationsExportColumnsFinanceFr finance = _TranslationsExportColumnsFinanceFr._(_root);
}

// Path: documents.types
class _TranslationsDocumentsTypesFr extends TranslationsDocumentsTypesDe {
  _TranslationsDocumentsTypesFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsDocumentsTypesProfileFr profile = _TranslationsDocumentsTypesProfileFr._(_root);
  @override
  late final _TranslationsDocumentsTypesPedigreeFr pedigree = _TranslationsDocumentsTypesPedigreeFr._(_root);
  @override
  late final _TranslationsDocumentsTypesSaleReceiptFr sale_receipt = _TranslationsDocumentsTypesSaleReceiptFr._(_root);
}

// Path: documents.profile
class _TranslationsDocumentsProfileFr extends TranslationsDocumentsProfileDe {
  _TranslationsDocumentsProfileFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get section_general => 'Général';
  @override
  String get section_lifecycle => 'Dates de vie';
  @override
  String get section_origin => 'Origine et élevage';
  @override
  String get section_commerce => 'Achat et vente';
  @override
  String get section_notes => 'Notes';
}

// Path: documents.pedigree
class _TranslationsDocumentsPedigreeFr extends TranslationsDocumentsPedigreeDe {
  _TranslationsDocumentsPedigreeFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get statement =>
      'Nous certifions par la présente que l\'ascendance de l\'oiseau mentionné ci-dessus est indiquée correctement en toute bonne foi.';
  @override
  String get breeder => 'Éleveur';
  @override
  String get breeder_number => 'Numéro d\'éleveur';
  @override
  String get signature => 'Lieu, date, signature de l\'éleveur';
}

// Path: documents.receipt
class _TranslationsDocumentsReceiptFr extends TranslationsDocumentsReceiptDe {
  _TranslationsDocumentsReceiptFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get seller => 'Partie cédante';
  @override
  String get buyer => 'Partie preneuse';
  @override
  String get bird_data => 'Informations sur l\'oiseau';
  @override
  String get price => 'Prix';
  @override
  String get date => 'Date de la cession';
  @override
  String get statement =>
      'L\'oiseau décrit ci-dessus est cédé à la partie preneuse au prix indiqué. L\'oiseau est en bonne santé au moment de la cession.';
  @override
  String get signature_seller => 'Lieu, date, signature de la partie cédante';
  @override
  String get signature_buyer => 'Lieu, date, signature de la partie preneuse';
}

// Path: finances.categories.filters
class _TranslationsFinancesCategoriesFiltersFr extends TranslationsFinancesCategoriesFiltersDe {
  _TranslationsFinancesCategoriesFiltersFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Toutes';
  @override
  String get income => 'Recettes';
  @override
  String get expense => 'Dépenses';
}

// Path: finances.categories.groups
class _TranslationsFinancesCategoriesGroupsFr extends TranslationsFinancesCategoriesGroupsDe {
  _TranslationsFinancesCategoriesGroupsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get income => 'Recettes';
  @override
  String get expense => 'Dépenses';
}

// Path: finances.categories.kind_singular
class _TranslationsFinancesCategoriesKindSingularFr extends TranslationsFinancesCategoriesKindSingularDe {
  _TranslationsFinancesCategoriesKindSingularFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get income => 'Recette';
  @override
  String get expense => 'Dépense';
}

// Path: finances.categories.pill
class _TranslationsFinancesCategoriesPillFr extends TranslationsFinancesCategoriesPillDe {
  _TranslationsFinancesCategoriesPillFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get income => '↑ RECETTE';
  @override
  String get expense => '↓ DÉPENSE';
}

// Path: finances.categories.detail
class _TranslationsFinancesCategoriesDetailFr extends TranslationsFinancesCategoriesDetailDe {
  _TranslationsFinancesCategoriesDetailFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get bookings_label => 'Opérations';
  @override
  String get six_months => '6 mois';
  @override
  String get avg_per_month => 'Ø par mois';
  @override
  String get recent_bookings => 'Dernières opérations';
  @override
  String get no_bookings => 'Aucune opération';
  @override
  String get last_six_months_label => '6 derniers mois';
  @override
  String get course_six_months => 'Évolution · 6 mois';
}

// Path: finances.categories.months_short
class _TranslationsFinancesCategoriesMonthsShortFr extends TranslationsFinancesCategoriesMonthsShortDe {
  _TranslationsFinancesCategoriesMonthsShortFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get dec => 'déc';
  @override
  String get jan => 'janv';
  @override
  String get feb => 'févr';
  @override
  String get mar => 'mars';
  @override
  String get apr => 'avr';
  @override
  String get may => 'mai';
}

// Path: backup.cloud.choose_folder_dialog
class _TranslationsBackupCloudChooseFolderDialogFr extends TranslationsBackupCloudChooseFolderDialogDe {
  _TranslationsBackupCloudChooseFolderDialogFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Choisir un dossier cloud ?';
  @override
  String get content =>
      'Pour que les sauvegardes automatiques puissent être enregistrées, choisissez maintenant un dossier dans votre cloud (par ex. Google Drive).';
  @override
  String get confirm => 'Choisir un dossier';
}

// Path: backup.cloud.sync_after_change_dialog
class _TranslationsBackupCloudSyncAfterChangeDialogFr extends TranslationsBackupCloudSyncAfterChangeDialogDe {
  _TranslationsBackupCloudSyncAfterChangeDialogFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Synchroniser maintenant ?';
  @override
  String get content => 'Le dossier cloud a été modifié. Vos données actuelles doivent-elles y être sauvegardées maintenant ?';
  @override
  String get confirm => 'Synchroniser';
}

// Path: backup.cloud.interval
class _TranslationsBackupCloudIntervalFr extends TranslationsBackupCloudIntervalDe {
  _TranslationsBackupCloudIntervalFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Intervalle de sauvegarde automatique';
  @override
  String get sub => 'Fréquence de sauvegarde automatique au démarrage de l\'application';
  @override
  String get sheet_title => 'Choisir un intervalle';
  @override
  String get every_launch => 'À chaque démarrage';
  @override
  String get daily => 'Quotidien';
  @override
  String get weekly => 'Hebdomadaire';
  @override
  String get off => 'Manuel';
}

// Path: backup.cloud.status
class _TranslationsBackupCloudStatusFr extends TranslationsBackupCloudStatusDe {
  _TranslationsBackupCloudStatusFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get synced_today => 'Dernière synchronisation : aujourd\'hui';
  @override
  String synced_days_ago({required num count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(
        count,
        one: 'Dernière synchronisation : il y a 1 jour',
        other: 'Dernière synchronisation : il y a {count} jours',
      );
  @override
  String get never => 'Pas encore synchronisé';
  @override
  String get unavailable_icloud => 'Non connecté à iCloud';
  @override
  String get unavailable_folder => 'Aucun accès au dossier – veuillez le choisir à nouveau';
}

// Path: backup.cloud.events
class _TranslationsBackupCloudEventsFr extends TranslationsBackupCloudEventsDe {
  _TranslationsBackupCloudEventsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String location_chosen({required Object Name}) => 'Dossier cloud défini : ${Name}';
  @override
  String get location_failed => 'Aucun dossier choisi';
  @override
  String get sync_succeeded => 'Sauvegardé dans le cloud';
  @override
  String sync_failed({required Object Error}) => 'Échec de la synchronisation cloud : ${Error}';
  @override
  String get unavailable_icloud => 'Non connecté à iCloud';
  @override
  String get unavailable_folder => 'Aucun accès au dossier cloud. Veuillez le choisir à nouveau.';
}

// Path: contacts.fields.title
class _TranslationsContactsFieldsTitleFr extends TranslationsContactsFieldsTitleDe {
  _TranslationsContactsFieldsTitleFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Civilité';
  @override
  String get none => 'Aucune';
  @override
  String get mr => 'M.';
  @override
  String get ms => 'Mme';
}

// Path: contacts.fields.app_user
class _TranslationsContactsFieldsAppUserFr extends TranslationsContactsFieldsAppUserDe {
  _TranslationsContactsFieldsAppUserFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ce contact, c\'est moi';
  @override
  String get sub_title => 'Marque le contact comme utilisateur de l\'application.';
}

// Path: breeding_pairs.stats.abbr
class _TranslationsBreedingPairsStatsAbbrFr extends TranslationsBreedingPairsStatsAbbrDe {
  _TranslationsBreedingPairsStatsAbbrFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get laid => 'PD';
  @override
  String get fertilized => 'FÉ';
  @override
  String get hatched => 'ÉC';
  @override
  String get fledged => 'EN';
}

// Path: breeding_pairs.stats.label
class _TranslationsBreedingPairsStatsLabelFr extends TranslationsBreedingPairsStatsLabelDe {
  _TranslationsBreedingPairsStatsLabelFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get laid => 'Œufs pondus';
  @override
  String get fertilized => 'Fécondés';
  @override
  String get hatched => 'Éclos';
  @override
  String get fledged => 'Envolés';
}

// Path: breeding_pairs.stats.legend
class _TranslationsBreedingPairsStatsLegendFr extends TranslationsBreedingPairsStatsLegendDe {
  _TranslationsBreedingPairsStatsLegendFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Légende';
}

// Path: resources.sort.by
class _TranslationsResourcesSortByFr extends TranslationsResourcesSortByDe {
  _TranslationsResourcesSortByFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Nom';
  @override
  String get created => 'Créé le';
  @override
  String get capacity => 'Capacité';
  @override
  String get kind => 'Type';
  @override
  String get lat_name => 'Nom lat.';
  @override
  String get hex => 'Code couleur';
  @override
  String get stock => 'Cheptel';
}

// Path: bird.sections.identification
class _TranslationsBirdSectionsIdentificationFr extends TranslationsBirdSectionsIdentificationDe {
  _TranslationsBirdSectionsIdentificationFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Identification';
  @override
  String get sub_title => 'Informations permettant d\'identifier l\'oiseau';
}

// Path: bird.sections.keeping
class _TranslationsBirdSectionsKeepingFr extends TranslationsBirdSectionsKeepingDe {
  _TranslationsBirdSectionsKeepingFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Hébergement';
  @override
  String get sub_title => 'Informations sur l\'hébergement de l\'oiseau';
}

// Path: bird.sections.status
class _TranslationsBirdSectionsStatusFr extends TranslationsBirdSectionsStatusDe {
  _TranslationsBirdSectionsStatusFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Statut';
  @override
  String get sub_title => 'Informations sur le statut de l\'oiseau';
}

// Path: bird.sections.sale
class _TranslationsBirdSectionsSaleFr extends TranslationsBirdSectionsSaleDe {
  _TranslationsBirdSectionsSaleFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Vente';
  @override
  String get sub_title => 'Informations sur la vente de l\'oiseau';
}

// Path: bird.sections.purchase
class _TranslationsBirdSectionsPurchaseFr extends TranslationsBirdSectionsPurchaseDe {
  _TranslationsBirdSectionsPurchaseFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Achat';
  @override
  String get sub_title => 'Informations sur l\'achat de l\'oiseau';
}

// Path: bird.sections.health
class _TranslationsBirdSectionsHealthFr extends TranslationsBirdSectionsHealthDe {
  _TranslationsBirdSectionsHealthFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Santé';
  @override
  String get sub_title => 'Informations sur la santé de l\'oiseau';
}

// Path: bird.sections.life
class _TranslationsBirdSectionsLifeFr extends TranslationsBirdSectionsLifeDe {
  _TranslationsBirdSectionsLifeFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Étape de vie';
  @override
  String get sub_title => 'Informations sur l\'étape de vie de l\'oiseau';
  @override
  String get unknown_lifecycle_title => 'Données du cycle de vie inconnues ?';
  @override
  String get unknown_lifecycle_sub_title => 'Activez cette option si les données du cycle de vie ne sont pas connues.';
  @override
  String get unknown_lifecycle_description =>
      'Si une date de naissance existe, l\'oiseau est considéré comme adulte. Si une date de décès existe, l\'oiseau est considéré comme décédé.';
}

// Path: bird.sections.notes
class _TranslationsBirdSectionsNotesFr extends TranslationsBirdSectionsNotesDe {
  _TranslationsBirdSectionsNotesFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Notes';
  @override
  String get sub_title => 'Informations sur les notes de l\'oiseau';
}

// Path: bird.sections.photos
class _TranslationsBirdSectionsPhotosFr extends TranslationsBirdSectionsPhotosDe {
  _TranslationsBirdSectionsPhotosFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Photos';
  @override
  String get sub_title => 'Gérer les photos de cet oiseau';
  @override
  String get add_camera => 'Appareil photo';
  @override
  String get add_gallery => 'Galerie';
  @override
  String get save_first => 'Enregistrez d\'abord l\'oiseau pour ajouter des photos.';
  @override
  String get empty => 'Aucune photo pour le moment';
  @override
  String get delete_title => 'Supprimer la photo ?';
  @override
  String get delete_confirm => 'Supprimer';
  @override
  String get manage => 'Gérer les photos';
  @override
  String get capture => 'Prendre une photo';
  @override
  String get capture_sub => 'ou choisir dans la galerie · plusieurs possibles';
  @override
  String get section_label => 'Photos de cet oiseau';
  @override
  String get add_tile => 'Ajouter';
  @override
  String get cover_badge => 'Couverture';
  @override
  String get set_cover => 'Définir comme photo de couverture';
  @override
  String get remove => 'Supprimer';
  @override
  String get source_camera => 'Appareil photo';
  @override
  String get source_gallery => 'Galerie';
  @override
  String get hint =>
      'Appuyez sur une photo pour l\'afficher en grand. Maintenez une photo enfoncée et faites-la glisser à un autre endroit – la première photo est la photo de couverture et apparaît dans les listes ainsi que sur la page de détail de l\'oiseau.';
  @override
  String get done => 'Terminé';
  @override
  String count_preview_one({required Object Count}) => '${Count} photo';
  @override
  String count_preview_other({required Object Count}) => '${Count} photos';
}

// Path: bird.sections.parent
class _TranslationsBirdSectionsParentFr extends TranslationsBirdSectionsParentDe {
  _TranslationsBirdSectionsParentFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Parents';
  @override
  String get sub_title => 'Informations sur les parents de l\'oiseau';
}

// Path: bird.sections.breeder
class _TranslationsBirdSectionsBreederFr extends TranslationsBirdSectionsBreederDe {
  _TranslationsBirdSectionsBreederFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Éleveur';
  @override
  String get sub_title => 'Informations sur l\'éleveur de l\'oiseau';
}

// Path: bird.sections.children
class _TranslationsBirdSectionsChildrenFr extends TranslationsBirdSectionsChildrenDe {
  _TranslationsBirdSectionsChildrenFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Descendants';
  @override
  String get sub_title => 'Informations sur les descendants de l\'oiseau';
}

// Path: common.sell.price
class _TranslationsCommonSellPriceFr extends TranslationsCommonSellPriceDe {
  _TranslationsCommonSellPriceFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get kFinal => 'Prix de vente réel';
  @override
  String get asking => 'Prix de vente souhaité';
}

// Path: export.format.csv
class _TranslationsExportFormatCsvFr extends TranslationsExportFormatCsvDe {
  _TranslationsExportFormatCsvFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'CSV';
  @override
  String get description => 'Pour Excel et les tableurs';
}

// Path: export.format.pdf
class _TranslationsExportFormatPdfFr extends TranslationsExportFormatPdfDe {
  _TranslationsExportFormatPdfFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'PDF';
  @override
  String get description => 'Pour imprimer et transmettre';
}

// Path: export.header.layout
class _TranslationsExportHeaderLayoutFr extends TranslationsExportHeaderLayoutDe {
  _TranslationsExportHeaderLayoutFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get logo_left => 'Logo à gauche';
  @override
  String get centered => 'Centré';
  @override
  String get address_left_logo_right => 'Adresse à gauche, logo à droite';
}

// Path: export.header.logo_size
class _TranslationsExportHeaderLogoSizeFr extends TranslationsExportHeaderLogoSizeDe {
  _TranslationsExportHeaderLogoSizeFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Taille';
  @override
  String get small => 'Petit';
  @override
  String get medium => 'Moyen';
  @override
  String get large => 'Grand';
}

// Path: export.presets.birds
class _TranslationsExportPresetsBirdsFr extends TranslationsExportPresetsBirdsDe {
  _TranslationsExportPresetsBirdsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get overview => 'Aperçu';
  @override
  String get full => 'Complet';
}

// Path: export.presets.breeding_pairs
class _TranslationsExportPresetsBreedingPairsFr extends TranslationsExportPresetsBreedingPairsDe {
  _TranslationsExportPresetsBreedingPairsFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get overview => 'Aperçu';
  @override
  String get full => 'Complet';
}

// Path: export.presets.finances
class _TranslationsExportPresetsFinancesFr extends TranslationsExportPresetsFinancesDe {
  _TranslationsExportPresetsFinancesFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get bookings => 'Opérations';
  @override
  String get full => 'Complet';
}

// Path: export.columns.bird
class _TranslationsExportColumnsBirdFr extends TranslationsExportColumnsBirdDe {
  _TranslationsExportColumnsBirdFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get ring_number => 'Numéro de bague';
  @override
  String get species => 'Espèce';
  @override
  String get color => 'Couleur';
  @override
  String get cage => 'Volière';
  @override
  String get sex => 'Sexe';
  @override
  String get laid_at => 'Pondu le';
  @override
  String get hatched_at => 'Éclos le';
  @override
  String get fledged_at => 'Envolé le';
  @override
  String get born_at => 'Né le';
  @override
  String get died_at => 'Décédé le';
  @override
  String get father => 'Père';
  @override
  String get mother => 'Mère';
  @override
  String get breeder => 'Éleveur';
  @override
  String get breeder_number => 'Numéro d\'éleveur';
  @override
  String get owner => 'Propriétaire';
  @override
  String get owner_number => 'Numéro du propriétaire';
  @override
  String get bought_at => 'Acheté le';
  @override
  String get bought_price => 'Prix d\'achat';
  @override
  String get bought_from => 'Acheté à';
  @override
  String get sale_status => 'Statut de vente';
  @override
  String get asking_price => 'Prix demandé';
  @override
  String get final_price => 'Prix final';
  @override
  String get sold_at => 'Vendu le';
  @override
  String get sold_to => 'Vendu à';
  @override
  String get notes => 'Notes';
}

// Path: export.columns.breeding_pair
class _TranslationsExportColumnsBreedingPairFr extends TranslationsExportColumnsBreedingPairDe {
  _TranslationsExportColumnsBreedingPairFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get father_ring => 'Père (bague)';
  @override
  String get father_species => 'Père (espèce)';
  @override
  String get mother_ring => 'Mère (bague)';
  @override
  String get mother_species => 'Mère (espèce)';
  @override
  String get cage => 'Volière';
  @override
  String get status => 'Statut';
  @override
  String get start => 'Début';
  @override
  String get end => 'Fin';
  @override
  String get broods => 'Nichées';
  @override
  String get laid => 'Pondus';
  @override
  String get fertilized => 'Fécondés';
  @override
  String get hatched => 'Éclos';
  @override
  String get fledged => 'Envolés';
  @override
  String get notes => 'Notes';
}

// Path: export.columns.finance
class _TranslationsExportColumnsFinanceFr extends TranslationsExportColumnsFinanceDe {
  _TranslationsExportColumnsFinanceFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get date => 'Date';
  @override
  String get title => 'Titre';
  @override
  String get category => 'Catégorie';
  @override
  String get kind => 'Type';
  @override
  String get amount => 'Montant';
  @override
  String get bird => 'Oiseau';
  @override
  String get notes => 'Notes';
}

// Path: documents.types.profile
class _TranslationsDocumentsTypesProfileFr extends TranslationsDocumentsTypesProfileDe {
  _TranslationsDocumentsTypesProfileFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Fiche signalétique';
  @override
  String get description => 'Toutes les données de base sur une page';
  @override
  String get file_name => 'fiche';
}

// Path: documents.types.pedigree
class _TranslationsDocumentsTypesPedigreeFr extends TranslationsDocumentsTypesPedigreeDe {
  _TranslationsDocumentsTypesPedigreeFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Certificat d\'origine';
  @override
  String get description => 'Arbre généalogique sur trois générations';
  @override
  String get file_name => 'certificat_origine';
}

// Path: documents.types.sale_receipt
class _TranslationsDocumentsTypesSaleReceiptFr extends TranslationsDocumentsTypesSaleReceiptDe {
  _TranslationsDocumentsTypesSaleReceiptFr._(TranslationsFr root)
      : this._root = root,
        super.internal(root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Attestation de cession';
  @override
  String get description => 'Justificatif de vente ou de cession';
  @override
  String get file_name => 'attestation_cession';
}
