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
class TranslationsEn extends Translations with BaseTranslations<AppLocale, Translations> {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsEn(
      {Map<String, Node>? overrides,
      PluralResolver? cardinalResolver,
      PluralResolver? ordinalResolver,
      TranslationMetadata<AppLocale, Translations>? meta})
      : assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
        $meta = meta ??
            TranslationMetadata(
              locale: AppLocale.en,
              overrides: overrides ?? {},
              cardinalResolver: cardinalResolver,
              ordinalResolver: ordinalResolver,
            ),
        super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

  /// Metadata for the translations of <en>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final TranslationsEn _root = this; // ignore: unused_field

  @override
  TranslationsEn $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEn(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsAppEn app = _TranslationsAppEn._(_root);
  @override
  late final _TranslationsOnboardingEn onboarding = _TranslationsOnboardingEn._(_root);
  @override
  late final _TranslationsFinancesEn finances = _TranslationsFinancesEn._(_root);
  @override
  late final _TranslationsAccountEn account = _TranslationsAccountEn._(_root);
  @override
  late final _TranslationsBackupEn backup = _TranslationsBackupEn._(_root);
  @override
  late final _TranslationsBreedingsEn breedings = _TranslationsBreedingsEn._(_root);
  @override
  late final _TranslationsColorsEn colors = _TranslationsColorsEn._(_root);
  @override
  late final _TranslationsCagesEn cages = _TranslationsCagesEn._(_root);
  @override
  late final _TranslationsSpeciesEn species = _TranslationsSpeciesEn._(_root);
  @override
  late final _TranslationsContactsEn contacts = _TranslationsContactsEn._(_root);
  @override
  late final _TranslationsBreedingPairsEn breeding_pairs = _TranslationsBreedingPairsEn._(_root);
  @override
  late final _TranslationsResourcesEn resources = _TranslationsResourcesEn._(_root);
  @override
  late final _TranslationsBirdsEn birds = _TranslationsBirdsEn._(_root);
  @override
  late final _TranslationsPedigreeEn pedigree = _TranslationsPedigreeEn._(_root);
  @override
  late final _TranslationsInbreedingEn inbreeding = _TranslationsInbreedingEn._(_root);
  @override
  late final _TranslationsBirdEn bird = _TranslationsBirdEn._(_root);
  @override
  late final _TranslationsPairDetailEn pair_detail = _TranslationsPairDetailEn._(_root);
  @override
  late final _TranslationsBroodEn brood = _TranslationsBroodEn._(_root);
  @override
  late final _TranslationsEggEn egg = _TranslationsEggEn._(_root);
  @override
  late final _TranslationsCommonEn common = _TranslationsCommonEn._(_root);
  @override
  late final _TranslationsAuthEn auth = _TranslationsAuthEn._(_root);
  @override
  late final _TranslationsCsvImportEn csv_import = _TranslationsCsvImportEn._(_root);
  @override
  late final _TranslationsMenuEn menu = _TranslationsMenuEn._(_root);
  @override
  late final _TranslationsErrorEn error = _TranslationsErrorEn._(_root);
  @override
  late final _TranslationsDialogEn dialog = _TranslationsDialogEn._(_root);
  @override
  late final _TranslationsPopUpMenuEn pop_up_menu = _TranslationsPopUpMenuEn._(_root);
  @override
  late final _TranslationsExportEn export = _TranslationsExportEn._(_root);
  @override
  late final _TranslationsDocumentsEn documents = _TranslationsDocumentsEn._(_root);
  @override
  late final _TranslationsSnackbarsEn snackbars = _TranslationsSnackbarsEn._(_root);
}

// Path: app
class _TranslationsAppEn extends TranslationsAppDe {
  _TranslationsAppEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Birdbreeder';
}

// Path: onboarding
class _TranslationsOnboardingEn extends TranslationsOnboardingDe {
  _TranslationsOnboardingEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Set up profile';
  @override
  String get subtitle => 'Create your own profile. It is used as the app user, e.g. to mark your own birds.';
  @override
  String get first_name => 'First name';
  @override
  String get last_name => 'Last name';
  @override
  String get last_name_required => 'Please enter a last name.';
  @override
  String get breeder_number => 'Breeder number';
  @override
  String get breeder_number_required => 'Please enter a breeder number.';
  @override
  String get save => 'Save profile';
  @override
  String get or => 'or';
  @override
  String get restore_backup => 'Restore backup';
}

// Path: finances
class _TranslationsFinancesEn extends TranslationsFinancesDe {
  _TranslationsFinancesEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Finances';
  @override
  late final _TranslationsFinancesCategoriesEn categories = _TranslationsFinancesCategoriesEn._(_root);
  @override
  String get delete => 'Delete entry?';
  @override
  late final _TranslationsFinancesAddEn add = _TranslationsFinancesAddEn._(_root);
  @override
  late final _TranslationsFinancesKindEn kind = _TranslationsFinancesKindEn._(_root);
  @override
  late final _TranslationsFinancesSummaryEn summary = _TranslationsFinancesSummaryEn._(_root);
  @override
  late final _TranslationsFinancesViewEn view = _TranslationsFinancesViewEn._(_root);
  @override
  late final _TranslationsFinancesScopeEn scope = _TranslationsFinancesScopeEn._(_root);
  @override
  late final _TranslationsFinancesFilterEn filter = _TranslationsFinancesFilterEn._(_root);
  @override
  late final _TranslationsFinancesSortingEn sorting = _TranslationsFinancesSortingEn._(_root);
}

// Path: account
class _TranslationsAccountEn extends TranslationsAccountDe {
  _TranslationsAccountEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Account';
  @override
  String get logout => 'Log out';
  @override
  String get switch_to_local => 'Switch to local mode';
  @override
  late final _TranslationsAccountSwitchToLocalDialogEn switch_to_local_dialog = _TranslationsAccountSwitchToLocalDialogEn._(_root);
  @override
  late final _TranslationsAccountLocalModeEn local_mode = _TranslationsAccountLocalModeEn._(_root);
  @override
  late final _TranslationsAccountAppearanceEn appearance = _TranslationsAccountAppearanceEn._(_root);
  @override
  late final _TranslationsAccountLanguageEn language = _TranslationsAccountLanguageEn._(_root);
  @override
  late final _TranslationsAccountCurrencyEn currency = _TranslationsAccountCurrencyEn._(_root);
  @override
  late final _TranslationsAccountProfileEn profile = _TranslationsAccountProfileEn._(_root);
  @override
  late final _TranslationsAccountUserEn user = _TranslationsAccountUserEn._(_root);
  @override
  late final _TranslationsAccountEventsEn events = _TranslationsAccountEventsEn._(_root);
}

// Path: backup
class _TranslationsBackupEn extends TranslationsBackupDe {
  _TranslationsBackupEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get section_title => 'Backup';
  @override
  String get page_title => 'Backups';
  @override
  String get empty => 'No backups yet.';
  @override
  String get loading => 'Loading…';
  @override
  String get no_backup_yet => 'No backup yet';
  @override
  String last_backup({required Object Date}) => 'Last backup: ${Date}';
  @override
  late final _TranslationsBackupExternalEn external = _TranslationsBackupExternalEn._(_root);
  @override
  late final _TranslationsBackupActionsEn actions = _TranslationsBackupActionsEn._(_root);
  @override
  String get manual_section => 'Manual backup';
  @override
  String get last_backup_label => 'Last backup';
  @override
  String get no_backup_size => 'No backup yet';
  @override
  String get create_hint => 'Opens the share dialog – pick Drive, Files, email or similar. Photos are included.';
  @override
  String get restore_hint => 'E.g. after switching devices – restores an earlier state.';
  @override
  late final _TranslationsBackupRestoreSheetEn restore_sheet = _TranslationsBackupRestoreSheetEn._(_root);
  @override
  late final _TranslationsBackupMenuEn menu = _TranslationsBackupMenuEn._(_root);
  @override
  late final _TranslationsBackupDeleteDialogEn delete_dialog = _TranslationsBackupDeleteDialogEn._(_root);
  @override
  late final _TranslationsBackupRestoreDialogEn restore_dialog = _TranslationsBackupRestoreDialogEn._(_root);
  @override
  late final _TranslationsBackupReminderEn reminder = _TranslationsBackupReminderEn._(_root);
  @override
  late final _TranslationsBackupEventsEn events = _TranslationsBackupEventsEn._(_root);
  @override
  late final _TranslationsBackupCloudEn cloud = _TranslationsBackupCloudEn._(_root);
}

// Path: breedings
class _TranslationsBreedingsEn extends TranslationsBreedingsDe {
  _TranslationsBreedingsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Breedings';
}

// Path: colors
class _TranslationsColorsEn extends TranslationsColorsDe {
  _TranslationsColorsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Colors';
  @override
  String get add => 'Add color';
  @override
  String get edit => 'Edit color';
  @override
  String get select => 'Select color';
  @override
  String get pick => 'Select color';
  @override
  String get delete => 'Delete color?';
  @override
  String get color => 'Color';
  @override
  String get list_title => 'Color varieties';
  @override
  String get value_label => 'Color value';
  @override
  String get genetics_section => 'Genetics (optional)';
  @override
  String get inheritance_label => 'Inheritance';
  @override
  String get inheritance_hint => 'e.g. autosomal dominant';
  @override
  String get birds_with_color => 'Birds with this color';
  @override
  String get no_birds_with_color => 'No birds with this color';
  @override
  String get empty => 'No colors';
  @override
  String get detail_title => 'Color';
  @override
  late final _TranslationsColorsStatsEn stats = _TranslationsColorsStatsEn._(_root);
}

// Path: cages
class _TranslationsCagesEn extends TranslationsCagesDe {
  _TranslationsCagesEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Aviaries';
  @override
  String get add => 'Add aviary';
  @override
  String get edit => 'Edit aviary';
  @override
  String get select => 'Select aviary';
  @override
  String get delete => 'Delete aviary?';
  @override
  String get name => 'Aviary name';
  @override
  String get description => 'Description';
  @override
  String get height => 'Height';
  @override
  String get width => 'Width';
  @override
  String get depth => 'Depth';
  @override
  String get list_title => 'Cages';
  @override
  String get detail_title => 'Aviary';
  @override
  late final _TranslationsCagesSectionEn section = _TranslationsCagesSectionEn._(_root);
  @override
  late final _TranslationsCagesFieldEn field = _TranslationsCagesFieldEn._(_root);
  @override
  late final _TranslationsCagesUnitsEn units = _TranslationsCagesUnitsEn._(_root);
  @override
  String get occupancy => 'Occupancy';
  @override
  String get occupied_label => 'Occupied';
  @override
  String get free_label => 'Free';
  @override
  String get birds_count_label => 'Birds';
  @override
  String capacity_hint({required Object Occupied}) => 'Currently occupied: ${Occupied}. Cannot be reduced below ${Occupied}.';
  @override
  String get capacity_missing_hint => 'Capacity not set — please enter a value';
  @override
  String get empty_badge => 'EMPTY';
  @override
  String places_occupied({required Object Occupied, required Object Capacity}) => '${Occupied}/${Capacity} places occupied';
  @override
  String get empty_filter => 'No cages for this filter';
  @override
  late final _TranslationsCagesFiltersEn filters = _TranslationsCagesFiltersEn._(_root);
  @override
  late final _TranslationsCagesTypesEn types = _TranslationsCagesTypesEn._(_root);
}

// Path: species
class _TranslationsSpeciesEn extends TranslationsSpeciesDe {
  _TranslationsSpeciesEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Species';
  @override
  String get add => 'Add species';
  @override
  String get edit => 'Edit species';
  @override
  String get select => 'Select species';
  @override
  String get delete => 'Delete species?';
  @override
  String get name => 'Species name';
  @override
  String get latin_name => 'Latin name';
  @override
  String get detail_title => 'Species';
  @override
  late final _TranslationsSpeciesSectionEn section = _TranslationsSpeciesSectionEn._(_root);
  @override
  String get incubation => 'Incubation';
  @override
  String get fledge => 'Fledging';
  @override
  String get days_short => 'd';
  @override
  String lifecycle_total({required Object Days}) => '${Days}d total';
  @override
  String get lifecycle_hint => 'Used automatically for hatch and fledge forecasts.';
  @override
  String lifecycle_label_total({required Object Total}) => '${Total} DAYS TOTAL';
  @override
  String get chick_until_fledge => 'Chick until fledging';
  @override
  String hatch_label({required Object Day}) => 'Hatch · D${Day}';
  @override
  String fledge_label({required Object Day}) => 'Fledging · D${Day}';
  @override
  String get latin_hint_example => 'e.g. Melopsittacus undulatus';
  @override
  String get latin_hint => 'Latin species name for precise identification.';
  @override
  String get endangered => 'Endangered species';
  @override
  String get endangered_hint => 'Marks species that are protected or considered endangered.';
  @override
  String get endangered_not => 'Not endangered';
  @override
  String get reportable => 'Subject to reporting';
  @override
  String get reportable_hint => 'Keeping this species must be reported to the authorities.';
  @override
  String get reportable_not => 'No reporting required';
  @override
  String get suggestions => 'Suggestions';
  @override
  String get incubation_found => 'Incubation period applied';
  @override
  String get incubation_missing => 'No incubation period found – please enter it yourself.';
  @override
  String get scientific_name => 'Scientific name';
  @override
  String get empty => 'No species';
  @override
  String get birds_in_stock => 'Birds in stock';
  @override
  String get no_birds => 'No birds';
  @override
  late final _TranslationsSpeciesStatsEn stats = _TranslationsSpeciesStatsEn._(_root);
  @override
  String stock_summary({required num count, required Object Count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(
        count,
        one: '${Count} bird in stock',
        other: '${Count} birds in stock',
      );
  @override
  String get already_added => 'Already added';
  @override
  String get duplicate_warning => 'A species with this name already exists.';
  @override
  String get image_remove => 'Remove image';
}

// Path: contacts
class _TranslationsContactsEn extends TranslationsContactsDe {
  _TranslationsContactsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String title({required Object Count}) => 'Contacts (${Count})';
  @override
  String get edit => 'Edit contact';
  @override
  String get create => 'Create contact';
  @override
  String get deleted => 'Contact deleted';
  @override
  String get saved => 'Contact saved';
  @override
  late final _TranslationsContactsFieldsEn fields = _TranslationsContactsFieldsEn._(_root);
  @override
  String get empty_list_information => 'There are no contacts yet. You can add contacts or import them from a CSV file.';
  @override
  String get import_button_text => 'Import contacts';
  @override
  String get add_contact_button_text => 'Add contact';
  @override
  String get delete => 'Delete contact?';
  @override
  String get add => 'Add contact?';
  @override
  String get select => 'Select contact';
  @override
  late final _TranslationsContactsSectionsEn sections = _TranslationsContactsSectionsEn._(_root);
  @override
  late final _TranslationsContactsActionButtonEn action_button = _TranslationsContactsActionButtonEn._(_root);
  @override
  late final _TranslationsContactsOverviewEn overview = _TranslationsContactsOverviewEn._(_root);
  @override
  late final _TranslationsContactsCardEn card = _TranslationsContactsCardEn._(_root);
  @override
  late final _TranslationsContactsDetailEn detail = _TranslationsContactsDetailEn._(_root);
}

// Path: breeding_pairs
class _TranslationsBreedingPairsEn extends TranslationsBreedingPairsDe {
  _TranslationsBreedingPairsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Breeding pair';
  @override
  String get add => 'Add breeding pair';
  @override
  String get edit => 'Edit breeding pair';
  @override
  String get delete => 'Delete breeding pair?';
  @override
  late final _TranslationsBreedingPairsStatusEn status = _TranslationsBreedingPairsStatusEn._(_root);
  @override
  String get start_date => 'Start date';
  @override
  String get end_date => 'End date';
  @override
  String get notes => 'Notes';
  @override
  late final _TranslationsBreedingPairsYearFilterEn year_filter = _TranslationsBreedingPairsYearFilterEn._(_root);
  @override
  late final _TranslationsBreedingPairsFilterEn filter = _TranslationsBreedingPairsFilterEn._(_root);
  @override
  String get pair_one => 'Pair';
  @override
  String get pair_other => 'Pairs';
  @override
  String cages_count({required Object Count}) => '${Count} cages';
  @override
  String active_broods_one({required Object Count}) => '${Count} active brood';
  @override
  String active_broods_other({required Object Count}) => '${Count} active broods';
  @override
  String broods_total_one({required Object Count}) => '${Count} brood';
  @override
  String broods_total_other({required Object Count}) => '${Count} broods';
  @override
  late final _TranslationsBreedingPairsBroodStatusEn brood_status = _TranslationsBreedingPairsBroodStatusEn._(_root);
  @override
  String get finished_tag => 'FINISHED';
  @override
  String get no_cage => 'No cage';
  @override
  String since({required Object Date}) => 'since ${Date}';
  @override
  String until({required Object Date}) => 'until ${Date}';
  @override
  String empty_for_year({required Object Year}) => 'No breeding pairs in ${Year}.';
  @override
  String get empty => 'No breeding pairs.';
  @override
  String get search_hint => 'Search ring, cage …';
  @override
  late final _TranslationsBreedingPairsSortByEn sort_by = _TranslationsBreedingPairsSortByEn._(_root);
  @override
  late final _TranslationsBreedingPairsStatsEn stats = _TranslationsBreedingPairsStatsEn._(_root);
}

// Path: resources
class _TranslationsResourcesEn extends TranslationsResourcesDe {
  _TranslationsResourcesEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Resources';
  @override
  String usage_count({required num count, required Object N}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(
        count,
        zero: 'Not used by any bird',
        one: 'Used by one bird',
        other: 'Used by ${N} birds',
      );
  @override
  String get no_search_results => 'Nothing found, tap "Add" to create a new entry.';
  @override
  late final _TranslationsResourcesSectionEn section = _TranslationsResourcesSectionEn._(_root);
  @override
  late final _TranslationsResourcesActionsEn actions = _TranslationsResourcesActionsEn._(_root);
  @override
  late final _TranslationsResourcesColorPickerEn color_picker = _TranslationsResourcesColorPickerEn._(_root);
  @override
  late final _TranslationsResourcesFieldEn field = _TranslationsResourcesFieldEn._(_root);
  @override
  late final _TranslationsResourcesDeleteEn delete = _TranslationsResourcesDeleteEn._(_root);
  @override
  late final _TranslationsResourcesSortEn sort = _TranslationsResourcesSortEn._(_root);
}

// Path: birds
class _TranslationsBirdsEn extends TranslationsBirdsDe {
  _TranslationsBirdsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Birds';
  @override
  late final _TranslationsBirdsOverviewEn overview = _TranslationsBirdsOverviewEn._(_root);
  @override
  late final _TranslationsBirdsFilterEn filter = _TranslationsBirdsFilterEn._(_root);
}

// Path: pedigree
class _TranslationsPedigreeEn extends TranslationsPedigreeDe {
  _TranslationsPedigreeEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Pedigree';
  @override
  String get subtitle => 'Ancestry chart';
  @override
  String get col_bird => 'Bird';
  @override
  String get col_parents => 'Parents';
  @override
  String get col_grandparents => 'Grandparents';
  @override
  String get col_greatgrandparents => 'Great-grandparents';
  @override
  String get col_ancestors => 'Ancestors';
  @override
  String get section_ancestors => 'Ancestors';
  @override
  String get section_descendants => 'Descendants';
  @override
  String get no_descendants => 'No descendants recorded';
  @override
  String get unknown => 'Unknown';
  @override
  String get assign_parent => 'Assign parent';
  @override
  String get add_father => 'Add father';
  @override
  String get add_mother => 'Add mother';
  @override
  String get common_ancestor => 'Common ancestor (inbreeding)';
  @override
  String get sold => 'Sold';
  @override
  String get not_own => 'Not owned';
  @override
  String get deceased => 'Deceased';
  @override
  String get share => 'Share';
  @override
  String share_filename({required Object Ring}) => 'pedigree_${Ring}';
  @override
  String get depth => 'Depth';
  @override
  String get depth_all => 'All';
  @override
  String get inbreeding_explainer => 'These birds are related through both the paternal and the maternal line.';
  @override
  String get via_father => 'via father';
  @override
  String get via_mother => 'via mother';
  @override
  late final _TranslationsPedigreeStatsEn stats = _TranslationsPedigreeStatsEn._(_root);
  @override
  String get swipe_hint => 'Swipe for a better overview';
}

// Path: inbreeding
class _TranslationsInbreedingEn extends TranslationsInbreedingDe {
  _TranslationsInbreedingEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get coefficient => 'Inbreeding coefficient';
  @override
  String get coefficient_short => 'F';
  @override
  String get severity_none => 'No inbreeding';
  @override
  String get severity_low => 'Low';
  @override
  String get severity_elevated => 'Elevated';
  @override
  String get severity_high => 'High';
  @override
  String get common_ancestors_one => '1 common ancestor';
  @override
  String common_ancestors_other({required Object Count}) => '${Count} common ancestors';
  @override
  String get path_contribution => 'Contribution';
  @override
  String banner_label({required Object Percent}) => 'Inbreeding coefficient: ${Percent}';
  @override
  String get pair_warning_title => 'Inbreeding warning';
  @override
  String pair_warning_body({required Object Percent, required Object Severity}) =>
      'Pairing these birds results in an inbreeding coefficient of ${Percent} (${Severity}). Create anyway?';
  @override
  String get proceed_anyway => 'Create anyway';
}

// Path: bird
class _TranslationsBirdEn extends TranslationsBirdDe {
  _TranslationsBirdEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Bird';
  @override
  String get edit => 'Edit bird';
  @override
  String get deleted => 'Bird deleted';
  @override
  String get saved => 'Bird saved';
  @override
  String get delete => 'Delete bird?';
  @override
  String get duplicate => 'Duplicate bird';
  @override
  String get add => 'Add bird';
  @override
  String get select_color_label => 'Select color';
  @override
  String get select_species_label => 'Select species';
  @override
  String get select_cage_label => 'Select aviary';
  @override
  String get select_owner_label => 'Select owner';
  @override
  String get select_sold_to_label => 'Select buyer';
  @override
  String get select_bought_from_label => 'Select seller';
  @override
  String created_information({required Object DateTimeDate, required Object Time}) => 'Created on ${DateTimeDate} at ${Time}';
  @override
  late final _TranslationsBirdTabsEn tabs = _TranslationsBirdTabsEn._(_root);
  @override
  late final _TranslationsBirdSummaryEn summary = _TranslationsBirdSummaryEn._(_root);
  @override
  late final _TranslationsBirdSectionsEn sections = _TranslationsBirdSectionsEn._(_root);
}

// Path: pair_detail
class _TranslationsPairDetailEn extends TranslationsPairDetailDe {
  _TranslationsPairDetailEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get father_label => '♂ FATHER';
  @override
  String get mother_label => '♀ MOTHER';
  @override
  String get current_brood => 'Current brood';
  @override
  String get history => 'History';
  @override
  String history_count_one({required Object Count}) => '${Count} brood';
  @override
  String history_count_other({required Object Count}) => '${Count} broods';
  @override
  String get brood_short => 'BROOD';
  @override
  String day({required Object Day}) => 'Day ${Day}';
  @override
  String start_label({required Object Date}) => 'Start: ${Date}';
  @override
  String get no_current_brood => 'No active brood';
  @override
  late final _TranslationsPairDetailKpiEn kpi = _TranslationsPairDetailKpiEn._(_root);
  @override
  String get new_brood => 'New brood';
  @override
  String since({required Object Date}) => 'since ${Date}';
}

// Path: brood
class _TranslationsBroodEn extends TranslationsBroodDe {
  _TranslationsBroodEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Clutch';
  @override
  String get overview => 'Brood overview';
  @override
  String get latest => 'Latest brood';
  @override
  String get add => 'Add clutch';
  @override
  String get delete => 'Delete clutch?';
  @override
  String get edit => 'Edit clutch';
  @override
  String get empty => 'No clutch added yet';
  @override
  String since({required Object Date}) => 'Since ${Date}';
  @override
  String eggs_count({required num count, required Object Count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(
        count,
        zero: 'No eggs',
        one: '1 egg',
        other: '${Count} eggs',
      );
  @override
  late final _TranslationsBroodKpiEn kpi = _TranslationsBroodKpiEn._(_root);
  @override
  String hatched_count({required num count, required Object Count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(
        count,
        zero: 'None hatched',
        one: '1 hatched',
        other: '${Count} hatched',
      );
  @override
  String fledged_count({required num count, required Object Count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(
        count,
        zero: 'None fledged',
        one: '1 fledged',
        other: '${Count} fledged',
      );
  @override
  String get notes => 'Notes (optional)';
  @override
  String created_information({required Object DateTimeDate, required Object Time}) => 'Created on ${DateTimeDate} at ${Time}';
}

// Path: egg
class _TranslationsEggEn extends TranslationsEggDe {
  _TranslationsEggEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Egg';
  @override
  String get add => 'Add egg';
  @override
  late final _TranslationsEggStatusEn status = _TranslationsEggStatusEn._(_root);
  @override
  late final _TranslationsEggActionEn action = _TranslationsEggActionEn._(_root);
  @override
  String get pick_laid_date => 'Select date laid';
  @override
  String get pick_fledged_date => 'Select date fledged';
  @override
  String get pick_hatched_date => 'Select date hatched';
  @override
  String get pick_fertilized_date => 'Select date fertilized';
  @override
  String get pick_unfertilized_date => 'Select date determined unfertilized';
  @override
  String get pick_died_date => 'Select date of death';
  @override
  String get in_stock => 'In stock';
  @override
  late final _TranslationsEggLifecycleEn lifecycle = _TranslationsEggLifecycleEn._(_root);
}

// Path: common
class _TranslationsCommonEn extends TranslationsCommonDe {
  _TranslationsCommonEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsCommonBottomSheetEn bottom_sheet = _TranslationsCommonBottomSheetEn._(_root);
  @override
  late final _TranslationsCommonSaleStatusEn sale_status = _TranslationsCommonSaleStatusEn._(_root);
  @override
  String get all_label => 'All';
  @override
  String get more_label => 'More';
  @override
  String get less_label => 'Less';
  @override
  String get search => 'Search';
  @override
  String get search_hint => 'Search ...';
  @override
  String countbird({required num count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(
        count,
        zero: 'No birds',
        one: '1 bird',
        other: '{count} birds',
      );
  @override
  String get optional => 'Optional';
  @override
  String get apply => 'Apply';
  @override
  String get reset => 'Reset';
  @override
  String get add => 'Add';
  @override
  String get close => 'Close';
  @override
  String get cancel => 'Cancel';
  @override
  String get ok => 'Ok';
  @override
  late final _TranslationsCommonSexEn sex = _TranslationsCommonSexEn._(_root);
  @override
  late final _TranslationsCommonSellEn sell = _TranslationsCommonSellEn._(_root);
  @override
  late final _TranslationsCommonBoughtEn bought = _TranslationsCommonBoughtEn._(_root);
  @override
  String eggs_short({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(
        n,
        one: 'Egg',
        other: 'Eggs',
      );
  @override
  String get laid_short => 'laid';
  @override
  String get fertilzed_short => 'fert.';
  @override
  String get hatched_short => 'hatch.';
  @override
  String get fledged_short => 'fledg.';
  @override
  String get died_short => 'died';
  @override
  late final _TranslationsCommonSortingEn sorting = _TranslationsCommonSortingEn._(_root);
  @override
  String get something_went_wrong => 'Oops, something went wrong.';
  @override
  String get save => 'Save';
  @override
  String get general => 'General';
  @override
  String get ringnumber => 'Ring number';
  @override
  String get notes => 'Notes';
  @override
  String get clutches => 'Clutches';
  @override
  String get laid => 'Laid';
  @override
  String get fertilzed => 'Fertilized';
  @override
  String get hatched => 'Hatched';
  @override
  String get fledged => 'Fledged';
  @override
  String get origin => 'Origin';
  @override
  String get species => 'Species';
  @override
  String get color => 'Color';
  @override
  String get cage => 'Aviary';
  @override
  String get owner => 'Owner';
  @override
  late final _TranslationsCommonSoldEn sold = _TranslationsCommonSoldEn._(_root);
  @override
  String get gender => 'Sex';
  @override
  String get died_at => 'Date of death';
  @override
  String get born_at => 'Date of birth';
  @override
  String get father => 'Father';
  @override
  String get mother => 'Mother';
  @override
  String get partner => 'Partner';
  @override
  String get is_for_sale => 'For sale';
  @override
  String get yes => 'Yes';
  @override
  String get no => 'No';
  @override
  late final _TranslationsCommonUnitEn unit = _TranslationsCommonUnitEn._(_root);
  @override
  String get email => 'Email';
  @override
  String get password => 'Password';
  @override
  late final _TranslationsCommonHintEn hint = _TranslationsCommonHintEn._(_root);
  @override
  String get required => 'This field is required';
}

// Path: auth
class _TranslationsAuthEn extends TranslationsAuthDe {
  _TranslationsAuthEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get sign_in => 'Sign in';
  @override
  String get sign_up => 'Sign up';
  @override
  String get confirm_password => 'Confirm password';
  @override
  String get passwords_do_not_match => 'Passwords do not match';
  @override
  String get create_account => 'Create account';
  @override
  String get first_name => 'First name';
  @override
  String get last_name => 'Last name';
  @override
  String get sign_in_text => 'Sign in to continue. If you don\'t have an account yet, you can create one. Just switch to the "Create account" tab.';
  @override
  String get sign_up_text =>
      'Create an account to continue. If you already have an account, you can simply sign in. Just switch to the "Sign in" tab.';
  @override
  late final _TranslationsAuthValidatorsEn validators = _TranslationsAuthValidatorsEn._(_root);
}

// Path: csv_import
class _TranslationsCsvImportEn extends TranslationsCsvImportDe {
  _TranslationsCsvImportEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'CSV import';
  @override
  String get select_type => 'Choose what you want to import:';
  @override
  String get back => 'Back';
  @override
  String get select_file => 'Select CSV file';
  @override
  String get cancel => 'Cancel';
  @override
  String get new_import => 'New import';
  @override
  String get retry => 'Try again';
  @override
  String reading({required Object FileName}) => 'Reading "${FileName}"...';
  @override
  String importing({required Object ItemName}) => 'Importing ${ItemName}...';
  @override
  String progress({required Object Current, required Object Total}) => '${Current} of ${Total}';
  @override
  String get completed => 'Import completed';
  @override
  late final _TranslationsCsvImportBirdsEn birds = _TranslationsCsvImportBirdsEn._(_root);
  @override
  late final _TranslationsCsvImportContactsEn contacts = _TranslationsCsvImportContactsEn._(_root);
  @override
  late final _TranslationsCsvImportColumnsEn columns = _TranslationsCsvImportColumnsEn._(_root);
  @override
  late final _TranslationsCsvImportPreviewEn preview = _TranslationsCsvImportPreviewEn._(_root);
  @override
  late final _TranslationsCsvImportTableEn table = _TranslationsCsvImportTableEn._(_root);
  @override
  late final _TranslationsCsvImportStatusEn status = _TranslationsCsvImportStatusEn._(_root);
  @override
  late final _TranslationsCsvImportSummaryEn summary = _TranslationsCsvImportSummaryEn._(_root);
  @override
  late final _TranslationsCsvImportErrorsEn errors = _TranslationsCsvImportErrorsEn._(_root);
}

// Path: menu
class _TranslationsMenuEn extends TranslationsMenuDe {
  _TranslationsMenuEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsMenuSectionsEn sections = _TranslationsMenuSectionsEn._(_root);
  @override
  late final _TranslationsMenuBirdsEn birds = _TranslationsMenuBirdsEn._(_root);
  @override
  late final _TranslationsMenuContactsEn contacts = _TranslationsMenuContactsEn._(_root);
  @override
  late final _TranslationsMenuBreedingsEn breedings = _TranslationsMenuBreedingsEn._(_root);
  @override
  late final _TranslationsMenuResourcesEn resources = _TranslationsMenuResourcesEn._(_root);
  @override
  late final _TranslationsMenuFinancesEn finances = _TranslationsMenuFinancesEn._(_root);
  @override
  late final _TranslationsMenuCsvImportEn csv_import = _TranslationsMenuCsvImportEn._(_root);
  @override
  late final _TranslationsMenuAccountEn account = _TranslationsMenuAccountEn._(_root);
  @override
  late final _TranslationsMenuSpeciesEn species = _TranslationsMenuSpeciesEn._(_root);
  @override
  late final _TranslationsMenuCagesEn cages = _TranslationsMenuCagesEn._(_root);
  @override
  late final _TranslationsMenuColorsEn colors = _TranslationsMenuColorsEn._(_root);
  @override
  late final _TranslationsMenuFinanceCategoriesEn finance_categories = _TranslationsMenuFinanceCategoriesEn._(_root);
  @override
  String get add_bird => 'Add bird';
}

// Path: error
class _TranslationsErrorEn extends TranslationsErrorDe {
  _TranslationsErrorEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get message => 'Sorry, an error occurred';
}

// Path: dialog
class _TranslationsDialogEn extends TranslationsDialogDe {
  _TranslationsDialogEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsDialogDiscardChangesEn discard_changes = _TranslationsDialogDiscardChangesEn._(_root);
  @override
  late final _TranslationsDialogDeleteEntryEn delete_entry = _TranslationsDialogDeleteEntryEn._(_root);
}

// Path: pop_up_menu
class _TranslationsPopUpMenuEn extends TranslationsPopUpMenuDe {
  _TranslationsPopUpMenuEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get open => 'Open';
  @override
  String get edit => 'Edit';
  @override
  String get show => 'Show';
  @override
  String get pedigree => 'Pedigree';
  @override
  String get documents => 'Documents';
  @override
  String get set_ringnumber => 'Set ring number';
  @override
  String get set_color => 'Set color';
  @override
  String get add_to_stock => 'Add to stock';
  @override
  String get duplicate => 'Duplicate';
  @override
  String get delete => 'Delete';
}

// Path: export
class _TranslationsExportEn extends TranslationsExportDe {
  _TranslationsExportEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Export';
  @override
  String get action => 'Export';
  @override
  String get scope_hint => 'Exactly the list currently shown is exported.';
  @override
  String get file_name_label => 'File name';
  @override
  String get empty => 'There is nothing to export.';
  @override
  late final _TranslationsExportEventsEn events = _TranslationsExportEventsEn._(_root);
  @override
  String get row_count_one => '1 entry';
  @override
  String row_count_other({required Object Count}) => '${Count} entries';
  @override
  late final _TranslationsExportFormatEn format = _TranslationsExportFormatEn._(_root);
  @override
  late final _TranslationsExportPresetEn preset = _TranslationsExportPresetEn._(_root);
  @override
  late final _TranslationsExportPdfEn pdf = _TranslationsExportPdfEn._(_root);
  @override
  late final _TranslationsExportHeaderEn header = _TranslationsExportHeaderEn._(_root);
  @override
  String get profile_label => 'Letterhead';
  @override
  late final _TranslationsExportSummaryEn summary = _TranslationsExportSummaryEn._(_root);
  @override
  late final _TranslationsExportListsEn lists = _TranslationsExportListsEn._(_root);
  @override
  late final _TranslationsExportFileNamesEn file_names = _TranslationsExportFileNamesEn._(_root);
  @override
  late final _TranslationsExportPresetsEn presets = _TranslationsExportPresetsEn._(_root);
  @override
  late final _TranslationsExportColumnsEn columns = _TranslationsExportColumnsEn._(_root);
}

// Path: documents
class _TranslationsDocumentsEn extends TranslationsDocumentsDe {
  _TranslationsDocumentsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Create document';
  @override
  String get action => 'Create';
  @override
  String get type_label => 'Document';
  @override
  late final _TranslationsDocumentsTypesEn types = _TranslationsDocumentsTypesEn._(_root);
  @override
  late final _TranslationsDocumentsProfileEn profile = _TranslationsDocumentsProfileEn._(_root);
  @override
  late final _TranslationsDocumentsPedigreeEn pedigree = _TranslationsDocumentsPedigreeEn._(_root);
  @override
  late final _TranslationsDocumentsReceiptEn receipt = _TranslationsDocumentsReceiptEn._(_root);
}

// Path: snackbars
class _TranslationsSnackbarsEn extends TranslationsSnackbarsDe {
  _TranslationsSnackbarsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get sign_in_failed => 'Sign-in failed, please check your credentials and your internet connection.';
  @override
  String get sign_up_failed => 'Sign-up failed, please check your input and your internet connection.';
  @override
  String get sign_up_success => 'Sign-up successful, you will be signed in automatically.';
}

// Path: finances.categories
class _TranslationsFinancesCategoriesEn extends TranslationsFinancesCategoriesDe {
  _TranslationsFinancesCategoriesEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Categories';
  @override
  String get category => 'Category';
  @override
  String get add => 'Add category';
  @override
  String get edit => 'Edit category';
  @override
  String get select => 'Select category';
  @override
  String get delete => 'Delete category?';
  @override
  String get name => 'Category name';
  @override
  String get color => 'Category color';
  @override
  String get description => 'Description';
  @override
  String get list_title => 'Categories';
  @override
  String get designation => 'Label';
  @override
  String get bookings => 'Transactions';
  @override
  late final _TranslationsFinancesCategoriesFiltersEn filters = _TranslationsFinancesCategoriesFiltersEn._(_root);
  @override
  late final _TranslationsFinancesCategoriesGroupsEn groups = _TranslationsFinancesCategoriesGroupsEn._(_root);
  @override
  late final _TranslationsFinancesCategoriesKindSingularEn kind_singular = _TranslationsFinancesCategoriesKindSingularEn._(_root);
  @override
  late final _TranslationsFinancesCategoriesPillEn pill = _TranslationsFinancesCategoriesPillEn._(_root);
  @override
  String get empty => 'No categories';
  @override
  String type_lock_hint({required Object Usage}) => 'Type cannot be changed after creation — ${Usage} transactions linked.';
  @override
  String get type_lock_default => 'Selects the calculation sign for transactions.';
  @override
  String get detail_title => 'Finance category';
  @override
  late final _TranslationsFinancesCategoriesDetailEn detail = _TranslationsFinancesCategoriesDetailEn._(_root);
  @override
  late final _TranslationsFinancesCategoriesMonthsShortEn months_short = _TranslationsFinancesCategoriesMonthsShortEn._(_root);
}

// Path: finances.add
class _TranslationsFinancesAddEn extends TranslationsFinancesAddDe {
  _TranslationsFinancesAddEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Add entry';
  @override
  String get title => 'Subject';
  @override
  String get date => 'Date';
  @override
  String get category => 'Select category';
  @override
  String get amount => 'Enter amount';
  @override
  String get amount_invalid => 'Please enter a valid amount';
  @override
  String get notes => 'Description';
  @override
  String get bird => 'Related bird';
}

// Path: finances.kind
class _TranslationsFinancesKindEn extends TranslationsFinancesKindDe {
  _TranslationsFinancesKindEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Type';
  @override
  String get income => 'Income';
  @override
  String get expense => 'Expenses';
}

// Path: finances.summary
class _TranslationsFinancesSummaryEn extends TranslationsFinancesSummaryDe {
  _TranslationsFinancesSummaryEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get net => 'Balance';
  @override
  String get net_label => 'NET';
  @override
  String get today => 'TODAY';
  @override
  String get income_label => 'INCOME';
  @override
  String get expense_label => 'EXPENSES';
}

// Path: finances.view
class _TranslationsFinancesViewEn extends TranslationsFinancesViewDe {
  _TranslationsFinancesViewEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'All';
  @override
  String get today => 'Today';
  @override
  String get yesterday => 'Yesterday';
  @override
  String get search_hint => 'Search transaction …';
  @override
  String get empty => 'No transactions in this period';
  @override
  String get categories_filter_title => 'Filter by category';
  @override
  String get all_categories => 'All categories';
  @override
  String get filter_button => 'Filter';
  @override
  String get filter_sheet_title => 'Filter categories';
  @override
  String get filter_clear_all => 'Deselect all';
  @override
  String get filter_apply => 'Apply';
  @override
  String get filter_search_hint => 'Search category …';
}

// Path: finances.scope
class _TranslationsFinancesScopeEn extends TranslationsFinancesScopeDe {
  _TranslationsFinancesScopeEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get month => 'Month';
  @override
  String get year => 'Year';
  @override
  String get all => 'All';
  @override
  String get custom => 'Period';
  @override
  String get current_year => 'THIS YEAR';
  @override
  String get from_short => 'From';
  @override
  String get to_short => 'To';
  @override
  String get pick_date => 'Pick date';
}

// Path: finances.filter
class _TranslationsFinancesFilterEn extends TranslationsFinancesFilterDe {
  _TranslationsFinancesFilterEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get bird => 'Bird';
  @override
  String get date_range => 'Period';
  @override
  String get from => 'From';
  @override
  String get to => 'To';
  @override
  String get all_years => 'All';
}

// Path: finances.sorting
class _TranslationsFinancesSortingEn extends TranslationsFinancesSortingDe {
  _TranslationsFinancesSortingEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get date_desc => 'Date (new → old)';
  @override
  String get date_asc => 'Date (old → new)';
  @override
  String get amount_desc => 'Amount (high → low)';
  @override
  String get amount_asc => 'Amount (low → high)';
}

// Path: account.switch_to_local_dialog
class _TranslationsAccountSwitchToLocalDialogEn extends TranslationsAccountSwitchToLocalDialogDe {
  _TranslationsAccountSwitchToLocalDialogEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Switch to local mode';
  @override
  String get content =>
      'All your data will be copied from the server into the local database. The app then restarts in local mode.\n\nDo you want to continue?';
  @override
  String get confirm => 'Switch';
}

// Path: account.local_mode
class _TranslationsAccountLocalModeEn extends TranslationsAccountLocalModeDe {
  _TranslationsAccountLocalModeEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Local mode';
  @override
  String get description => 'All data is stored locally on this device.';
}

// Path: account.appearance
class _TranslationsAccountAppearanceEn extends TranslationsAccountAppearanceDe {
  _TranslationsAccountAppearanceEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Appearance';
  @override
  String get system => 'System';
  @override
  String get light => 'Light';
  @override
  String get dark => 'Dark';
}

// Path: account.language
class _TranslationsAccountLanguageEn extends TranslationsAccountLanguageDe {
  _TranslationsAccountLanguageEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Language';
  @override
  String get system => 'System language';
  @override
  String get sheet_title => 'Choose language';
}

// Path: account.currency
class _TranslationsAccountCurrencyEn extends TranslationsAccountCurrencyDe {
  _TranslationsAccountCurrencyEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Currency';
  @override
  String get sheet_title => 'Choose currency';
  @override
  String get hint => 'Amounts are only relabelled, not converted.';
}

// Path: account.profile
class _TranslationsAccountProfileEn extends TranslationsAccountProfileDe {
  _TranslationsAccountProfileEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String breeder_number({required Object Value}) => 'Breeder number ${Value}';
  @override
  String get no_contact => 'No profile contact set';
  @override
  String get edit => 'Edit profile';
}

// Path: account.user
class _TranslationsAccountUserEn extends TranslationsAccountUserDe {
  _TranslationsAccountUserEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String email({required Object Value}) => 'Email: ${Value}';
  @override
  String first_name({required Object Value}) => 'First name: ${Value}';
  @override
  String last_name({required Object Value}) => 'Last name: ${Value}';
}

// Path: account.events
class _TranslationsAccountEventsEn extends TranslationsAccountEventsDe {
  _TranslationsAccountEventsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String switch_failed({required Object Error}) => 'Switch failed: ${Error}';
  @override
  String switched_to_local({required num count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(
        count,
        one: '1 entry transferred. Local mode active.',
        other: '{count} entries transferred. Local mode active.',
      );
}

// Path: backup.external
class _TranslationsBackupExternalEn extends TranslationsBackupExternalDe {
  _TranslationsBackupExternalEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get never => 'Never backed up externally';
  @override
  String get today => 'Last external backup: today';
  @override
  String days_ago({required num count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(
        count,
        one: 'Last external backup: 1 day ago',
        other: 'Last external backup: {count} days ago',
      );
}

// Path: backup.actions
class _TranslationsBackupActionsEn extends TranslationsBackupActionsDe {
  _TranslationsBackupActionsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get share_latest => 'Share latest backup';
  @override
  String get create_now => 'Create backup now';
  @override
  String get create_and_save => 'Create & save backup';
  @override
  String get restore => 'Restore backup';
  @override
  String get manage => 'Manage all backups…';
  @override
  String get kNew => 'New';
}

// Path: backup.restore_sheet
class _TranslationsBackupRestoreSheetEn extends TranslationsBackupRestoreSheetDe {
  _TranslationsBackupRestoreSheetEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Select backup';
  @override
  String get available => 'Available backups';
  @override
  String get kind_cloud => 'CLOUD';
  @override
  String get kind_manual => 'MANUAL';
  @override
  String get pick_file_title => 'Pick file from device';
  @override
  String get pick_file_sub => 'Select a .zip backup manually';
  @override
  String get empty => 'No backups found';
  @override
  String get choose_folder_first => 'Choose a cloud folder first';
  @override
  String get confirm_title => 'Restore backup?';
  @override
  String warning({required Object Name}) =>
      'Your current data on this device will be replaced by this state. Changes newer than “${Name}” will be lost.';
  @override
  String get confirm_button => 'Yes, replace and restore';
  @override
  String get restoring => 'Restoring …';
  @override
  String get back => 'Back';
}

// Path: backup.menu
class _TranslationsBackupMenuEn extends TranslationsBackupMenuDe {
  _TranslationsBackupMenuEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get share => 'Share';
  @override
  String get restore => 'Restore';
  @override
  String get delete => 'Delete';
}

// Path: backup.delete_dialog
class _TranslationsBackupDeleteDialogEn extends TranslationsBackupDeleteDialogDe {
  _TranslationsBackupDeleteDialogEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Delete backup?';
  @override
  String get confirm => 'Delete';
}

// Path: backup.restore_dialog
class _TranslationsBackupRestoreDialogEn extends TranslationsBackupRestoreDialogDe {
  _TranslationsBackupRestoreDialogEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Restore backup';
  @override
  String get content_picked => 'Current local data will be overwritten with the selected backup. Continue?';
  @override
  String content_named({required Object Name}) => 'Current local data will be overwritten with the backup\n"${Name}".\n\nContinue?';
  @override
  String get confirm => 'Restore';
}

// Path: backup.reminder
class _TranslationsBackupReminderEn extends TranslationsBackupReminderDe {
  _TranslationsBackupReminderEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Save backup';
  @override
  String get never => 'You have not saved an external backup yet.';
  @override
  String age({required num count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(
        count,
        one: 'Your last external backup was 1 day ago.',
        other: 'Your last external backup was {count} days ago.',
      );
  @override
  String get body => 'Save it now in a safe place (iCloud, Drive, mail) so your data is not lost if you lose your device.';
  @override
  String get snooze => 'Remind me later';
  @override
  String get already_saved => 'Already saved';
  @override
  String get share_now => 'Share now';
  @override
  String get cloud_hint =>
      'Alternatively you can turn on automatic cloud backup – every snapshot is then uploaded to your cloud without you doing anything.';
  @override
  String get setup_cloud => 'Set up cloud';
}

// Path: backup.events
class _TranslationsBackupEventsEn extends TranslationsBackupEventsDe {
  _TranslationsBackupEventsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get created => 'Backup created';
  @override
  String create_failed({required Object Error}) => 'Backup failed: ${Error}';
  @override
  String share_failed({required Object Error}) => 'Sharing failed: ${Error}';
  @override
  String delete_failed({required Object Error}) => 'Deleting failed: ${Error}';
  @override
  String restore_failed({required Object Error}) => 'Restoring failed: ${Error}';
}

// Path: backup.cloud
class _TranslationsBackupCloudEn extends TranslationsBackupCloudDe {
  _TranslationsBackupCloudEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get section_title => 'Cloud backup';
  @override
  String get enable => 'Back up to cloud automatically';
  @override
  String get choose_location => 'Choose cloud folder…';
  @override
  String get location_none => 'No cloud folder selected';
  @override
  String location_set({required Object Name}) => 'Target: ${Name}';
  @override
  String get sync_now => 'Sync now';
  @override
  String get auto_title => 'Automatic cloud backup';
  @override
  String get auto_on => 'Active · backs up your data automatically';
  @override
  String get auto_off => 'Disabled';
  @override
  String get folder_label => 'Cloud folder';
  @override
  String get change => 'Change';
  @override
  late final _TranslationsBackupCloudChooseFolderDialogEn choose_folder_dialog = _TranslationsBackupCloudChooseFolderDialogEn._(_root);
  @override
  late final _TranslationsBackupCloudSyncAfterChangeDialogEn sync_after_change_dialog = _TranslationsBackupCloudSyncAfterChangeDialogEn._(_root);
  @override
  String get last_sync_label => 'Last sync';
  @override
  String get syncing => 'Syncing …';
  @override
  String get syncing_hint => 'Your photos and data are being uploaded to the cloud.';
  @override
  String get settings => 'Sync settings';
  @override
  late final _TranslationsBackupCloudIntervalEn interval = _TranslationsBackupCloudIntervalEn._(_root);
  @override
  late final _TranslationsBackupCloudStatusEn status = _TranslationsBackupCloudStatusEn._(_root);
  @override
  late final _TranslationsBackupCloudEventsEn events = _TranslationsBackupCloudEventsEn._(_root);
}

// Path: colors.stats
class _TranslationsColorsStatsEn extends TranslationsColorsStatsDe {
  _TranslationsColorsStatsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get birds => 'Birds';
  @override
  String get male_roosters => 'Cocks';
  @override
  String get female_hens => 'Hens';
}

// Path: cages.section
class _TranslationsCagesSectionEn extends TranslationsCagesSectionDe {
  _TranslationsCagesSectionEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get basics => 'Basics';
  @override
  String get capacity => 'Capacity & occupancy';
}

// Path: cages.field
class _TranslationsCagesFieldEn extends TranslationsCagesFieldDe {
  _TranslationsCagesFieldEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get type => 'Type';
  @override
  String get location => 'Location';
  @override
  String get max_capacity => 'Maximum places';
}

// Path: cages.units
class _TranslationsCagesUnitsEn extends TranslationsCagesUnitsDe {
  _TranslationsCagesUnitsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get birds => 'birds';
}

// Path: cages.filters
class _TranslationsCagesFiltersEn extends TranslationsCagesFiltersDe {
  _TranslationsCagesFiltersEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'All';
  @override
  String get aviaries => 'Aviaries';
  @override
  String get breeding_boxes => 'Breeding boxes';
  @override
  String get quarantine => 'Quarantine';
  @override
  String get empty => 'Empty';
}

// Path: cages.types
class _TranslationsCagesTypesEn extends TranslationsCagesTypesDe {
  _TranslationsCagesTypesEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get aviary => 'Aviary';
  @override
  String get breeding_box => 'Breeding box';
  @override
  String get quarantine => 'Quarantine';
}

// Path: species.section
class _TranslationsSpeciesSectionEn extends TranslationsSpeciesSectionDe {
  _TranslationsSpeciesSectionEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get identity => 'Identity';
  @override
  String get lifecycle => 'Life cycle';
  @override
  String get icon => 'Icon';
  @override
  String get notes => 'Notes';
}

// Path: species.stats
class _TranslationsSpeciesStatsEn extends TranslationsSpeciesStatsDe {
  _TranslationsSpeciesStatsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get stock => 'In stock';
  @override
  String get male_roosters => 'Cocks';
  @override
  String get female_hens => 'Hens';
}

// Path: contacts.fields
class _TranslationsContactsFieldsEn extends TranslationsContactsFieldsDe {
  _TranslationsContactsFieldsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get first_name => 'First name';
  @override
  String get last_name => 'Last name';
  @override
  late final _TranslationsContactsFieldsTitleEn title = _TranslationsContactsFieldsTitleEn._(_root);
  @override
  late final _TranslationsContactsFieldsAppUserEn app_user = _TranslationsContactsFieldsAppUserEn._(_root);
  @override
  String get email => 'Email';
  @override
  String get number => 'Breeder number';
  @override
  String get phone => 'Phone number';
  @override
  String get cell_phone_number => 'Mobile number';
  @override
  String get address => 'Address';
  @override
  String get city => 'City';
  @override
  String get country => 'Country';
  @override
  String get postal => 'Postal code';
  @override
  String get website => 'Website';
}

// Path: contacts.sections
class _TranslationsContactsSectionsEn extends TranslationsContactsSectionsDe {
  _TranslationsContactsSectionsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get personal => 'Personal information';
  @override
  String get app_user => 'App user';
  @override
  String get breeder => 'Breeder information';
  @override
  String get contact => 'Contact information';
  @override
  String get address => 'Address';
  @override
  String get meta => 'Metadata';
}

// Path: contacts.action_button
class _TranslationsContactsActionButtonEn extends TranslationsContactsActionButtonDe {
  _TranslationsContactsActionButtonEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get open_website_tooltipp => 'Open website';
  @override
  String get send_email_tooltipp => 'Write email';
  @override
  String get call_tooltipp => 'Call';
}

// Path: contacts.overview
class _TranslationsContactsOverviewEn extends TranslationsContactsOverviewDe {
  _TranslationsContactsOverviewEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get total_label => 'Contacts';
  @override
  String bought_chip({required Object Count}) => '${Count} bought';
  @override
  String sold_chip({required Object Count}) => '${Count} sold';
  @override
  String get all_contacts => 'All contacts';
  @override
  String get search_hint => 'Search name, city …';
  @override
  String activity_sold({required Object Ring}) => 'Sold ${Ring}';
  @override
  String activity_bought({required Object Ring}) => 'Bought ${Ring}';
}

// Path: contacts.card
class _TranslationsContactsCardEn extends TranslationsContactsCardDe {
  _TranslationsContactsCardEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get call => 'Call';
  @override
  String get email => 'Email';
  @override
  String get details => 'Details';
}

// Path: contacts.detail
class _TranslationsContactsDetailEn extends TranslationsContactsDetailDe {
  _TranslationsContactsDetailEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Contact';
  @override
  String get bought => 'Bought';
  @override
  String get sold => 'Sold';
  @override
  String get balance => 'Balance';
  @override
  String get contact_data => 'Contact details';
  @override
  String get no_contact_data => 'No contact details stored';
  @override
  String get linked_birds => 'Linked birds';
  @override
  String get role_sold => 'SOLD';
  @override
  String get role_bought => 'BOUGHT';
  @override
  String get location => 'Location';
  @override
  String get edit => 'Edit';
}

// Path: breeding_pairs.status
class _TranslationsBreedingPairsStatusEn extends TranslationsBreedingPairsStatusDe {
  _TranslationsBreedingPairsStatusEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Status';
  @override
  String get active => 'Active';
  @override
  String get paused => 'Paused';
  @override
  String get finished => 'Finished';
}

// Path: breeding_pairs.year_filter
class _TranslationsBreedingPairsYearFilterEn extends TranslationsBreedingPairsYearFilterDe {
  _TranslationsBreedingPairsYearFilterEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'YEAR';
  @override
  String get all => 'All';
}

// Path: breeding_pairs.filter
class _TranslationsBreedingPairsFilterEn extends TranslationsBreedingPairsFilterDe {
  _TranslationsBreedingPairsFilterEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String show_results({required Object Count}) => 'Show ${Count} breeding pairs';
}

// Path: breeding_pairs.brood_status
class _TranslationsBreedingPairsBroodStatusEn extends TranslationsBreedingPairsBroodStatusDe {
  _TranslationsBreedingPairsBroodStatusEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get active => 'active';
  @override
  String get inactive => 'paused';
  @override
  String get completed => 'finished';
}

// Path: breeding_pairs.sort_by
class _TranslationsBreedingPairsSortByEn extends TranslationsBreedingPairsSortByDe {
  _TranslationsBreedingPairsSortByEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get cage => 'Aviary';
  @override
  String get updated => 'Last modified';
  @override
  String get created => 'Created';
}

// Path: breeding_pairs.stats
class _TranslationsBreedingPairsStatsEn extends TranslationsBreedingPairsStatsDe {
  _TranslationsBreedingPairsStatsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsBreedingPairsStatsAbbrEn abbr = _TranslationsBreedingPairsStatsAbbrEn._(_root);
  @override
  late final _TranslationsBreedingPairsStatsLabelEn label = _TranslationsBreedingPairsStatsLabelEn._(_root);
  @override
  late final _TranslationsBreedingPairsStatsLegendEn legend = _TranslationsBreedingPairsStatsLegendEn._(_root);
}

// Path: resources.section
class _TranslationsResourcesSectionEn extends TranslationsResourcesSectionDe {
  _TranslationsResourcesSectionEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get identity => 'Identity';
  @override
  String get basics => 'Basics';
  @override
  String get lifecycle => 'Life cycle';
  @override
  String get icon => 'Icon';
  @override
  String get notes => 'Notes';
  @override
  String get color => 'Color';
}

// Path: resources.actions
class _TranslationsResourcesActionsEn extends TranslationsResourcesActionsDe {
  _TranslationsResourcesActionsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get edit => 'Edit';
}

// Path: resources.color_picker
class _TranslationsResourcesColorPickerEn extends TranslationsResourcesColorPickerDe {
  _TranslationsResourcesColorPickerEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Choose color';
}

// Path: resources.field
class _TranslationsResourcesFieldEn extends TranslationsResourcesFieldDe {
  _TranslationsResourcesFieldEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Name';
  @override
  String get required => 'Required field';
}

// Path: resources.delete
class _TranslationsResourcesDeleteEn extends TranslationsResourcesDeleteDe {
  _TranslationsResourcesDeleteEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String with_usage({required Object Usage}) => '${Usage} links will be removed. Continue anyway?';
}

// Path: resources.sort
class _TranslationsResourcesSortEn extends TranslationsResourcesSortDe {
  _TranslationsResourcesSortEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Sort';
  @override
  late final _TranslationsResourcesSortByEn by = _TranslationsResourcesSortByEn._(_root);
  @override
  String get asc => 'Ascending';
  @override
  String get desc => 'Descending';
}

// Path: birds.overview
class _TranslationsBirdsOverviewEn extends TranslationsBirdsOverviewDe {
  _TranslationsBirdsOverviewEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String subtitle({required Object Birds, required Object Cages}) => '${Birds} birds · ${Cages} cages';
  @override
  String for_sale({required Object Count}) => '${Count} for sale';
  @override
  String get group_by_cage => 'Group: cage';
  @override
  String get no_cage => 'No cage';
  @override
  String get birds_label => 'Birds';
  @override
  String get sale_badge => 'For sale';
  @override
  String get empty => 'No birds found';
  @override
  String get view_grouped => 'Group by aviary';
  @override
  String get view_list => 'Show as list';
}

// Path: birds.filter
class _TranslationsBirdsFilterEn extends TranslationsBirdsFilterDe {
  _TranslationsBirdsFilterEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String show_results({required Object Count}) => 'Show ${Count} birds';
  @override
  String get sort_title => 'Sort';
  @override
  String get more_title => 'More';
  @override
  String get show_deceased => 'Show deceased';
  @override
  String get endangered_only => 'Endangered species only';
  @override
  String get reportable_only => 'Reportable species only';
}

// Path: pedigree.stats
class _TranslationsPedigreeStatsEn extends TranslationsPedigreeStatsDe {
  _TranslationsPedigreeStatsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get generations => 'Generations';
  @override
  String get ancestors => 'Ancestors';
  @override
  String get descendants => 'Descendants';
  @override
  String get inbreeding => 'Inbreeding';
  @override
  String get no_inbreeding => 'No inbreeding';
}

// Path: bird.tabs
class _TranslationsBirdTabsEn extends TranslationsBirdTabsDe {
  _TranslationsBirdTabsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get general => 'General';
  @override
  String get state_and_life => 'Status';
  @override
  String get breeding => 'Breeding';
  @override
  String get purchase_and_sale => 'Finances';
}

// Path: bird.summary
class _TranslationsBirdSummaryEn extends TranslationsBirdSummaryDe {
  _TranslationsBirdSummaryEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get sex => 'Sex';
  @override
  String get age => 'Age';
  @override
  String get cage => 'Cage';
  @override
  String get offspring => 'Offspring';
  @override
  String get unknown => '—';
}

// Path: bird.sections
class _TranslationsBirdSectionsEn extends TranslationsBirdSectionsDe {
  _TranslationsBirdSectionsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsBirdSectionsIdentificationEn identification = _TranslationsBirdSectionsIdentificationEn._(_root);
  @override
  late final _TranslationsBirdSectionsKeepingEn keeping = _TranslationsBirdSectionsKeepingEn._(_root);
  @override
  late final _TranslationsBirdSectionsStatusEn status = _TranslationsBirdSectionsStatusEn._(_root);
  @override
  late final _TranslationsBirdSectionsSaleEn sale = _TranslationsBirdSectionsSaleEn._(_root);
  @override
  late final _TranslationsBirdSectionsPurchaseEn purchase = _TranslationsBirdSectionsPurchaseEn._(_root);
  @override
  late final _TranslationsBirdSectionsHealthEn health = _TranslationsBirdSectionsHealthEn._(_root);
  @override
  late final _TranslationsBirdSectionsLifeEn life = _TranslationsBirdSectionsLifeEn._(_root);
  @override
  late final _TranslationsBirdSectionsNotesEn notes = _TranslationsBirdSectionsNotesEn._(_root);
  @override
  late final _TranslationsBirdSectionsPhotosEn photos = _TranslationsBirdSectionsPhotosEn._(_root);
  @override
  late final _TranslationsBirdSectionsParentEn parent = _TranslationsBirdSectionsParentEn._(_root);
  @override
  late final _TranslationsBirdSectionsBreederEn breeder = _TranslationsBirdSectionsBreederEn._(_root);
  @override
  late final _TranslationsBirdSectionsChildrenEn children = _TranslationsBirdSectionsChildrenEn._(_root);
}

// Path: pair_detail.kpi
class _TranslationsPairDetailKpiEn extends TranslationsPairDetailKpiDe {
  _TranslationsPairDetailKpiEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get broods => 'Broods';
  @override
  String get eggs => 'Eggs';
  @override
  String get hatched => 'Hatched';
  @override
  String get fledged => 'Fledged';
}

// Path: brood.kpi
class _TranslationsBroodKpiEn extends TranslationsBroodKpiDe {
  _TranslationsBroodKpiEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get eggs => 'Eggs';
  @override
  String get hatched => 'Hatched';
  @override
  String get fledged => 'Fledged';
}

// Path: egg.status
class _TranslationsEggStatusEn extends TranslationsEggStatusDe {
  _TranslationsEggStatusEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get laid => 'Laid';
  @override
  String get fertilized => 'Fertilized';
  @override
  String get unfertilized => 'Unfertilized';
  @override
  String get hatched => 'Hatched';
  @override
  String get dead => 'Died';
  @override
  String get fledged => 'Fledged';
  @override
  String get in_stock => 'In stock';
  @override
  String get unknown => 'Unknown';
}

// Path: egg.action
class _TranslationsEggActionEn extends TranslationsEggActionDe {
  _TranslationsEggActionEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get set_ringnumber => 'Enter new ring number';
}

// Path: egg.lifecycle
class _TranslationsEggLifecycleEn extends TranslationsEggLifecycleDe {
  _TranslationsEggLifecycleEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String title({required Object Number}) => 'Egg ${Number}';
  @override
  String get section_cycle => 'Life cycle';
  @override
  String get section_details => 'Details';
  @override
  String get set_date => 'Set date';
  @override
  String get confirm_delete => 'Delete egg?';
}

// Path: common.bottom_sheet
class _TranslationsCommonBottomSheetEn extends TranslationsCommonBottomSheetDe {
  _TranslationsCommonBottomSheetEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String search_empty_builder_text({required Object Text}) => 'The search for ${Text} returned no results.';
}

// Path: common.sale_status
class _TranslationsCommonSaleStatusEn extends TranslationsCommonSaleStatusDe {
  _TranslationsCommonSaleStatusEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Purchase/sale status';
  @override
  String get not_for_sale => 'Not for sale';
  @override
  String get listed => 'Listed for sale';
  @override
  String get reserved => 'Reserved';
  @override
  String get sold => 'Sold';
}

// Path: common.sex
class _TranslationsCommonSexEn extends TranslationsCommonSexDe {
  _TranslationsCommonSexEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Sex';
  @override
  String get male => 'Cock';
  @override
  String get female => 'Hen';
  @override
  String get unknown => 'Unknown';
}

// Path: common.sell
class _TranslationsCommonSellEn extends TranslationsCommonSellDe {
  _TranslationsCommonSellEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get year => 'Year of sale';
  @override
  String get bird => 'Sell bird';
  @override
  late final _TranslationsCommonSellPriceEn price = _TranslationsCommonSellPriceEn._(_root);
}

// Path: common.bought
class _TranslationsCommonBoughtEn extends TranslationsCommonBoughtDe {
  _TranslationsCommonBoughtEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get year => 'Year of purchase';
  @override
  String get from => 'Bought from';
  @override
  String get at => 'Bought on';
  @override
  String get price => 'Purchase price';
}

// Path: common.sorting
class _TranslationsCommonSortingEn extends TranslationsCommonSortingDe {
  _TranslationsCommonSortingEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Sorting';
  @override
  String get updated => 'Last updated';
  @override
  String get age => 'Age';
  @override
  String get ringnumber => 'Ring number';
}

// Path: common.sold
class _TranslationsCommonSoldEn extends TranslationsCommonSoldDe {
  _TranslationsCommonSoldEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get to => 'Sold to';
  @override
  String get at => 'Sold on';
}

// Path: common.unit
class _TranslationsCommonUnitEn extends TranslationsCommonUnitDe {
  _TranslationsCommonUnitEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get m => 'm';
  @override
  String get cm => 'cm';
}

// Path: common.hint
class _TranslationsCommonHintEn extends TranslationsCommonHintDe {
  _TranslationsCommonHintEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get select => 'Select';
  @override
  String get text => 'Enter';
}

// Path: auth.validators
class _TranslationsAuthValidatorsEn extends TranslationsAuthValidatorsDe {
  _TranslationsAuthValidatorsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get email => 'Please enter a valid email address';
  @override
  String get email_format => 'Please enter a valid email address';
  @override
  String get password => 'Please enter a password';
  @override
  String get password_length => 'The password must be at least 6 characters long';
  @override
  String get first_name => 'Please enter your first name';
  @override
  String get first_name_length => 'The first name must be at least 3 characters long';
  @override
  String get last_name => 'Please enter your last name';
}

// Path: csv_import.birds
class _TranslationsCsvImportBirdsEn extends TranslationsCsvImportBirdsDe {
  _TranslationsCsvImportBirdsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Birds';
  @override
  String get description => 'Import birds with species,\ncolor and aviary';
  @override
  String get import_title => 'Import birds from CSV';
  @override
  String get import_description =>
      'Choose a CSV file with your bird data.\nSpecies, colors and aviaries are created automatically if they do not exist yet. The CSV file must use a semicolon (;) as the separator. The date format should be either yyyy-MM-dd, dd.MM.yyyy or dd/MM/yyyy.';
  @override
  String import_button({required Object Count}) => 'Import ${Count} birds';
  @override
  String get item_name => 'birds';
}

// Path: csv_import.contacts
class _TranslationsCsvImportContactsEn extends TranslationsCsvImportContactsDe {
  _TranslationsCsvImportContactsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Contacts';
  @override
  String get description => 'Import contact data\nsuch as breeders or buyers';
  @override
  String get import_title => 'Import contacts from CSV';
  @override
  String get import_description => 'Choose a CSV file with your contact data. The CSV file must use a semicolon (;) as the separator.';
  @override
  String import_button({required Object Count}) => 'Import ${Count} contacts';
  @override
  String get item_name => 'contacts';
}

// Path: csv_import.columns
class _TranslationsCsvImportColumnsEn extends TranslationsCsvImportColumnsDe {
  _TranslationsCsvImportColumnsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Supported columns:';
  @override
  String get date_formats => 'Date formats: yyyy-MM-dd, dd.MM.yyyy, dd/MM/yyyy';
  @override
  String get bird_columns =>
      '• ringnumber / ring / ringnummer - Ring number (required)\n• species / art / vogelart - Species\n• color / farbe / colour - Color\n• cage / voliere / käfig - Aviary\n• sex / geschlecht - Sex (male/female/männlich/weiblich)\n• born_at / geboren / geburtsdatum - Date of birth\n• father / vater - Father\'s ring number\n• mother / mutter - Mother\'s ring number\n• notes / notizen / bemerkungen - Notes';
  @override
  String get contact_columns =>
      '• firstname / vorname - First name\n• name / nachname / lastname - Last name (at least first or last name required)\n• number / nummer / kundennummer - Contact number\n• phone / telefon / mobil - Phone number\n• email / e-mail / mail - Email address\n• address / adresse / strasse - Street\n• city / stadt / ort - City\n• postalcode / plz / zip - Postal code\n• country / land - Country\n• website / homepage / url - Website';
}

// Path: csv_import.preview
class _TranslationsCsvImportPreviewEn extends TranslationsCsvImportPreviewDe {
  _TranslationsCsvImportPreviewEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String valid({required Object Count}) => '${Count} valid';
  @override
  String invalid({required Object Count}) => '${Count} invalid';
}

// Path: csv_import.table
class _TranslationsCsvImportTableEn extends TranslationsCsvImportTableDe {
  _TranslationsCsvImportTableEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get row => '#';
  @override
  String get ring_number => 'Ring number';
  @override
  String get species => 'Species';
  @override
  String get color => 'Color';
  @override
  String get cage => 'Aviary';
  @override
  String get sex => 'Sex';
  @override
  String get birth_date => 'Born';
  @override
  String get death_date => 'Deceased';
  @override
  String get father => 'Father';
  @override
  String get mother => 'Mother';
  @override
  String get breeder => 'Breeder';
  @override
  String get owner => 'Owner';
  @override
  String get status => 'Status';
  @override
  String get number => 'Number';
  @override
  String get first_name => 'First name';
  @override
  String get last_name => 'Last name';
  @override
  String get phone => 'Phone';
  @override
  String get cell_phone => 'Mobile';
  @override
  String get email => 'Email';
  @override
  String get city => 'City';
}

// Path: csv_import.status
class _TranslationsCsvImportStatusEn extends TranslationsCsvImportStatusDe {
  _TranslationsCsvImportStatusEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get error => 'Error';
  @override
  String get missing_ring_number => 'Ring number missing';
  @override
  String get missing_name => 'Name missing';
  @override
  String get no_ring_number => 'No ring number';
}

// Path: csv_import.summary
class _TranslationsCsvImportSummaryEn extends TranslationsCsvImportSummaryDe {
  _TranslationsCsvImportSummaryEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get successful => 'Imported successfully';
  @override
  String get failed => 'Failed';
  @override
  String get skipped_duplicates => 'Skipped (duplicates)';
  @override
  String get skipped_invalid => 'Skipped (invalid)';
  @override
  String get species_created => 'New species created';
  @override
  String get colors_created => 'New colors created';
  @override
  String get cages_created => 'New aviaries created';
  @override
  String get failed_imports => 'Failed imports';
  @override
  String get skipped_entries => 'Skipped entries (duplicates)';
}

// Path: csv_import.errors
class _TranslationsCsvImportErrorsEn extends TranslationsCsvImportErrorsDe {
  _TranslationsCsvImportErrorsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get select_csv_file => 'Please select a CSV file';
  @override
  String get not_csv_file => 'The selected file is not a CSV file.';
  @override
  String get could_not_read_file => 'File could not be read';
  @override
  String get error_reading_file => 'Error reading the file';
  @override
  String get ring_number_exists => 'Ring number already exists';
  @override
  String get could_not_create_bird => 'Bird could not be created';
  @override
  String contact_number_exists({required Object Number}) => 'Contact number "${Number}" already exists';
  @override
  String get could_not_create_contact => 'Contact could not be created';
}

// Path: menu.sections
class _TranslationsMenuSectionsEn extends TranslationsMenuSectionsDe {
  _TranslationsMenuSectionsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get main => 'Main areas';
  @override
  String get data => 'Master data';
  @override
  String get settings => 'Settings';
}

// Path: menu.birds
class _TranslationsMenuBirdsEn extends TranslationsMenuBirdsDe {
  _TranslationsMenuBirdsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Birds';
  @override
  String get description => 'Manage your birds';
}

// Path: menu.contacts
class _TranslationsMenuContactsEn extends TranslationsMenuContactsDe {
  _TranslationsMenuContactsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Contacts';
  @override
  String get description => 'Manage your contacts';
}

// Path: menu.breedings
class _TranslationsMenuBreedingsEn extends TranslationsMenuBreedingsDe {
  _TranslationsMenuBreedingsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Breedings';
  @override
  String get description => 'Active & past breeding pairs';
}

// Path: menu.resources
class _TranslationsMenuResourcesEn extends TranslationsMenuResourcesDe {
  _TranslationsMenuResourcesEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Resources';
  @override
  String get description => 'Colors, species, aviaries';
}

// Path: menu.finances
class _TranslationsMenuFinancesEn extends TranslationsMenuFinancesDe {
  _TranslationsMenuFinancesEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Finances';
  @override
  String get description => 'Cash book';
}

// Path: menu.csv_import
class _TranslationsMenuCsvImportEn extends TranslationsMenuCsvImportDe {
  _TranslationsMenuCsvImportEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'CSV import';
  @override
  String get description => 'Import data from CSV';
}

// Path: menu.account
class _TranslationsMenuAccountEn extends TranslationsMenuAccountDe {
  _TranslationsMenuAccountEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Account';
  @override
  String get description => 'Your account';
}

// Path: menu.species
class _TranslationsMenuSpeciesEn extends TranslationsMenuSpeciesDe {
  _TranslationsMenuSpeciesEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Species';
  @override
  String get description => 'Manage bird species';
}

// Path: menu.cages
class _TranslationsMenuCagesEn extends TranslationsMenuCagesDe {
  _TranslationsMenuCagesEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Aviaries';
  @override
  String get description => 'Aviaries & cages';
}

// Path: menu.colors
class _TranslationsMenuColorsEn extends TranslationsMenuColorsDe {
  _TranslationsMenuColorsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Colors';
  @override
  String get description => 'Color varieties';
}

// Path: menu.finance_categories
class _TranslationsMenuFinanceCategoriesEn extends TranslationsMenuFinanceCategoriesDe {
  _TranslationsMenuFinanceCategoriesEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Finance categories';
  @override
  String get description => 'Income and expense categories';
}

// Path: dialog.discard_changes
class _TranslationsDialogDiscardChangesEn extends TranslationsDialogDiscardChangesDe {
  _TranslationsDialogDiscardChangesEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Discard changes?';
  @override
  String get content => 'Your changes will be discarded, are you sure?';
}

// Path: dialog.delete_entry
class _TranslationsDialogDeleteEntryEn extends TranslationsDialogDeleteEntryDe {
  _TranslationsDialogDeleteEntryEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get content => 'Do you really want to delete this entry?';
}

// Path: export.events
class _TranslationsExportEventsEn extends TranslationsExportEventsDe {
  _TranslationsExportEventsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String succeeded({required Object FileName}) => '"${FileName}" created.';
  @override
  String failed({required Object Error}) => 'Export failed: ${Error}';
}

// Path: export.format
class _TranslationsExportFormatEn extends TranslationsExportFormatDe {
  _TranslationsExportFormatEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Format';
  @override
  late final _TranslationsExportFormatCsvEn csv = _TranslationsExportFormatCsvEn._(_root);
  @override
  late final _TranslationsExportFormatPdfEn pdf = _TranslationsExportFormatPdfEn._(_root);
}

// Path: export.preset
class _TranslationsExportPresetEn extends TranslationsExportPresetDe {
  _TranslationsExportPresetEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Scope';
}

// Path: export.pdf
class _TranslationsExportPdfEn extends TranslationsExportPdfDe {
  _TranslationsExportPdfEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String page({required Object Page, required Object Total}) => 'Page ${Page} of ${Total}';
}

// Path: export.header
class _TranslationsExportHeaderEn extends TranslationsExportHeaderDe {
  _TranslationsExportHeaderEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'PDF letterhead';
  @override
  String get subtitle => 'Header for exported PDFs';
  @override
  String get list_empty => 'No letterhead created yet. Without a profile the export uses the list name and your profile data.';
  @override
  String get add => 'Create letterhead';
  @override
  String get new_name => 'New letterhead';
  @override
  String get none => 'Without letterhead';
  @override
  String get default_badge => 'Default';
  @override
  String get set_default => 'Use as default';
  @override
  String get delete_title => 'Delete letterhead?';
  @override
  String delete_content({required Object Name}) => '"${Name}" will be deleted permanently.';
  @override
  String get deleted => 'Letterhead deleted.';
  @override
  String get saved => 'Letterhead saved.';
  @override
  String get name_label => 'Profile name';
  @override
  String get name_hint => 'e.g. club or sales';
  @override
  String get section_layout => 'Layout';
  @override
  String get section_logo => 'Logo';
  @override
  String get section_text => 'Texts';
  @override
  String get section_meta => 'Details';
  @override
  String get section_footer => 'Footer';
  @override
  late final _TranslationsExportHeaderLayoutEn layout = _TranslationsExportHeaderLayoutEn._(_root);
  @override
  late final _TranslationsExportHeaderLogoSizeEn logo_size = _TranslationsExportHeaderLogoSizeEn._(_root);
  @override
  String get logo_pick => 'Choose logo';
  @override
  String get logo_replace => 'Replace logo';
  @override
  String get logo_remove => 'Remove logo';
  @override
  String get title_label => 'Title line';
  @override
  String get subtitle_label => 'Subtitle line';
  @override
  String get footer_label => 'Footer text';
  @override
  String get address_show => 'Show address block';
  @override
  String get address_override_label => 'Custom address block';
  @override
  String get address_override_hint => 'Leave empty to use the address from your profile';
  @override
  String get address_from_profile => 'Take from profile';
  @override
  String get show_date => 'Show date';
  @override
  String get show_count => 'Show count';
  @override
  String get show_filter => 'Show active filters';
  @override
  String get show_breeder_number => 'Show breeder number';
  @override
  String get show_divider => 'Show divider line';
  @override
  String get show_page_numbers => 'Show page numbers';
  @override
  String get placeholders_hint => 'Tap a placeholder to insert it';
  @override
  String get preview_title => 'Preview';
  @override
  String get preview_list => 'Stock list';
  @override
  String get preview_filter => 'Species: Budgerigar';
}

// Path: export.summary
class _TranslationsExportSummaryEn extends TranslationsExportSummaryDe {
  _TranslationsExportSummaryEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get birds => 'Birds';
  @override
  String get pairs => 'Pairs';
  @override
  String get hatch_rate => 'Hatch rate';
  @override
  String get income => 'Income';
  @override
  String get expense => 'Expenses';
  @override
  String get net => 'Balance';
}

// Path: export.lists
class _TranslationsExportListsEn extends TranslationsExportListsDe {
  _TranslationsExportListsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get birds => 'Stock list';
  @override
  String get breeding_pairs => 'Breeding pairs';
  @override
  String get finances => 'Cash book';
}

// Path: export.file_names
class _TranslationsExportFileNamesEn extends TranslationsExportFileNamesDe {
  _TranslationsExportFileNamesEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get birds => 'stock';
  @override
  String get breeding_pairs => 'breeding_pairs';
  @override
  String get finances => 'cash_book';
}

// Path: export.presets
class _TranslationsExportPresetsEn extends TranslationsExportPresetsDe {
  _TranslationsExportPresetsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsExportPresetsBirdsEn birds = _TranslationsExportPresetsBirdsEn._(_root);
  @override
  late final _TranslationsExportPresetsBreedingPairsEn breeding_pairs = _TranslationsExportPresetsBreedingPairsEn._(_root);
  @override
  late final _TranslationsExportPresetsFinancesEn finances = _TranslationsExportPresetsFinancesEn._(_root);
}

// Path: export.columns
class _TranslationsExportColumnsEn extends TranslationsExportColumnsDe {
  _TranslationsExportColumnsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsExportColumnsBirdEn bird = _TranslationsExportColumnsBirdEn._(_root);
  @override
  late final _TranslationsExportColumnsBreedingPairEn breeding_pair = _TranslationsExportColumnsBreedingPairEn._(_root);
  @override
  late final _TranslationsExportColumnsFinanceEn finance = _TranslationsExportColumnsFinanceEn._(_root);
}

// Path: documents.types
class _TranslationsDocumentsTypesEn extends TranslationsDocumentsTypesDe {
  _TranslationsDocumentsTypesEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsDocumentsTypesProfileEn profile = _TranslationsDocumentsTypesProfileEn._(_root);
  @override
  late final _TranslationsDocumentsTypesPedigreeEn pedigree = _TranslationsDocumentsTypesPedigreeEn._(_root);
  @override
  late final _TranslationsDocumentsTypesSaleReceiptEn sale_receipt = _TranslationsDocumentsTypesSaleReceiptEn._(_root);
}

// Path: documents.profile
class _TranslationsDocumentsProfileEn extends TranslationsDocumentsProfileDe {
  _TranslationsDocumentsProfileEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get section_general => 'General';
  @override
  String get section_lifecycle => 'Life dates';
  @override
  String get section_origin => 'Origin & breeding';
  @override
  String get section_commerce => 'Purchase & sale';
  @override
  String get section_notes => 'Notes';
}

// Path: documents.pedigree
class _TranslationsDocumentsPedigreeEn extends TranslationsDocumentsPedigreeDe {
  _TranslationsDocumentsPedigreeEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get statement => 'This is to confirm that the ancestry of the bird named above is stated correctly to the best of our knowledge.';
  @override
  String get breeder => 'Breeder';
  @override
  String get breeder_number => 'Breeder number';
  @override
  String get signature => 'Place, date, breeder\'s signature';
}

// Path: documents.receipt
class _TranslationsDocumentsReceiptEn extends TranslationsDocumentsReceiptDe {
  _TranslationsDocumentsReceiptEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get seller => 'Transferring party';
  @override
  String get buyer => 'Receiving party';
  @override
  String get bird_data => 'Bird details';
  @override
  String get price => 'Price';
  @override
  String get date => 'Date of transfer';
  @override
  String get statement =>
      'The bird described above is transferred to the receiving party at the stated price. The bird is in a healthy condition at the time of transfer.';
  @override
  String get signature_seller => 'Place, date, signature of transferring party';
  @override
  String get signature_buyer => 'Place, date, signature of receiving party';
}

// Path: finances.categories.filters
class _TranslationsFinancesCategoriesFiltersEn extends TranslationsFinancesCategoriesFiltersDe {
  _TranslationsFinancesCategoriesFiltersEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'All';
  @override
  String get income => 'Income';
  @override
  String get expense => 'Expenses';
}

// Path: finances.categories.groups
class _TranslationsFinancesCategoriesGroupsEn extends TranslationsFinancesCategoriesGroupsDe {
  _TranslationsFinancesCategoriesGroupsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get income => 'Income';
  @override
  String get expense => 'Expenses';
}

// Path: finances.categories.kind_singular
class _TranslationsFinancesCategoriesKindSingularEn extends TranslationsFinancesCategoriesKindSingularDe {
  _TranslationsFinancesCategoriesKindSingularEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get income => 'Income';
  @override
  String get expense => 'Expense';
}

// Path: finances.categories.pill
class _TranslationsFinancesCategoriesPillEn extends TranslationsFinancesCategoriesPillDe {
  _TranslationsFinancesCategoriesPillEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get income => '↑ INCOME';
  @override
  String get expense => '↓ EXPENSE';
}

// Path: finances.categories.detail
class _TranslationsFinancesCategoriesDetailEn extends TranslationsFinancesCategoriesDetailDe {
  _TranslationsFinancesCategoriesDetailEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get bookings_label => 'Transactions';
  @override
  String get six_months => '6 months';
  @override
  String get avg_per_month => 'Ø per month';
  @override
  String get recent_bookings => 'Recent transactions';
  @override
  String get no_bookings => 'No transactions';
  @override
  String get last_six_months_label => 'last 6 months';
  @override
  String get course_six_months => 'Trend · 6 months';
}

// Path: finances.categories.months_short
class _TranslationsFinancesCategoriesMonthsShortEn extends TranslationsFinancesCategoriesMonthsShortDe {
  _TranslationsFinancesCategoriesMonthsShortEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get dec => 'Dec';
  @override
  String get jan => 'Jan';
  @override
  String get feb => 'Feb';
  @override
  String get mar => 'Mar';
  @override
  String get apr => 'Apr';
  @override
  String get may => 'May';
}

// Path: backup.cloud.choose_folder_dialog
class _TranslationsBackupCloudChooseFolderDialogEn extends TranslationsBackupCloudChooseFolderDialogDe {
  _TranslationsBackupCloudChooseFolderDialogEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Choose cloud folder?';
  @override
  String get content => 'To store automatic backups, choose a folder in your cloud now (e.g. Google Drive).';
  @override
  String get confirm => 'Choose folder';
}

// Path: backup.cloud.sync_after_change_dialog
class _TranslationsBackupCloudSyncAfterChangeDialogEn extends TranslationsBackupCloudSyncAfterChangeDialogDe {
  _TranslationsBackupCloudSyncAfterChangeDialogEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Sync now?';
  @override
  String get content => 'The cloud folder has changed. Should your current data be backed up there now?';
  @override
  String get confirm => 'Sync';
}

// Path: backup.cloud.interval
class _TranslationsBackupCloudIntervalEn extends TranslationsBackupCloudIntervalDe {
  _TranslationsBackupCloudIntervalEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Auto-backup interval';
  @override
  String get sub => 'How often a backup runs automatically on app start';
  @override
  String get sheet_title => 'Choose interval';
  @override
  String get every_launch => 'Every launch';
  @override
  String get daily => 'Daily';
  @override
  String get weekly => 'Weekly';
  @override
  String get off => 'Manual';
}

// Path: backup.cloud.status
class _TranslationsBackupCloudStatusEn extends TranslationsBackupCloudStatusDe {
  _TranslationsBackupCloudStatusEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get synced_today => 'Last sync: today';
  @override
  String synced_days_ago({required num count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(
        count,
        one: 'Last sync: 1 day ago',
        other: 'Last sync: {count} days ago',
      );
  @override
  String get never => 'Not synced yet';
  @override
  String get unavailable_icloud => 'Not signed in to iCloud';
  @override
  String get unavailable_folder => 'No access to the folder – please choose again';
}

// Path: backup.cloud.events
class _TranslationsBackupCloudEventsEn extends TranslationsBackupCloudEventsDe {
  _TranslationsBackupCloudEventsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String location_chosen({required Object Name}) => 'Cloud folder set: ${Name}';
  @override
  String get location_failed => 'No folder selected';
  @override
  String get sync_succeeded => 'Backed up to cloud';
  @override
  String sync_failed({required Object Error}) => 'Cloud sync failed: ${Error}';
  @override
  String get unavailable_icloud => 'Not signed in to iCloud';
  @override
  String get unavailable_folder => 'No access to the cloud folder. Please choose again.';
}

// Path: contacts.fields.title
class _TranslationsContactsFieldsTitleEn extends TranslationsContactsFieldsTitleDe {
  _TranslationsContactsFieldsTitleEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Salutation';
  @override
  String get none => 'None';
  @override
  String get mr => 'Mr';
  @override
  String get ms => 'Ms';
}

// Path: contacts.fields.app_user
class _TranslationsContactsFieldsAppUserEn extends TranslationsContactsFieldsAppUserDe {
  _TranslationsContactsFieldsAppUserEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'This contact is me';
  @override
  String get sub_title => 'Marks the contact as the app user.';
}

// Path: breeding_pairs.stats.abbr
class _TranslationsBreedingPairsStatsAbbrEn extends TranslationsBreedingPairsStatsAbbrDe {
  _TranslationsBreedingPairsStatsAbbrEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get laid => 'LD';
  @override
  String get fertilized => 'FT';
  @override
  String get hatched => 'HT';
  @override
  String get fledged => 'FL';
}

// Path: breeding_pairs.stats.label
class _TranslationsBreedingPairsStatsLabelEn extends TranslationsBreedingPairsStatsLabelDe {
  _TranslationsBreedingPairsStatsLabelEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get laid => 'Eggs laid';
  @override
  String get fertilized => 'Fertilized';
  @override
  String get hatched => 'Hatched';
  @override
  String get fledged => 'Fledged';
}

// Path: breeding_pairs.stats.legend
class _TranslationsBreedingPairsStatsLegendEn extends TranslationsBreedingPairsStatsLegendDe {
  _TranslationsBreedingPairsStatsLegendEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Legend';
}

// Path: resources.sort.by
class _TranslationsResourcesSortByEn extends TranslationsResourcesSortByDe {
  _TranslationsResourcesSortByEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Name';
  @override
  String get created => 'Created';
  @override
  String get capacity => 'Capacity';
  @override
  String get kind => 'Type';
  @override
  String get lat_name => 'Lat. name';
  @override
  String get hex => 'Color code';
  @override
  String get stock => 'Stock';
}

// Path: bird.sections.identification
class _TranslationsBirdSectionsIdentificationEn extends TranslationsBirdSectionsIdentificationDe {
  _TranslationsBirdSectionsIdentificationEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Identification';
  @override
  String get sub_title => 'Information identifying the bird';
}

// Path: bird.sections.keeping
class _TranslationsBirdSectionsKeepingEn extends TranslationsBirdSectionsKeepingDe {
  _TranslationsBirdSectionsKeepingEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Housing';
  @override
  String get sub_title => 'Information about how the bird is kept';
}

// Path: bird.sections.status
class _TranslationsBirdSectionsStatusEn extends TranslationsBirdSectionsStatusDe {
  _TranslationsBirdSectionsStatusEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Status';
  @override
  String get sub_title => 'Information about the bird\'s status';
}

// Path: bird.sections.sale
class _TranslationsBirdSectionsSaleEn extends TranslationsBirdSectionsSaleDe {
  _TranslationsBirdSectionsSaleEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Sale';
  @override
  String get sub_title => 'Information about the sale of the bird';
}

// Path: bird.sections.purchase
class _TranslationsBirdSectionsPurchaseEn extends TranslationsBirdSectionsPurchaseDe {
  _TranslationsBirdSectionsPurchaseEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Purchase';
  @override
  String get sub_title => 'Information about the purchase of the bird';
}

// Path: bird.sections.health
class _TranslationsBirdSectionsHealthEn extends TranslationsBirdSectionsHealthDe {
  _TranslationsBirdSectionsHealthEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Health';
  @override
  String get sub_title => 'Information about the bird\'s health';
}

// Path: bird.sections.life
class _TranslationsBirdSectionsLifeEn extends TranslationsBirdSectionsLifeDe {
  _TranslationsBirdSectionsLifeEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Life stage';
  @override
  String get sub_title => 'Information about the bird\'s life stage';
  @override
  String get unknown_lifecycle_title => 'Unknown life cycle data?';
  @override
  String get unknown_lifecycle_sub_title => 'Enable this option if the life cycle data is unknown.';
  @override
  String get unknown_lifecycle_description =>
      'If a date of birth exists, the bird is considered adult. If a date of death exists, the bird is considered deceased.';
}

// Path: bird.sections.notes
class _TranslationsBirdSectionsNotesEn extends TranslationsBirdSectionsNotesDe {
  _TranslationsBirdSectionsNotesEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Notes';
  @override
  String get sub_title => 'Information about the bird\'s notes';
}

// Path: bird.sections.photos
class _TranslationsBirdSectionsPhotosEn extends TranslationsBirdSectionsPhotosDe {
  _TranslationsBirdSectionsPhotosEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Photos';
  @override
  String get sub_title => 'Manage photos of this bird';
  @override
  String get add_camera => 'Camera';
  @override
  String get add_gallery => 'Gallery';
  @override
  String get save_first => 'Save the bird first to add photos.';
  @override
  String get empty => 'No photos yet';
  @override
  String get delete_title => 'Delete photo?';
  @override
  String get delete_confirm => 'Delete';
  @override
  String get manage => 'Manage photos';
  @override
  String get capture => 'Take photo';
  @override
  String get capture_sub => 'or choose from gallery · multiple possible';
  @override
  String get section_label => 'Photos of this bird';
  @override
  String get add_tile => 'Add';
  @override
  String get cover_badge => 'Cover';
  @override
  String get set_cover => 'Set as cover photo';
  @override
  String get remove => 'Remove';
  @override
  String get source_camera => 'Camera';
  @override
  String get source_gallery => 'Gallery';
  @override
  String get hint =>
      'Tap a photo to view it large. Press and hold a photo and drag it to another position – the first photo is the cover and appears in lists and on the bird detail page.';
  @override
  String get done => 'Done';
  @override
  String count_preview_one({required Object Count}) => '${Count} photo';
  @override
  String count_preview_other({required Object Count}) => '${Count} photos';
}

// Path: bird.sections.parent
class _TranslationsBirdSectionsParentEn extends TranslationsBirdSectionsParentDe {
  _TranslationsBirdSectionsParentEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Parents';
  @override
  String get sub_title => 'Information about the bird\'s parents';
}

// Path: bird.sections.breeder
class _TranslationsBirdSectionsBreederEn extends TranslationsBirdSectionsBreederDe {
  _TranslationsBirdSectionsBreederEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Breeder';
  @override
  String get sub_title => 'Information about the bird\'s breeder';
}

// Path: bird.sections.children
class _TranslationsBirdSectionsChildrenEn extends TranslationsBirdSectionsChildrenDe {
  _TranslationsBirdSectionsChildrenEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Offspring';
  @override
  String get sub_title => 'Information about the bird\'s offspring';
}

// Path: common.sell.price
class _TranslationsCommonSellPriceEn extends TranslationsCommonSellPriceDe {
  _TranslationsCommonSellPriceEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get kFinal => 'Actual sale price';
  @override
  String get asking => 'Asking price';
}

// Path: export.format.csv
class _TranslationsExportFormatCsvEn extends TranslationsExportFormatCsvDe {
  _TranslationsExportFormatCsvEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'CSV';
  @override
  String get description => 'For Excel and spreadsheets';
}

// Path: export.format.pdf
class _TranslationsExportFormatPdfEn extends TranslationsExportFormatPdfDe {
  _TranslationsExportFormatPdfEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'PDF';
  @override
  String get description => 'For printing and sharing';
}

// Path: export.header.layout
class _TranslationsExportHeaderLayoutEn extends TranslationsExportHeaderLayoutDe {
  _TranslationsExportHeaderLayoutEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get logo_left => 'Logo left';
  @override
  String get centered => 'Centered';
  @override
  String get address_left_logo_right => 'Address left, logo right';
}

// Path: export.header.logo_size
class _TranslationsExportHeaderLogoSizeEn extends TranslationsExportHeaderLogoSizeDe {
  _TranslationsExportHeaderLogoSizeEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Size';
  @override
  String get small => 'Small';
  @override
  String get medium => 'Medium';
  @override
  String get large => 'Large';
}

// Path: export.presets.birds
class _TranslationsExportPresetsBirdsEn extends TranslationsExportPresetsBirdsDe {
  _TranslationsExportPresetsBirdsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get overview => 'Overview';
  @override
  String get full => 'Complete';
}

// Path: export.presets.breeding_pairs
class _TranslationsExportPresetsBreedingPairsEn extends TranslationsExportPresetsBreedingPairsDe {
  _TranslationsExportPresetsBreedingPairsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get overview => 'Overview';
  @override
  String get full => 'Complete';
}

// Path: export.presets.finances
class _TranslationsExportPresetsFinancesEn extends TranslationsExportPresetsFinancesDe {
  _TranslationsExportPresetsFinancesEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get bookings => 'Transactions';
  @override
  String get full => 'Complete';
}

// Path: export.columns.bird
class _TranslationsExportColumnsBirdEn extends TranslationsExportColumnsBirdDe {
  _TranslationsExportColumnsBirdEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get ring_number => 'Ring number';
  @override
  String get species => 'Species';
  @override
  String get color => 'Color';
  @override
  String get cage => 'Aviary';
  @override
  String get sex => 'Sex';
  @override
  String get laid_at => 'Laid on';
  @override
  String get hatched_at => 'Hatched on';
  @override
  String get fledged_at => 'Fledged on';
  @override
  String get born_at => 'Born on';
  @override
  String get died_at => 'Died on';
  @override
  String get father => 'Father';
  @override
  String get mother => 'Mother';
  @override
  String get breeder => 'Breeder';
  @override
  String get breeder_number => 'Breeder number';
  @override
  String get owner => 'Owner';
  @override
  String get owner_number => 'Owner number';
  @override
  String get bought_at => 'Bought on';
  @override
  String get bought_price => 'Purchase price';
  @override
  String get bought_from => 'Bought from';
  @override
  String get sale_status => 'Sale status';
  @override
  String get asking_price => 'Asking price';
  @override
  String get final_price => 'Final price';
  @override
  String get sold_at => 'Sold on';
  @override
  String get sold_to => 'Sold to';
  @override
  String get notes => 'Notes';
}

// Path: export.columns.breeding_pair
class _TranslationsExportColumnsBreedingPairEn extends TranslationsExportColumnsBreedingPairDe {
  _TranslationsExportColumnsBreedingPairEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get father_ring => 'Father (ring)';
  @override
  String get father_species => 'Father (species)';
  @override
  String get mother_ring => 'Mother (ring)';
  @override
  String get mother_species => 'Mother (species)';
  @override
  String get cage => 'Aviary';
  @override
  String get status => 'Status';
  @override
  String get start => 'Start';
  @override
  String get end => 'End';
  @override
  String get broods => 'Broods';
  @override
  String get laid => 'Laid';
  @override
  String get fertilized => 'Fertilized';
  @override
  String get hatched => 'Hatched';
  @override
  String get fledged => 'Fledged';
  @override
  String get notes => 'Notes';
}

// Path: export.columns.finance
class _TranslationsExportColumnsFinanceEn extends TranslationsExportColumnsFinanceDe {
  _TranslationsExportColumnsFinanceEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get date => 'Date';
  @override
  String get title => 'Title';
  @override
  String get category => 'Category';
  @override
  String get kind => 'Type';
  @override
  String get amount => 'Amount';
  @override
  String get bird => 'Bird';
  @override
  String get notes => 'Notes';
}

// Path: documents.types.profile
class _TranslationsDocumentsTypesProfileEn extends TranslationsDocumentsTypesProfileDe {
  _TranslationsDocumentsTypesProfileEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Profile sheet';
  @override
  String get description => 'All master data on one page';
  @override
  String get file_name => 'profile';
}

// Path: documents.types.pedigree
class _TranslationsDocumentsTypesPedigreeEn extends TranslationsDocumentsTypesPedigreeDe {
  _TranslationsDocumentsTypesPedigreeEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Pedigree certificate';
  @override
  String get description => 'Ancestor chart across three generations';
  @override
  String get file_name => 'pedigree_certificate';
}

// Path: documents.types.sale_receipt
class _TranslationsDocumentsTypesSaleReceiptEn extends TranslationsDocumentsTypesSaleReceiptDe {
  _TranslationsDocumentsTypesSaleReceiptEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Transfer receipt';
  @override
  String get description => 'Receipt for a sale or transfer';
  @override
  String get file_name => 'transfer_receipt';
}
