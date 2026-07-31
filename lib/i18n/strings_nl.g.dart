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
class TranslationsNl extends Translations with BaseTranslations<AppLocale, Translations> {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsNl(
      {Map<String, Node>? overrides,
      PluralResolver? cardinalResolver,
      PluralResolver? ordinalResolver,
      TranslationMetadata<AppLocale, Translations>? meta})
      : assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
        $meta = meta ??
            TranslationMetadata(
              locale: AppLocale.nl,
              overrides: overrides ?? {},
              cardinalResolver: cardinalResolver,
              ordinalResolver: ordinalResolver,
            ),
        super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

  /// Metadata for the translations of <nl>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final TranslationsNl _root = this; // ignore: unused_field

  @override
  TranslationsNl $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsNl(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsAppNl app = _TranslationsAppNl._(_root);
  @override
  late final _TranslationsOnboardingNl onboarding = _TranslationsOnboardingNl._(_root);
  @override
  late final _TranslationsFinancesNl finances = _TranslationsFinancesNl._(_root);
  @override
  late final _TranslationsAccountNl account = _TranslationsAccountNl._(_root);
  @override
  late final _TranslationsBackupNl backup = _TranslationsBackupNl._(_root);
  @override
  late final _TranslationsBreedingsNl breedings = _TranslationsBreedingsNl._(_root);
  @override
  late final _TranslationsColorsNl colors = _TranslationsColorsNl._(_root);
  @override
  late final _TranslationsCagesNl cages = _TranslationsCagesNl._(_root);
  @override
  late final _TranslationsSpeciesNl species = _TranslationsSpeciesNl._(_root);
  @override
  late final _TranslationsContactsNl contacts = _TranslationsContactsNl._(_root);
  @override
  late final _TranslationsBreedingPairsNl breeding_pairs = _TranslationsBreedingPairsNl._(_root);
  @override
  late final _TranslationsResourcesNl resources = _TranslationsResourcesNl._(_root);
  @override
  late final _TranslationsBirdsNl birds = _TranslationsBirdsNl._(_root);
  @override
  late final _TranslationsPedigreeNl pedigree = _TranslationsPedigreeNl._(_root);
  @override
  late final _TranslationsInbreedingNl inbreeding = _TranslationsInbreedingNl._(_root);
  @override
  late final _TranslationsBirdNl bird = _TranslationsBirdNl._(_root);
  @override
  late final _TranslationsPairDetailNl pair_detail = _TranslationsPairDetailNl._(_root);
  @override
  late final _TranslationsBroodNl brood = _TranslationsBroodNl._(_root);
  @override
  late final _TranslationsEggNl egg = _TranslationsEggNl._(_root);
  @override
  late final _TranslationsCommonNl common = _TranslationsCommonNl._(_root);
  @override
  late final _TranslationsAuthNl auth = _TranslationsAuthNl._(_root);
  @override
  late final _TranslationsCsvImportNl csv_import = _TranslationsCsvImportNl._(_root);
  @override
  late final _TranslationsMenuNl menu = _TranslationsMenuNl._(_root);
  @override
  late final _TranslationsErrorNl error = _TranslationsErrorNl._(_root);
  @override
  late final _TranslationsDialogNl dialog = _TranslationsDialogNl._(_root);
  @override
  late final _TranslationsPopUpMenuNl pop_up_menu = _TranslationsPopUpMenuNl._(_root);
  @override
  late final _TranslationsExportNl export = _TranslationsExportNl._(_root);
  @override
  late final _TranslationsDocumentsNl documents = _TranslationsDocumentsNl._(_root);
  @override
  late final _TranslationsSnackbarsNl snackbars = _TranslationsSnackbarsNl._(_root);
}

// Path: app
class _TranslationsAppNl extends TranslationsAppDe {
  _TranslationsAppNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Birdbreeder';
}

// Path: onboarding
class _TranslationsOnboardingNl extends TranslationsOnboardingDe {
  _TranslationsOnboardingNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Profiel instellen';
  @override
  String get subtitle => 'Maak je eigen profiel aan. Het wordt gebruikt als app-gebruiker, bijvoorbeeld om je eigen vogels te markeren.';
  @override
  String get first_name => 'Voornaam';
  @override
  String get last_name => 'Achternaam';
  @override
  String get last_name_required => 'Voer een achternaam in.';
  @override
  String get breeder_number => 'Kwekernummer';
  @override
  String get breeder_number_required => 'Voer een kwekernummer in.';
  @override
  String get save => 'Profiel opslaan';
  @override
  String get or => 'of';
  @override
  String get restore_backup => 'Back-up terugzetten';
}

// Path: finances
class _TranslationsFinancesNl extends TranslationsFinancesDe {
  _TranslationsFinancesNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Financiën';
  @override
  late final _TranslationsFinancesCategoriesNl categories = _TranslationsFinancesCategoriesNl._(_root);
  @override
  String get delete => 'Boeking verwijderen?';
  @override
  late final _TranslationsFinancesAddNl add = _TranslationsFinancesAddNl._(_root);
  @override
  late final _TranslationsFinancesKindNl kind = _TranslationsFinancesKindNl._(_root);
  @override
  late final _TranslationsFinancesSummaryNl summary = _TranslationsFinancesSummaryNl._(_root);
  @override
  late final _TranslationsFinancesViewNl view = _TranslationsFinancesViewNl._(_root);
  @override
  late final _TranslationsFinancesScopeNl scope = _TranslationsFinancesScopeNl._(_root);
  @override
  late final _TranslationsFinancesFilterNl filter = _TranslationsFinancesFilterNl._(_root);
  @override
  late final _TranslationsFinancesSortingNl sorting = _TranslationsFinancesSortingNl._(_root);
}

// Path: account
class _TranslationsAccountNl extends TranslationsAccountDe {
  _TranslationsAccountNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Account';
  @override
  String get logout => 'Uitloggen';
  @override
  String get switch_to_local => 'Naar lokale modus wisselen';
  @override
  late final _TranslationsAccountSwitchToLocalDialogNl switch_to_local_dialog = _TranslationsAccountSwitchToLocalDialogNl._(_root);
  @override
  late final _TranslationsAccountLocalModeNl local_mode = _TranslationsAccountLocalModeNl._(_root);
  @override
  late final _TranslationsAccountAppearanceNl appearance = _TranslationsAccountAppearanceNl._(_root);
  @override
  late final _TranslationsAccountLanguageNl language = _TranslationsAccountLanguageNl._(_root);
  @override
  late final _TranslationsAccountCurrencyNl currency = _TranslationsAccountCurrencyNl._(_root);
  @override
  late final _TranslationsAccountProfileNl profile = _TranslationsAccountProfileNl._(_root);
  @override
  late final _TranslationsAccountUserNl user = _TranslationsAccountUserNl._(_root);
  @override
  late final _TranslationsAccountEventsNl events = _TranslationsAccountEventsNl._(_root);
}

// Path: backup
class _TranslationsBackupNl extends TranslationsBackupDe {
  _TranslationsBackupNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get section_title => 'Back-up';
  @override
  String get page_title => 'Back-ups';
  @override
  String get empty => 'Nog geen back-ups aanwezig.';
  @override
  String get loading => 'Bezig met laden…';
  @override
  String get no_backup_yet => 'Nog geen back-up';
  @override
  String last_backup({required Object Date}) => 'Laatste back-up: ${Date}';
  @override
  late final _TranslationsBackupExternalNl external = _TranslationsBackupExternalNl._(_root);
  @override
  late final _TranslationsBackupActionsNl actions = _TranslationsBackupActionsNl._(_root);
  @override
  String get manual_section => 'Handmatige back-up';
  @override
  String get last_backup_label => 'Laatste back-up';
  @override
  String get no_backup_size => 'Nog geen back-up';
  @override
  String get create_hint => 'Opent het deelvenster – kies Drive, Bestanden, e-mail of iets anders. Foto\'s zijn inbegrepen.';
  @override
  String get restore_hint => 'Bijv. na het wisselen van apparaat – zet een oudere stand terug.';
  @override
  late final _TranslationsBackupRestoreSheetNl restore_sheet = _TranslationsBackupRestoreSheetNl._(_root);
  @override
  late final _TranslationsBackupMenuNl menu = _TranslationsBackupMenuNl._(_root);
  @override
  late final _TranslationsBackupDeleteDialogNl delete_dialog = _TranslationsBackupDeleteDialogNl._(_root);
  @override
  late final _TranslationsBackupRestoreDialogNl restore_dialog = _TranslationsBackupRestoreDialogNl._(_root);
  @override
  late final _TranslationsBackupReminderNl reminder = _TranslationsBackupReminderNl._(_root);
  @override
  late final _TranslationsBackupEventsNl events = _TranslationsBackupEventsNl._(_root);
  @override
  late final _TranslationsBackupCloudNl cloud = _TranslationsBackupCloudNl._(_root);
}

// Path: breedings
class _TranslationsBreedingsNl extends TranslationsBreedingsDe {
  _TranslationsBreedingsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Kweek';
}

// Path: colors
class _TranslationsColorsNl extends TranslationsColorsDe {
  _TranslationsColorsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Kleuren';
  @override
  String get add => 'Kleur toevoegen';
  @override
  String get edit => 'Kleur bewerken';
  @override
  String get select => 'Kleur kiezen';
  @override
  String get pick => 'Kleur kiezen';
  @override
  String get delete => 'Kleur verwijderen?';
  @override
  String get color => 'Kleur';
  @override
  String get list_title => 'Kleurslagen';
  @override
  String get value_label => 'Kleurwaarde';
  @override
  String get genetics_section => 'Genetica (optioneel)';
  @override
  String get inheritance_label => 'Vererving';
  @override
  String get inheritance_hint => 'bijv. autosomaal dominant';
  @override
  String get birds_with_color => 'Vogels met deze kleur';
  @override
  String get no_birds_with_color => 'Geen vogels met deze kleur';
  @override
  String get empty => 'Geen kleuren';
  @override
  String get detail_title => 'Kleur';
  @override
  late final _TranslationsColorsStatsNl stats = _TranslationsColorsStatsNl._(_root);
}

// Path: cages
class _TranslationsCagesNl extends TranslationsCagesDe {
  _TranslationsCagesNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Volières';
  @override
  String get add => 'Volière toevoegen';
  @override
  String get edit => 'Volière bewerken';
  @override
  String get select => 'Volière kiezen';
  @override
  String get delete => 'Volière verwijderen?';
  @override
  String get name => 'Naam van de volière';
  @override
  String get description => 'Omschrijving';
  @override
  String get height => 'Hoogte';
  @override
  String get width => 'Breedte';
  @override
  String get depth => 'Diepte';
  @override
  String get list_title => 'Kooien';
  @override
  String get detail_title => 'Volière';
  @override
  late final _TranslationsCagesSectionNl section = _TranslationsCagesSectionNl._(_root);
  @override
  late final _TranslationsCagesFieldNl field = _TranslationsCagesFieldNl._(_root);
  @override
  late final _TranslationsCagesUnitsNl units = _TranslationsCagesUnitsNl._(_root);
  @override
  String get occupancy => 'Bezetting';
  @override
  String get occupied_label => 'Bezet';
  @override
  String get free_label => 'Vrij';
  @override
  String get birds_count_label => 'Vogels';
  @override
  String capacity_hint({required Object Occupied}) => 'Momenteel bezet: ${Occupied}. Verlagen onder ${Occupied} is niet mogelijk.';
  @override
  String get capacity_missing_hint => 'Capaciteit niet ingesteld — voer een waarde in';
  @override
  String get empty_badge => 'LEEG';
  @override
  String places_occupied({required Object Occupied, required Object Capacity}) => '${Occupied}/${Capacity} plaatsen bezet';
  @override
  String get empty_filter => 'Geen kooien voor dit filter';
  @override
  late final _TranslationsCagesFiltersNl filters = _TranslationsCagesFiltersNl._(_root);
  @override
  late final _TranslationsCagesTypesNl types = _TranslationsCagesTypesNl._(_root);
}

// Path: species
class _TranslationsSpeciesNl extends TranslationsSpeciesDe {
  _TranslationsSpeciesNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Soorten';
  @override
  String get add => 'Soort toevoegen';
  @override
  String get edit => 'Soort bewerken';
  @override
  String get select => 'Soort kiezen';
  @override
  String get delete => 'Soort verwijderen?';
  @override
  String get name => 'Naam van de soort';
  @override
  String get latin_name => 'Latijnse naam';
  @override
  String get detail_title => 'Soort';
  @override
  late final _TranslationsSpeciesSectionNl section = _TranslationsSpeciesSectionNl._(_root);
  @override
  String get incubation => 'Broedduur';
  @override
  String get fledge => 'Uitvliegen';
  @override
  String get days_short => 'd';
  @override
  String lifecycle_total({required Object Days}) => '${Days}d totaal';
  @override
  String get lifecycle_hint => 'Wordt automatisch gebruikt voor voorspellingen van uitkomen en uitvliegen.';
  @override
  String lifecycle_label_total({required Object Total}) => '${Total} DAGEN TOTAAL';
  @override
  String get chick_until_fledge => 'Jong tot uitvliegen';
  @override
  String hatch_label({required Object Day}) => 'Uitkomen · D${Day}';
  @override
  String fledge_label({required Object Day}) => 'Uitvliegen · D${Day}';
  @override
  String get latin_hint_example => 'bijv. Melopsittacus undulatus';
  @override
  String get latin_hint => 'Latijnse soortnaam voor exacte identificatie.';
  @override
  String get endangered => 'Bedreigde soort';
  @override
  String get endangered_hint => 'Markeert soorten die beschermd zijn of als bedreigd gelden.';
  @override
  String get endangered_not => 'Geen bedreigde soort';
  @override
  String get suggestions => 'Suggesties';
  @override
  String get incubation_found => 'Broedduur overgenomen';
  @override
  String get incubation_missing => 'Geen broedduur gevonden – voer deze zelf in.';
  @override
  String get scientific_name => 'Wetenschappelijke naam';
  @override
  String get empty => 'Geen soorten';
  @override
  String get birds_in_stock => 'Vogels in bestand';
  @override
  String get no_birds => 'Geen vogels';
  @override
  late final _TranslationsSpeciesStatsNl stats = _TranslationsSpeciesStatsNl._(_root);
  @override
  String stock_summary({required num count, required Object Count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(
        count,
        one: '${Count} vogel in bestand',
        other: '${Count} vogels in bestand',
      );
  @override
  String get already_added => 'Al toegevoegd';
  @override
  String get duplicate_warning => 'Er bestaat al een soort met deze naam.';
  @override
  String get endangered_only => 'Alleen bedreigde soorten';
  @override
  String get image_remove => 'Afbeelding verwijderen';
}

// Path: contacts
class _TranslationsContactsNl extends TranslationsContactsDe {
  _TranslationsContactsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String title({required Object Count}) => 'Contacten (${Count})';
  @override
  String get edit => 'Contact bewerken';
  @override
  String get create => 'Contact aanmaken';
  @override
  String get deleted => 'Contact verwijderd';
  @override
  String get saved => 'Contact opgeslagen';
  @override
  late final _TranslationsContactsFieldsNl fields = _TranslationsContactsFieldsNl._(_root);
  @override
  String get empty_list_information => 'Er zijn nog geen contacten. Je kunt contacten toevoegen of importeren uit een CSV-bestand.';
  @override
  String get import_button_text => 'Contacten importeren';
  @override
  String get add_contact_button_text => 'Contact toevoegen';
  @override
  String get delete => 'Contact verwijderen?';
  @override
  String get add => 'Contact toevoegen?';
  @override
  String get select => 'Contact kiezen';
  @override
  late final _TranslationsContactsSectionsNl sections = _TranslationsContactsSectionsNl._(_root);
  @override
  late final _TranslationsContactsActionButtonNl action_button = _TranslationsContactsActionButtonNl._(_root);
  @override
  late final _TranslationsContactsOverviewNl overview = _TranslationsContactsOverviewNl._(_root);
  @override
  late final _TranslationsContactsCardNl card = _TranslationsContactsCardNl._(_root);
  @override
  late final _TranslationsContactsDetailNl detail = _TranslationsContactsDetailNl._(_root);
}

// Path: breeding_pairs
class _TranslationsBreedingPairsNl extends TranslationsBreedingPairsDe {
  _TranslationsBreedingPairsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Kweekkoppel';
  @override
  String get add => 'Kweekkoppel toevoegen';
  @override
  String get edit => 'Kweekkoppel bewerken';
  @override
  String get delete => 'Kweekkoppel verwijderen?';
  @override
  late final _TranslationsBreedingPairsStatusNl status = _TranslationsBreedingPairsStatusNl._(_root);
  @override
  String get start_date => 'Startdatum';
  @override
  String get end_date => 'Einddatum';
  @override
  String get notes => 'Notities';
  @override
  late final _TranslationsBreedingPairsYearFilterNl year_filter = _TranslationsBreedingPairsYearFilterNl._(_root);
  @override
  late final _TranslationsBreedingPairsFilterNl filter = _TranslationsBreedingPairsFilterNl._(_root);
  @override
  String get pair_one => 'Koppel';
  @override
  String get pair_other => 'Koppels';
  @override
  String cages_count({required Object Count}) => '${Count} kooien';
  @override
  String active_broods_one({required Object Count}) => '${Count} actief broedsel';
  @override
  String active_broods_other({required Object Count}) => '${Count} actieve broedsels';
  @override
  String broods_total_one({required Object Count}) => '${Count} broedsel';
  @override
  String broods_total_other({required Object Count}) => '${Count} broedsels';
  @override
  late final _TranslationsBreedingPairsBroodStatusNl brood_status = _TranslationsBreedingPairsBroodStatusNl._(_root);
  @override
  String get finished_tag => 'BEËINDIGD';
  @override
  String get no_cage => 'Zonder kooi';
  @override
  String since({required Object Date}) => 'sinds ${Date}';
  @override
  String until({required Object Date}) => 'tot ${Date}';
  @override
  String empty_for_year({required Object Year}) => 'Geen kweekkoppels in ${Year}.';
  @override
  String get empty => 'Geen kweekkoppels.';
  @override
  String get search_hint => 'Ring, kooi zoeken …';
  @override
  late final _TranslationsBreedingPairsSortByNl sort_by = _TranslationsBreedingPairsSortByNl._(_root);
  @override
  late final _TranslationsBreedingPairsStatsNl stats = _TranslationsBreedingPairsStatsNl._(_root);
}

// Path: resources
class _TranslationsResourcesNl extends TranslationsResourcesDe {
  _TranslationsResourcesNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Bronnen';
  @override
  String usage_count({required num count, required Object N}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(
        count,
        zero: 'Bij geen enkele vogel gebruikt',
        one: 'Gebruikt bij één vogel',
        other: 'Gebruikt bij ${N} vogels',
      );
  @override
  String get no_search_results => 'Niets gevonden, tik op "Toevoegen" om een nieuwe vermelding te maken.';
  @override
  late final _TranslationsResourcesSectionNl section = _TranslationsResourcesSectionNl._(_root);
  @override
  late final _TranslationsResourcesActionsNl actions = _TranslationsResourcesActionsNl._(_root);
  @override
  late final _TranslationsResourcesColorPickerNl color_picker = _TranslationsResourcesColorPickerNl._(_root);
  @override
  late final _TranslationsResourcesFieldNl field = _TranslationsResourcesFieldNl._(_root);
  @override
  late final _TranslationsResourcesDeleteNl delete = _TranslationsResourcesDeleteNl._(_root);
  @override
  late final _TranslationsResourcesSortNl sort = _TranslationsResourcesSortNl._(_root);
}

// Path: birds
class _TranslationsBirdsNl extends TranslationsBirdsDe {
  _TranslationsBirdsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Vogels';
  @override
  late final _TranslationsBirdsOverviewNl overview = _TranslationsBirdsOverviewNl._(_root);
  @override
  late final _TranslationsBirdsFilterNl filter = _TranslationsBirdsFilterNl._(_root);
}

// Path: pedigree
class _TranslationsPedigreeNl extends TranslationsPedigreeDe {
  _TranslationsPedigreeNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Stamboom';
  @override
  String get subtitle => 'Afstammingskaart';
  @override
  String get col_bird => 'Vogel';
  @override
  String get col_parents => 'Ouders';
  @override
  String get col_grandparents => 'Grootouders';
  @override
  String get col_greatgrandparents => 'Overgrootouders';
  @override
  String get col_ancestors => 'Voorouders';
  @override
  String get section_ancestors => 'Voorouders';
  @override
  String get section_descendants => 'Nakomelingen';
  @override
  String get no_descendants => 'Geen nakomelingen vastgelegd';
  @override
  String get unknown => 'Onbekend';
  @override
  String get assign_parent => 'Ouder toewijzen';
  @override
  String get add_father => 'Vader toevoegen';
  @override
  String get add_mother => 'Moeder toevoegen';
  @override
  String get common_ancestor => 'Gemeenschappelijke voorouder (inteelt)';
  @override
  String get sold => 'Verkocht';
  @override
  String get not_own => 'Niet in bezit';
  @override
  String get deceased => 'Overleden';
  @override
  String get share => 'Delen';
  @override
  String share_filename({required Object Ring}) => 'stamboom_${Ring}';
  @override
  String get depth => 'Diepte';
  @override
  String get depth_all => 'Alle';
  @override
  String get inbreeding_explainer => 'Deze vogels zijn zowel via de vaderlijke als via de moederlijke lijn verwant.';
  @override
  String get via_father => 'via vader';
  @override
  String get via_mother => 'via moeder';
  @override
  late final _TranslationsPedigreeStatsNl stats = _TranslationsPedigreeStatsNl._(_root);
  @override
  String get swipe_hint => 'Veeg voor meer overzicht';
}

// Path: inbreeding
class _TranslationsInbreedingNl extends TranslationsInbreedingDe {
  _TranslationsInbreedingNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get coefficient => 'Inteeltcoëfficiënt';
  @override
  String get coefficient_short => 'F';
  @override
  String get severity_none => 'Geen inteelt';
  @override
  String get severity_low => 'Laag';
  @override
  String get severity_elevated => 'Verhoogd';
  @override
  String get severity_high => 'Hoog';
  @override
  String get common_ancestors_one => '1 gemeenschappelijke voorouder';
  @override
  String common_ancestors_other({required Object Count}) => '${Count} gemeenschappelijke voorouders';
  @override
  String get path_contribution => 'Bijdrage';
  @override
  String banner_label({required Object Percent}) => 'Inteeltcoëfficiënt: ${Percent}';
  @override
  String get pair_warning_title => 'Inteeltwaarschuwing';
  @override
  String pair_warning_body({required Object Percent, required Object Severity}) =>
      'Het koppelen van deze vogels geeft een inteeltcoëfficiënt van ${Percent} (${Severity}). Toch aanmaken?';
  @override
  String get proceed_anyway => 'Toch aanmaken';
}

// Path: bird
class _TranslationsBirdNl extends TranslationsBirdDe {
  _TranslationsBirdNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Vogel';
  @override
  String get edit => 'Vogel bewerken';
  @override
  String get deleted => 'Vogel verwijderd';
  @override
  String get saved => 'Vogel opgeslagen';
  @override
  String get delete => 'Vogel verwijderen?';
  @override
  String get duplicate => 'Vogel dupliceren';
  @override
  String get add => 'Vogel toevoegen';
  @override
  String get select_color_label => 'Kleur kiezen';
  @override
  String get select_species_label => 'Soort kiezen';
  @override
  String get select_cage_label => 'Volière kiezen';
  @override
  String get select_owner_label => 'Eigenaar kiezen';
  @override
  String get select_sold_to_label => 'Koper kiezen';
  @override
  String get select_bought_from_label => 'Verkoper kiezen';
  @override
  String created_information({required Object DateTimeDate, required Object Time}) => 'Aangemaakt op ${DateTimeDate} om ${Time}';
  @override
  late final _TranslationsBirdTabsNl tabs = _TranslationsBirdTabsNl._(_root);
  @override
  late final _TranslationsBirdSummaryNl summary = _TranslationsBirdSummaryNl._(_root);
  @override
  late final _TranslationsBirdSectionsNl sections = _TranslationsBirdSectionsNl._(_root);
}

// Path: pair_detail
class _TranslationsPairDetailNl extends TranslationsPairDetailDe {
  _TranslationsPairDetailNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get father_label => '♂ VADER';
  @override
  String get mother_label => '♀ MOEDER';
  @override
  String get current_brood => 'Huidig broedsel';
  @override
  String get history => 'Verloop';
  @override
  String history_count_one({required Object Count}) => '${Count} broedsel';
  @override
  String history_count_other({required Object Count}) => '${Count} broedsels';
  @override
  String get brood_short => 'BROEDSEL';
  @override
  String day({required Object Day}) => 'Dag ${Day}';
  @override
  String start_label({required Object Date}) => 'Start: ${Date}';
  @override
  String get no_current_brood => 'Geen actief broedsel';
  @override
  late final _TranslationsPairDetailKpiNl kpi = _TranslationsPairDetailKpiNl._(_root);
  @override
  String get new_brood => 'Nieuw broedsel';
  @override
  String since({required Object Date}) => 'sinds ${Date}';
}

// Path: brood
class _TranslationsBroodNl extends TranslationsBroodDe {
  _TranslationsBroodNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Legsel';
  @override
  String get overview => 'Broedoverzicht';
  @override
  String get latest => 'Laatste broedsel';
  @override
  String get add => 'Legsel toevoegen';
  @override
  String get delete => 'Legsel verwijderen?';
  @override
  String get edit => 'Legsel bewerken';
  @override
  String get empty => 'Nog geen legsel toegevoegd';
  @override
  String since({required Object Date}) => 'Sinds ${Date}';
  @override
  String eggs_count({required num count, required Object Count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(
        count,
        zero: 'Geen eieren',
        one: '1 ei',
        other: '${Count} eieren',
      );
  @override
  late final _TranslationsBroodKpiNl kpi = _TranslationsBroodKpiNl._(_root);
  @override
  String hatched_count({required num count, required Object Count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(
        count,
        zero: 'Geen uitgekomen',
        one: '1 uitgekomen',
        other: '${Count} uitgekomen',
      );
  @override
  String fledged_count({required num count, required Object Count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(
        count,
        zero: 'Geen uitgevlogen',
        one: '1 uitgevlogen',
        other: '${Count} uitgevlogen',
      );
  @override
  String get notes => 'Notities (optioneel)';
  @override
  String created_information({required Object DateTimeDate, required Object Time}) => 'Aangemaakt op ${DateTimeDate} om ${Time}';
}

// Path: egg
class _TranslationsEggNl extends TranslationsEggDe {
  _TranslationsEggNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Ei';
  @override
  String get add => 'Ei toevoegen';
  @override
  late final _TranslationsEggStatusNl status = _TranslationsEggStatusNl._(_root);
  @override
  late final _TranslationsEggActionNl action = _TranslationsEggActionNl._(_root);
  @override
  String get pick_laid_date => 'Legdatum kiezen';
  @override
  String get pick_fledged_date => 'Datum uitvliegen kiezen';
  @override
  String get pick_hatched_date => 'Datum uitkomen kiezen';
  @override
  String get pick_fertilized_date => 'Datum bevruchting kiezen';
  @override
  String get pick_unfertilized_date => 'Datum onbevrucht kiezen';
  @override
  String get pick_died_date => 'Sterfdatum kiezen';
  @override
  String get in_stock => 'In bestand';
  @override
  late final _TranslationsEggLifecycleNl lifecycle = _TranslationsEggLifecycleNl._(_root);
}

// Path: common
class _TranslationsCommonNl extends TranslationsCommonDe {
  _TranslationsCommonNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsCommonBottomSheetNl bottom_sheet = _TranslationsCommonBottomSheetNl._(_root);
  @override
  late final _TranslationsCommonSaleStatusNl sale_status = _TranslationsCommonSaleStatusNl._(_root);
  @override
  String get all_label => 'Alle';
  @override
  String get more_label => 'Meer';
  @override
  String get less_label => 'Minder';
  @override
  String get search => 'Zoeken';
  @override
  String get search_hint => 'Zoeken ...';
  @override
  String countbird({required num count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(
        count,
        zero: 'Geen vogels',
        one: '1 vogel',
        other: '{count} vogels',
      );
  @override
  String get optional => 'Optioneel';
  @override
  String get apply => 'Toepassen';
  @override
  String get reset => 'Herstellen';
  @override
  String get add => 'Toevoegen';
  @override
  String get close => 'Sluiten';
  @override
  String get cancel => 'Annuleren';
  @override
  String get ok => 'Ok';
  @override
  late final _TranslationsCommonSexNl sex = _TranslationsCommonSexNl._(_root);
  @override
  late final _TranslationsCommonSellNl sell = _TranslationsCommonSellNl._(_root);
  @override
  late final _TranslationsCommonBoughtNl bought = _TranslationsCommonBoughtNl._(_root);
  @override
  String eggs_short({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(
        n,
        one: 'Ei',
        other: 'Eieren',
      );
  @override
  String get laid_short => 'gel.';
  @override
  String get fertilzed_short => 'bevr.';
  @override
  String get hatched_short => 'uitgek.';
  @override
  String get fledged_short => 'uitgev.';
  @override
  String get died_short => 'gest.';
  @override
  late final _TranslationsCommonSortingNl sorting = _TranslationsCommonSortingNl._(_root);
  @override
  String get something_went_wrong => 'Oeps, er is iets misgegaan.';
  @override
  String get save => 'Opslaan';
  @override
  String get general => 'Algemeen';
  @override
  String get ringnumber => 'Ringnummer';
  @override
  String get notes => 'Notities';
  @override
  String get clutches => 'Legsels';
  @override
  String get laid => 'Gelegd';
  @override
  String get fertilzed => 'Bevrucht';
  @override
  String get hatched => 'Uitgekomen';
  @override
  String get fledged => 'Uitgevlogen';
  @override
  String get origin => 'Herkomst';
  @override
  String get species => 'Soort';
  @override
  String get color => 'Kleur';
  @override
  String get cage => 'Volière';
  @override
  String get owner => 'Eigenaar';
  @override
  late final _TranslationsCommonSoldNl sold = _TranslationsCommonSoldNl._(_root);
  @override
  String get gender => 'Geslacht';
  @override
  String get died_at => 'Sterfdatum';
  @override
  String get born_at => 'Geboortedatum';
  @override
  String get father => 'Vader';
  @override
  String get mother => 'Moeder';
  @override
  String get partner => 'Partner';
  @override
  String get is_for_sale => 'Te koop';
  @override
  String get yes => 'Ja';
  @override
  String get no => 'Nee';
  @override
  late final _TranslationsCommonUnitNl unit = _TranslationsCommonUnitNl._(_root);
  @override
  String get email => 'E-mail';
  @override
  String get password => 'Wachtwoord';
  @override
  late final _TranslationsCommonHintNl hint = _TranslationsCommonHintNl._(_root);
  @override
  String get required => 'Dit veld moet ingevuld worden';
}

// Path: auth
class _TranslationsAuthNl extends TranslationsAuthDe {
  _TranslationsAuthNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get sign_in => 'Inloggen';
  @override
  String get sign_up => 'Registreren';
  @override
  String get confirm_password => 'Wachtwoord bevestigen';
  @override
  String get passwords_do_not_match => 'Wachtwoorden komen niet overeen';
  @override
  String get create_account => 'Account aanmaken';
  @override
  String get first_name => 'Voornaam';
  @override
  String get last_name => 'Achternaam';
  @override
  String get sign_in_text =>
      'Log in om verder te gaan. Als je nog geen account hebt, kun je er een aanmaken. Ga daarvoor naar het tabblad "Account aanmaken".';
  @override
  String get sign_up_text =>
      'Maak een account aan om verder te gaan. Als je al een account hebt, kun je gewoon inloggen. Ga daarvoor naar het tabblad "Inloggen".';
  @override
  late final _TranslationsAuthValidatorsNl validators = _TranslationsAuthValidatorsNl._(_root);
}

// Path: csv_import
class _TranslationsCsvImportNl extends TranslationsCsvImportDe {
  _TranslationsCsvImportNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'CSV-import';
  @override
  String get select_type => 'Kies wat je wilt importeren:';
  @override
  String get back => 'Terug';
  @override
  String get select_file => 'CSV-bestand kiezen';
  @override
  String get cancel => 'Annuleren';
  @override
  String get new_import => 'Nieuwe import';
  @override
  String get retry => 'Opnieuw proberen';
  @override
  String reading({required Object FileName}) => '"${FileName}" wordt gelezen...';
  @override
  String importing({required Object ItemName}) => '${ItemName} worden geïmporteerd...';
  @override
  String progress({required Object Current, required Object Total}) => '${Current} van ${Total}';
  @override
  String get completed => 'Import voltooid';
  @override
  late final _TranslationsCsvImportBirdsNl birds = _TranslationsCsvImportBirdsNl._(_root);
  @override
  late final _TranslationsCsvImportContactsNl contacts = _TranslationsCsvImportContactsNl._(_root);
  @override
  late final _TranslationsCsvImportColumnsNl columns = _TranslationsCsvImportColumnsNl._(_root);
  @override
  late final _TranslationsCsvImportPreviewNl preview = _TranslationsCsvImportPreviewNl._(_root);
  @override
  late final _TranslationsCsvImportTableNl table = _TranslationsCsvImportTableNl._(_root);
  @override
  late final _TranslationsCsvImportStatusNl status = _TranslationsCsvImportStatusNl._(_root);
  @override
  late final _TranslationsCsvImportSummaryNl summary = _TranslationsCsvImportSummaryNl._(_root);
  @override
  late final _TranslationsCsvImportErrorsNl errors = _TranslationsCsvImportErrorsNl._(_root);
}

// Path: menu
class _TranslationsMenuNl extends TranslationsMenuDe {
  _TranslationsMenuNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsMenuSectionsNl sections = _TranslationsMenuSectionsNl._(_root);
  @override
  late final _TranslationsMenuBirdsNl birds = _TranslationsMenuBirdsNl._(_root);
  @override
  late final _TranslationsMenuContactsNl contacts = _TranslationsMenuContactsNl._(_root);
  @override
  late final _TranslationsMenuBreedingsNl breedings = _TranslationsMenuBreedingsNl._(_root);
  @override
  late final _TranslationsMenuResourcesNl resources = _TranslationsMenuResourcesNl._(_root);
  @override
  late final _TranslationsMenuFinancesNl finances = _TranslationsMenuFinancesNl._(_root);
  @override
  late final _TranslationsMenuCsvImportNl csv_import = _TranslationsMenuCsvImportNl._(_root);
  @override
  late final _TranslationsMenuAccountNl account = _TranslationsMenuAccountNl._(_root);
  @override
  late final _TranslationsMenuSpeciesNl species = _TranslationsMenuSpeciesNl._(_root);
  @override
  late final _TranslationsMenuCagesNl cages = _TranslationsMenuCagesNl._(_root);
  @override
  late final _TranslationsMenuColorsNl colors = _TranslationsMenuColorsNl._(_root);
  @override
  late final _TranslationsMenuFinanceCategoriesNl finance_categories = _TranslationsMenuFinanceCategoriesNl._(_root);
  @override
  String get add_bird => 'Vogel toevoegen';
}

// Path: error
class _TranslationsErrorNl extends TranslationsErrorDe {
  _TranslationsErrorNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get message => 'Sorry, er is een fout opgetreden';
}

// Path: dialog
class _TranslationsDialogNl extends TranslationsDialogDe {
  _TranslationsDialogNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsDialogDiscardChangesNl discard_changes = _TranslationsDialogDiscardChangesNl._(_root);
  @override
  late final _TranslationsDialogDeleteEntryNl delete_entry = _TranslationsDialogDeleteEntryNl._(_root);
}

// Path: pop_up_menu
class _TranslationsPopUpMenuNl extends TranslationsPopUpMenuDe {
  _TranslationsPopUpMenuNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get open => 'Openen';
  @override
  String get edit => 'Bewerken';
  @override
  String get show => 'Tonen';
  @override
  String get pedigree => 'Stamboom';
  @override
  String get documents => 'Documenten';
  @override
  String get set_ringnumber => 'Ringnummer instellen';
  @override
  String get set_color => 'Kleur instellen';
  @override
  String get add_to_stock => 'In bestand opnemen';
  @override
  String get duplicate => 'Dupliceren';
  @override
  String get delete => 'Verwijderen';
}

// Path: export
class _TranslationsExportNl extends TranslationsExportDe {
  _TranslationsExportNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Exporteren';
  @override
  String get action => 'Exporteren';
  @override
  String get scope_hint => 'Precies de nu getoonde lijst wordt geëxporteerd.';
  @override
  String get file_name_label => 'Bestandsnaam';
  @override
  String get empty => 'Er is niets om te exporteren.';
  @override
  late final _TranslationsExportEventsNl events = _TranslationsExportEventsNl._(_root);
  @override
  String get row_count_one => '1 vermelding';
  @override
  String row_count_other({required Object Count}) => '${Count} vermeldingen';
  @override
  late final _TranslationsExportFormatNl format = _TranslationsExportFormatNl._(_root);
  @override
  late final _TranslationsExportPresetNl preset = _TranslationsExportPresetNl._(_root);
  @override
  late final _TranslationsExportPdfNl pdf = _TranslationsExportPdfNl._(_root);
  @override
  late final _TranslationsExportHeaderNl header = _TranslationsExportHeaderNl._(_root);
  @override
  String get profile_label => 'Briefhoofd';
  @override
  late final _TranslationsExportSummaryNl summary = _TranslationsExportSummaryNl._(_root);
  @override
  late final _TranslationsExportListsNl lists = _TranslationsExportListsNl._(_root);
  @override
  late final _TranslationsExportFileNamesNl file_names = _TranslationsExportFileNamesNl._(_root);
  @override
  late final _TranslationsExportPresetsNl presets = _TranslationsExportPresetsNl._(_root);
  @override
  late final _TranslationsExportColumnsNl columns = _TranslationsExportColumnsNl._(_root);
}

// Path: documents
class _TranslationsDocumentsNl extends TranslationsDocumentsDe {
  _TranslationsDocumentsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Document aanmaken';
  @override
  String get action => 'Aanmaken';
  @override
  String get type_label => 'Document';
  @override
  late final _TranslationsDocumentsTypesNl types = _TranslationsDocumentsTypesNl._(_root);
  @override
  late final _TranslationsDocumentsProfileNl profile = _TranslationsDocumentsProfileNl._(_root);
  @override
  late final _TranslationsDocumentsPedigreeNl pedigree = _TranslationsDocumentsPedigreeNl._(_root);
  @override
  late final _TranslationsDocumentsReceiptNl receipt = _TranslationsDocumentsReceiptNl._(_root);
}

// Path: snackbars
class _TranslationsSnackbarsNl extends TranslationsSnackbarsDe {
  _TranslationsSnackbarsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get sign_in_failed => 'Inloggen mislukt, controleer je inloggegevens en je internetverbinding.';
  @override
  String get sign_up_failed => 'Registreren mislukt, controleer je invoer en je internetverbinding.';
  @override
  String get sign_up_success => 'Registratie geslaagd, je wordt automatisch ingelogd.';
}

// Path: finances.categories
class _TranslationsFinancesCategoriesNl extends TranslationsFinancesCategoriesDe {
  _TranslationsFinancesCategoriesNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Categorieën';
  @override
  String get category => 'Categorie';
  @override
  String get add => 'Categorie toevoegen';
  @override
  String get edit => 'Categorie bewerken';
  @override
  String get select => 'Categorie kiezen';
  @override
  String get delete => 'Categorie verwijderen?';
  @override
  String get name => 'Naam van de categorie';
  @override
  String get color => 'Kleur van de categorie';
  @override
  String get description => 'Omschrijving';
  @override
  String get list_title => 'Categorieën';
  @override
  String get designation => 'Aanduiding';
  @override
  String get bookings => 'Boekingen';
  @override
  late final _TranslationsFinancesCategoriesFiltersNl filters = _TranslationsFinancesCategoriesFiltersNl._(_root);
  @override
  late final _TranslationsFinancesCategoriesGroupsNl groups = _TranslationsFinancesCategoriesGroupsNl._(_root);
  @override
  late final _TranslationsFinancesCategoriesKindSingularNl kind_singular = _TranslationsFinancesCategoriesKindSingularNl._(_root);
  @override
  late final _TranslationsFinancesCategoriesPillNl pill = _TranslationsFinancesCategoriesPillNl._(_root);
  @override
  String get empty => 'Geen categorieën';
  @override
  String type_lock_hint({required Object Usage}) => 'Type kan na het aanmaken niet meer worden gewijzigd — ${Usage} boekingen gekoppeld.';
  @override
  String get type_lock_default => 'Bepaalt het rekenteken voor boekingen.';
  @override
  String get detail_title => 'Financiële categorie';
  @override
  late final _TranslationsFinancesCategoriesDetailNl detail = _TranslationsFinancesCategoriesDetailNl._(_root);
  @override
  late final _TranslationsFinancesCategoriesMonthsShortNl months_short = _TranslationsFinancesCategoriesMonthsShortNl._(_root);
}

// Path: finances.add
class _TranslationsFinancesAddNl extends TranslationsFinancesAddDe {
  _TranslationsFinancesAddNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Boeking toevoegen';
  @override
  String get title => 'Omschrijving';
  @override
  String get date => 'Datum';
  @override
  String get category => 'Categorie kiezen';
  @override
  String get amount => 'Bedrag invoeren';
  @override
  String get amount_invalid => 'Voer een geldig bedrag in';
  @override
  String get notes => 'Omschrijving';
  @override
  String get bird => 'Betreffende vogel';
}

// Path: finances.kind
class _TranslationsFinancesKindNl extends TranslationsFinancesKindDe {
  _TranslationsFinancesKindNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Soort';
  @override
  String get income => 'Inkomsten';
  @override
  String get expense => 'Uitgaven';
}

// Path: finances.summary
class _TranslationsFinancesSummaryNl extends TranslationsFinancesSummaryDe {
  _TranslationsFinancesSummaryNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get net => 'Saldo';
  @override
  String get net_label => 'NETTO';
  @override
  String get today => 'VANDAAG';
  @override
  String get income_label => 'INKOMSTEN';
  @override
  String get expense_label => 'UITGAVEN';
}

// Path: finances.view
class _TranslationsFinancesViewNl extends TranslationsFinancesViewDe {
  _TranslationsFinancesViewNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Alle';
  @override
  String get today => 'Vandaag';
  @override
  String get yesterday => 'Gisteren';
  @override
  String get search_hint => 'Boeking zoeken …';
  @override
  String get empty => 'Geen boekingen in deze periode';
  @override
  String get categories_filter_title => 'Op categorie filteren';
  @override
  String get all_categories => 'Alle categorieën';
  @override
  String get filter_button => 'Filter';
  @override
  String get filter_sheet_title => 'Categorieën filteren';
  @override
  String get filter_clear_all => 'Alles deselecteren';
  @override
  String get filter_apply => 'Toepassen';
  @override
  String get filter_search_hint => 'Categorie zoeken …';
}

// Path: finances.scope
class _TranslationsFinancesScopeNl extends TranslationsFinancesScopeDe {
  _TranslationsFinancesScopeNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get month => 'Maand';
  @override
  String get year => 'Jaar';
  @override
  String get all => 'Alle';
  @override
  String get custom => 'Periode';
  @override
  String get current_year => 'DIT JAAR';
  @override
  String get from_short => 'Van';
  @override
  String get to_short => 'Tot';
  @override
  String get pick_date => 'Datum kiezen';
}

// Path: finances.filter
class _TranslationsFinancesFilterNl extends TranslationsFinancesFilterDe {
  _TranslationsFinancesFilterNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get bird => 'Vogel';
  @override
  String get date_range => 'Periode';
  @override
  String get from => 'Van';
  @override
  String get to => 'Tot';
  @override
  String get all_years => 'Alle';
}

// Path: finances.sorting
class _TranslationsFinancesSortingNl extends TranslationsFinancesSortingDe {
  _TranslationsFinancesSortingNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get date_desc => 'Datum (nieuw → oud)';
  @override
  String get date_asc => 'Datum (oud → nieuw)';
  @override
  String get amount_desc => 'Bedrag (hoog → laag)';
  @override
  String get amount_asc => 'Bedrag (laag → hoog)';
}

// Path: account.switch_to_local_dialog
class _TranslationsAccountSwitchToLocalDialogNl extends TranslationsAccountSwitchToLocalDialogDe {
  _TranslationsAccountSwitchToLocalDialogNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Naar lokale modus wisselen';
  @override
  String get content =>
      'Al je gegevens worden van de server naar de lokale database gekopieerd. Daarna start de app opnieuw op in lokale modus.\n\nWil je doorgaan?';
  @override
  String get confirm => 'Wisselen';
}

// Path: account.local_mode
class _TranslationsAccountLocalModeNl extends TranslationsAccountLocalModeDe {
  _TranslationsAccountLocalModeNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Lokale modus';
  @override
  String get description => 'Alle gegevens worden lokaal op dit apparaat opgeslagen.';
}

// Path: account.appearance
class _TranslationsAccountAppearanceNl extends TranslationsAccountAppearanceDe {
  _TranslationsAccountAppearanceNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Weergave';
  @override
  String get system => 'Systeem';
  @override
  String get light => 'Licht';
  @override
  String get dark => 'Donker';
}

// Path: account.language
class _TranslationsAccountLanguageNl extends TranslationsAccountLanguageDe {
  _TranslationsAccountLanguageNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Taal';
  @override
  String get system => 'Systeemtaal';
  @override
  String get sheet_title => 'Taal kiezen';
}

// Path: account.currency
class _TranslationsAccountCurrencyNl extends TranslationsAccountCurrencyDe {
  _TranslationsAccountCurrencyNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Valuta';
  @override
  String get sheet_title => 'Valuta kiezen';
  @override
  String get hint => 'Bedragen krijgen alleen een ander label, ze worden niet omgerekend.';
}

// Path: account.profile
class _TranslationsAccountProfileNl extends TranslationsAccountProfileDe {
  _TranslationsAccountProfileNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String breeder_number({required Object Value}) => 'Kwekernummer ${Value}';
  @override
  String get no_contact => 'Geen profielcontact ingesteld';
  @override
  String get edit => 'Profiel bewerken';
}

// Path: account.user
class _TranslationsAccountUserNl extends TranslationsAccountUserDe {
  _TranslationsAccountUserNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String email({required Object Value}) => 'E-mail: ${Value}';
  @override
  String first_name({required Object Value}) => 'Voornaam: ${Value}';
  @override
  String last_name({required Object Value}) => 'Achternaam: ${Value}';
}

// Path: account.events
class _TranslationsAccountEventsNl extends TranslationsAccountEventsDe {
  _TranslationsAccountEventsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String switch_failed({required Object Error}) => 'Wisselen mislukt: ${Error}';
  @override
  String switched_to_local({required num count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(
        count,
        one: '1 vermelding overgezet. Lokale modus actief.',
        other: '{count} vermeldingen overgezet. Lokale modus actief.',
      );
}

// Path: backup.external
class _TranslationsBackupExternalNl extends TranslationsBackupExternalDe {
  _TranslationsBackupExternalNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get never => 'Nog nooit extern opgeslagen';
  @override
  String get today => 'Laatst extern opgeslagen: vandaag';
  @override
  String days_ago({required num count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(
        count,
        one: 'Laatst extern opgeslagen: 1 dag geleden',
        other: 'Laatst extern opgeslagen: {count} dagen geleden',
      );
}

// Path: backup.actions
class _TranslationsBackupActionsNl extends TranslationsBackupActionsDe {
  _TranslationsBackupActionsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get share_latest => 'Laatste back-up delen';
  @override
  String get create_now => 'Nu back-up maken';
  @override
  String get create_and_save => 'Back-up maken & opslaan';
  @override
  String get restore => 'Back-up terugzetten';
  @override
  String get manage => 'Alle back-ups beheren…';
  @override
  String get kNew => 'Nieuw';
}

// Path: backup.restore_sheet
class _TranslationsBackupRestoreSheetNl extends TranslationsBackupRestoreSheetDe {
  _TranslationsBackupRestoreSheetNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Back-up kiezen';
  @override
  String get available => 'Beschikbare back-ups';
  @override
  String get kind_cloud => 'CLOUD';
  @override
  String get kind_manual => 'HANDMATIG';
  @override
  String get pick_file_title => 'Bestand van apparaat kiezen';
  @override
  String get pick_file_sub => 'Handmatig een .zip-back-up kiezen';
  @override
  String get empty => 'Geen back-ups gevonden';
  @override
  String get choose_folder_first => 'Kies eerst een cloudmap';
  @override
  String get confirm_title => 'Back-up terugzetten?';
  @override
  String warning({required Object Name}) =>
      'Je huidige gegevens op dit apparaat worden door deze stand vervangen. Wijzigingen van na „${Name}” gaan verloren.';
  @override
  String get confirm_button => 'Ja, vervangen en terugzetten';
  @override
  String get restoring => 'Bezig met terugzetten …';
  @override
  String get back => 'Terug';
}

// Path: backup.menu
class _TranslationsBackupMenuNl extends TranslationsBackupMenuDe {
  _TranslationsBackupMenuNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get share => 'Delen';
  @override
  String get restore => 'Terugzetten';
  @override
  String get delete => 'Verwijderen';
}

// Path: backup.delete_dialog
class _TranslationsBackupDeleteDialogNl extends TranslationsBackupDeleteDialogDe {
  _TranslationsBackupDeleteDialogNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Back-up verwijderen?';
  @override
  String get confirm => 'Verwijderen';
}

// Path: backup.restore_dialog
class _TranslationsBackupRestoreDialogNl extends TranslationsBackupRestoreDialogDe {
  _TranslationsBackupRestoreDialogNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Back-up terugzetten';
  @override
  String get content_picked => 'Huidige lokale gegevens worden overschreven met de gekozen back-up. Doorgaan?';
  @override
  String content_named({required Object Name}) => 'Huidige lokale gegevens worden overschreven met de back-up\n"${Name}".\n\nDoorgaan?';
  @override
  String get confirm => 'Terugzetten';
}

// Path: backup.reminder
class _TranslationsBackupReminderNl extends TranslationsBackupReminderDe {
  _TranslationsBackupReminderNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Back-up veiligstellen';
  @override
  String get never => 'Je hebt nog geen externe back-up opgeslagen.';
  @override
  String age({required num count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(
        count,
        one: 'Je laatste externe back-up is 1 dag geleden.',
        other: 'Je laatste externe back-up is {count} dagen geleden.',
      );
  @override
  String get body => 'Sla hem nu op een veilige plek op (iCloud, Drive, mail), zodat je gegevens niet verloren gaan als je je apparaat kwijtraakt.';
  @override
  String get snooze => 'Later herinneren';
  @override
  String get already_saved => 'Al opgeslagen';
  @override
  String get share_now => 'Nu delen';
}

// Path: backup.events
class _TranslationsBackupEventsNl extends TranslationsBackupEventsDe {
  _TranslationsBackupEventsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get created => 'Back-up gemaakt';
  @override
  String create_failed({required Object Error}) => 'Back-up mislukt: ${Error}';
  @override
  String share_failed({required Object Error}) => 'Delen mislukt: ${Error}';
  @override
  String delete_failed({required Object Error}) => 'Verwijderen mislukt: ${Error}';
  @override
  String restore_failed({required Object Error}) => 'Terugzetten mislukt: ${Error}';
}

// Path: backup.cloud
class _TranslationsBackupCloudNl extends TranslationsBackupCloudDe {
  _TranslationsBackupCloudNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get section_title => 'Cloudback-up';
  @override
  String get enable => 'Automatisch in de cloud opslaan';
  @override
  String get choose_location => 'Cloudmap kiezen…';
  @override
  String get location_none => 'Geen cloudmap gekozen';
  @override
  String location_set({required Object Name}) => 'Doel: ${Name}';
  @override
  String get sync_now => 'Nu synchroniseren';
  @override
  String get auto_title => 'Automatische cloudback-up';
  @override
  String get auto_on => 'Actief · slaat je gegevens automatisch op';
  @override
  String get auto_off => 'Uitgeschakeld';
  @override
  String get folder_label => 'Cloudmap';
  @override
  String get change => 'Wijzigen';
  @override
  late final _TranslationsBackupCloudChooseFolderDialogNl choose_folder_dialog = _TranslationsBackupCloudChooseFolderDialogNl._(_root);
  @override
  late final _TranslationsBackupCloudSyncAfterChangeDialogNl sync_after_change_dialog = _TranslationsBackupCloudSyncAfterChangeDialogNl._(_root);
  @override
  String get last_sync_label => 'Laatste synchronisatie';
  @override
  String get syncing => 'Bezig met synchroniseren …';
  @override
  String get syncing_hint => 'Je foto\'s en gegevens worden naar de cloud geüpload.';
  @override
  String get settings => 'Sync-instellingen';
  @override
  late final _TranslationsBackupCloudIntervalNl interval = _TranslationsBackupCloudIntervalNl._(_root);
  @override
  late final _TranslationsBackupCloudStatusNl status = _TranslationsBackupCloudStatusNl._(_root);
  @override
  late final _TranslationsBackupCloudEventsNl events = _TranslationsBackupCloudEventsNl._(_root);
}

// Path: colors.stats
class _TranslationsColorsStatsNl extends TranslationsColorsStatsDe {
  _TranslationsColorsStatsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get birds => 'Vogels';
  @override
  String get male_roosters => 'Mannen';
  @override
  String get female_hens => 'Poppen';
}

// Path: cages.section
class _TranslationsCagesSectionNl extends TranslationsCagesSectionDe {
  _TranslationsCagesSectionNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get basics => 'Basisgegevens';
  @override
  String get capacity => 'Capaciteit & bezetting';
}

// Path: cages.field
class _TranslationsCagesFieldNl extends TranslationsCagesFieldDe {
  _TranslationsCagesFieldNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get type => 'Type';
  @override
  String get location => 'Locatie';
  @override
  String get max_capacity => 'Maximaal aantal plaatsen';
}

// Path: cages.units
class _TranslationsCagesUnitsNl extends TranslationsCagesUnitsDe {
  _TranslationsCagesUnitsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get birds => 'vogels';
}

// Path: cages.filters
class _TranslationsCagesFiltersNl extends TranslationsCagesFiltersDe {
  _TranslationsCagesFiltersNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Alle';
  @override
  String get aviaries => 'Volières';
  @override
  String get breeding_boxes => 'Broedkooien';
  @override
  String get quarantine => 'Quarantaine';
  @override
  String get empty => 'Lege';
}

// Path: cages.types
class _TranslationsCagesTypesNl extends TranslationsCagesTypesDe {
  _TranslationsCagesTypesNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get aviary => 'Volière';
  @override
  String get breeding_box => 'Broedkooi';
  @override
  String get quarantine => 'Quarantaine';
}

// Path: species.section
class _TranslationsSpeciesSectionNl extends TranslationsSpeciesSectionDe {
  _TranslationsSpeciesSectionNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get identity => 'Identiteit';
  @override
  String get lifecycle => 'Levenscyclus';
  @override
  String get icon => 'Pictogram';
  @override
  String get notes => 'Notities';
}

// Path: species.stats
class _TranslationsSpeciesStatsNl extends TranslationsSpeciesStatsDe {
  _TranslationsSpeciesStatsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get stock => 'In bestand';
  @override
  String get male_roosters => 'Mannen';
  @override
  String get female_hens => 'Poppen';
}

// Path: contacts.fields
class _TranslationsContactsFieldsNl extends TranslationsContactsFieldsDe {
  _TranslationsContactsFieldsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get first_name => 'Voornaam';
  @override
  String get last_name => 'Achternaam';
  @override
  late final _TranslationsContactsFieldsTitleNl title = _TranslationsContactsFieldsTitleNl._(_root);
  @override
  late final _TranslationsContactsFieldsAppUserNl app_user = _TranslationsContactsFieldsAppUserNl._(_root);
  @override
  String get email => 'E-mail';
  @override
  String get number => 'Kwekernummer';
  @override
  String get phone => 'Telefoonnummer';
  @override
  String get cell_phone_number => 'Mobiel nummer';
  @override
  String get address => 'Adres';
  @override
  String get city => 'Plaats';
  @override
  String get country => 'Land';
  @override
  String get postal => 'Postcode';
  @override
  String get website => 'Website';
}

// Path: contacts.sections
class _TranslationsContactsSectionsNl extends TranslationsContactsSectionsDe {
  _TranslationsContactsSectionsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get personal => 'Persoonlijke gegevens';
  @override
  String get app_user => 'App-gebruiker';
  @override
  String get breeder => 'Kwekergegevens';
  @override
  String get contact => 'Contactgegevens';
  @override
  String get address => 'Adres';
  @override
  String get meta => 'Metagegevens';
}

// Path: contacts.action_button
class _TranslationsContactsActionButtonNl extends TranslationsContactsActionButtonDe {
  _TranslationsContactsActionButtonNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get open_website_tooltipp => 'Website openen';
  @override
  String get send_email_tooltipp => 'E-mail schrijven';
  @override
  String get call_tooltipp => 'Bellen';
}

// Path: contacts.overview
class _TranslationsContactsOverviewNl extends TranslationsContactsOverviewDe {
  _TranslationsContactsOverviewNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get total_label => 'Contacten';
  @override
  String bought_chip({required Object Count}) => '${Count} gekocht';
  @override
  String sold_chip({required Object Count}) => '${Count} verkocht';
  @override
  String get all_contacts => 'Alle contacten';
  @override
  String get search_hint => 'Naam, plaats zoeken …';
  @override
  String activity_sold({required Object Ring}) => 'Verkocht ${Ring}';
  @override
  String activity_bought({required Object Ring}) => 'Gekocht ${Ring}';
}

// Path: contacts.card
class _TranslationsContactsCardNl extends TranslationsContactsCardDe {
  _TranslationsContactsCardNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get call => 'Bellen';
  @override
  String get email => 'E-mail';
  @override
  String get details => 'Details';
}

// Path: contacts.detail
class _TranslationsContactsDetailNl extends TranslationsContactsDetailDe {
  _TranslationsContactsDetailNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Contact';
  @override
  String get bought => 'Gekocht';
  @override
  String get sold => 'Verkocht';
  @override
  String get balance => 'Saldo';
  @override
  String get contact_data => 'Contactgegevens';
  @override
  String get no_contact_data => 'Geen contactgegevens opgeslagen';
  @override
  String get linked_birds => 'Gekoppelde vogels';
  @override
  String get role_sold => 'VERKOCHT';
  @override
  String get role_bought => 'GEKOCHT';
  @override
  String get location => 'Locatie';
  @override
  String get edit => 'Bewerken';
}

// Path: breeding_pairs.status
class _TranslationsBreedingPairsStatusNl extends TranslationsBreedingPairsStatusDe {
  _TranslationsBreedingPairsStatusNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Status';
  @override
  String get active => 'Actief';
  @override
  String get paused => 'Gepauzeerd';
  @override
  String get finished => 'Beëindigd';
}

// Path: breeding_pairs.year_filter
class _TranslationsBreedingPairsYearFilterNl extends TranslationsBreedingPairsYearFilterDe {
  _TranslationsBreedingPairsYearFilterNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'JAAR';
  @override
  String get all => 'Alle';
}

// Path: breeding_pairs.filter
class _TranslationsBreedingPairsFilterNl extends TranslationsBreedingPairsFilterDe {
  _TranslationsBreedingPairsFilterNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String show_results({required Object Count}) => '${Count} kweekkoppels tonen';
}

// Path: breeding_pairs.brood_status
class _TranslationsBreedingPairsBroodStatusNl extends TranslationsBreedingPairsBroodStatusDe {
  _TranslationsBreedingPairsBroodStatusNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get active => 'actief';
  @override
  String get inactive => 'gepauzeerd';
  @override
  String get completed => 'beëindigd';
}

// Path: breeding_pairs.sort_by
class _TranslationsBreedingPairsSortByNl extends TranslationsBreedingPairsSortByDe {
  _TranslationsBreedingPairsSortByNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get cage => 'Volière';
  @override
  String get updated => 'Laatst gewijzigd';
  @override
  String get created => 'Aangemaakt';
}

// Path: breeding_pairs.stats
class _TranslationsBreedingPairsStatsNl extends TranslationsBreedingPairsStatsDe {
  _TranslationsBreedingPairsStatsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsBreedingPairsStatsAbbrNl abbr = _TranslationsBreedingPairsStatsAbbrNl._(_root);
  @override
  late final _TranslationsBreedingPairsStatsLabelNl label = _TranslationsBreedingPairsStatsLabelNl._(_root);
  @override
  late final _TranslationsBreedingPairsStatsLegendNl legend = _TranslationsBreedingPairsStatsLegendNl._(_root);
}

// Path: resources.section
class _TranslationsResourcesSectionNl extends TranslationsResourcesSectionDe {
  _TranslationsResourcesSectionNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get identity => 'Identiteit';
  @override
  String get basics => 'Basisgegevens';
  @override
  String get lifecycle => 'Levenscyclus';
  @override
  String get icon => 'Pictogram';
  @override
  String get notes => 'Notities';
  @override
  String get color => 'Kleur';
}

// Path: resources.actions
class _TranslationsResourcesActionsNl extends TranslationsResourcesActionsDe {
  _TranslationsResourcesActionsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get edit => 'Bewerken';
}

// Path: resources.color_picker
class _TranslationsResourcesColorPickerNl extends TranslationsResourcesColorPickerDe {
  _TranslationsResourcesColorPickerNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Kleur kiezen';
}

// Path: resources.field
class _TranslationsResourcesFieldNl extends TranslationsResourcesFieldDe {
  _TranslationsResourcesFieldNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Naam';
  @override
  String get required => 'Verplicht veld';
}

// Path: resources.delete
class _TranslationsResourcesDeleteNl extends TranslationsResourcesDeleteDe {
  _TranslationsResourcesDeleteNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String with_usage({required Object Usage}) => '${Usage} koppelingen worden verbroken. Toch doorgaan?';
}

// Path: resources.sort
class _TranslationsResourcesSortNl extends TranslationsResourcesSortDe {
  _TranslationsResourcesSortNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Sorteren';
  @override
  late final _TranslationsResourcesSortByNl by = _TranslationsResourcesSortByNl._(_root);
  @override
  String get asc => 'Oplopend';
  @override
  String get desc => 'Aflopend';
}

// Path: birds.overview
class _TranslationsBirdsOverviewNl extends TranslationsBirdsOverviewDe {
  _TranslationsBirdsOverviewNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String subtitle({required Object Birds, required Object Cages}) => '${Birds} vogels · ${Cages} kooien';
  @override
  String for_sale({required Object Count}) => '${Count} te koop';
  @override
  String get group_by_cage => 'Groeperen: kooi';
  @override
  String get no_cage => 'Zonder kooi';
  @override
  String get birds_label => 'Vogels';
  @override
  String get sale_badge => 'Te koop';
  @override
  String get empty => 'Geen vogels gevonden';
  @override
  String get view_grouped => 'Op volière groeperen';
  @override
  String get view_list => 'Als lijst tonen';
}

// Path: birds.filter
class _TranslationsBirdsFilterNl extends TranslationsBirdsFilterDe {
  _TranslationsBirdsFilterNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String show_results({required Object Count}) => '${Count} vogels tonen';
  @override
  String get sort_title => 'Sorteren';
  @override
  String get more_title => 'Meer';
  @override
  String get show_deceased => 'Overleden tonen';
}

// Path: pedigree.stats
class _TranslationsPedigreeStatsNl extends TranslationsPedigreeStatsDe {
  _TranslationsPedigreeStatsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get generations => 'Generaties';
  @override
  String get ancestors => 'Voorouders';
  @override
  String get descendants => 'Nakomelingen';
  @override
  String get inbreeding => 'Inteelt';
  @override
  String get no_inbreeding => 'Geen inteelt';
}

// Path: bird.tabs
class _TranslationsBirdTabsNl extends TranslationsBirdTabsDe {
  _TranslationsBirdTabsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get general => 'Algemeen';
  @override
  String get state_and_life => 'Status';
  @override
  String get breeding => 'Kweek';
  @override
  String get purchase_and_sale => 'Financiën';
}

// Path: bird.summary
class _TranslationsBirdSummaryNl extends TranslationsBirdSummaryDe {
  _TranslationsBirdSummaryNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get sex => 'Geslacht';
  @override
  String get age => 'Leeftijd';
  @override
  String get cage => 'Kooi';
  @override
  String get offspring => 'Nakomelingen';
  @override
  String get unknown => '—';
}

// Path: bird.sections
class _TranslationsBirdSectionsNl extends TranslationsBirdSectionsDe {
  _TranslationsBirdSectionsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsBirdSectionsIdentificationNl identification = _TranslationsBirdSectionsIdentificationNl._(_root);
  @override
  late final _TranslationsBirdSectionsKeepingNl keeping = _TranslationsBirdSectionsKeepingNl._(_root);
  @override
  late final _TranslationsBirdSectionsStatusNl status = _TranslationsBirdSectionsStatusNl._(_root);
  @override
  late final _TranslationsBirdSectionsSaleNl sale = _TranslationsBirdSectionsSaleNl._(_root);
  @override
  late final _TranslationsBirdSectionsPurchaseNl purchase = _TranslationsBirdSectionsPurchaseNl._(_root);
  @override
  late final _TranslationsBirdSectionsHealthNl health = _TranslationsBirdSectionsHealthNl._(_root);
  @override
  late final _TranslationsBirdSectionsLifeNl life = _TranslationsBirdSectionsLifeNl._(_root);
  @override
  late final _TranslationsBirdSectionsNotesNl notes = _TranslationsBirdSectionsNotesNl._(_root);
  @override
  late final _TranslationsBirdSectionsPhotosNl photos = _TranslationsBirdSectionsPhotosNl._(_root);
  @override
  late final _TranslationsBirdSectionsParentNl parent = _TranslationsBirdSectionsParentNl._(_root);
  @override
  late final _TranslationsBirdSectionsBreederNl breeder = _TranslationsBirdSectionsBreederNl._(_root);
  @override
  late final _TranslationsBirdSectionsChildrenNl children = _TranslationsBirdSectionsChildrenNl._(_root);
}

// Path: pair_detail.kpi
class _TranslationsPairDetailKpiNl extends TranslationsPairDetailKpiDe {
  _TranslationsPairDetailKpiNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get broods => 'Broedsels';
  @override
  String get eggs => 'Eieren';
  @override
  String get hatched => 'Uitgekomen';
  @override
  String get fledged => 'Uitgevl.';
}

// Path: brood.kpi
class _TranslationsBroodKpiNl extends TranslationsBroodKpiDe {
  _TranslationsBroodKpiNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get eggs => 'Eieren';
  @override
  String get hatched => 'Uitgekomen';
  @override
  String get fledged => 'Uitgevlogen';
}

// Path: egg.status
class _TranslationsEggStatusNl extends TranslationsEggStatusDe {
  _TranslationsEggStatusNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get laid => 'Gelegd';
  @override
  String get fertilized => 'Bevrucht';
  @override
  String get unfertilized => 'Onbevrucht';
  @override
  String get hatched => 'Uitgekomen';
  @override
  String get dead => 'Gestorven';
  @override
  String get fledged => 'Uitgevlogen';
  @override
  String get in_stock => 'In bestand';
  @override
  String get unknown => 'Onbekend';
}

// Path: egg.action
class _TranslationsEggActionNl extends TranslationsEggActionDe {
  _TranslationsEggActionNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get set_ringnumber => 'Nieuw ringnummer invoeren';
}

// Path: egg.lifecycle
class _TranslationsEggLifecycleNl extends TranslationsEggLifecycleDe {
  _TranslationsEggLifecycleNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String title({required Object Number}) => 'Ei ${Number}';
  @override
  String get section_cycle => 'Levenscyclus';
  @override
  String get section_details => 'Details';
  @override
  String get set_date => 'Datum instellen';
  @override
  String get confirm_delete => 'Ei verwijderen?';
}

// Path: common.bottom_sheet
class _TranslationsCommonBottomSheetNl extends TranslationsCommonBottomSheetDe {
  _TranslationsCommonBottomSheetNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String search_empty_builder_text({required Object Text}) => 'De zoekopdracht naar ${Text} heeft helaas niets opgeleverd.';
}

// Path: common.sale_status
class _TranslationsCommonSaleStatusNl extends TranslationsCommonSaleStatusDe {
  _TranslationsCommonSaleStatusNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Aan-/verkoopstatus';
  @override
  String get not_for_sale => 'Niet te koop';
  @override
  String get listed => 'Te koop aangeboden';
  @override
  String get reserved => 'Gereserveerd';
  @override
  String get sold => 'Verkocht';
}

// Path: common.sex
class _TranslationsCommonSexNl extends TranslationsCommonSexDe {
  _TranslationsCommonSexNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Geslacht';
  @override
  String get male => 'Man';
  @override
  String get female => 'Pop';
  @override
  String get unknown => 'Onbekend';
}

// Path: common.sell
class _TranslationsCommonSellNl extends TranslationsCommonSellDe {
  _TranslationsCommonSellNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get year => 'Verkoopjaar';
  @override
  String get bird => 'Vogel verkopen';
  @override
  late final _TranslationsCommonSellPriceNl price = _TranslationsCommonSellPriceNl._(_root);
}

// Path: common.bought
class _TranslationsCommonBoughtNl extends TranslationsCommonBoughtDe {
  _TranslationsCommonBoughtNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get year => 'Aankoopjaar';
  @override
  String get from => 'Gekocht van';
  @override
  String get at => 'Gekocht op';
  @override
  String get price => 'Aankoopprijs';
}

// Path: common.sorting
class _TranslationsCommonSortingNl extends TranslationsCommonSortingDe {
  _TranslationsCommonSortingNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Sortering';
  @override
  String get updated => 'Laatst bijgewerkt';
  @override
  String get age => 'Leeftijd';
  @override
  String get ringnumber => 'Ringnummer';
}

// Path: common.sold
class _TranslationsCommonSoldNl extends TranslationsCommonSoldDe {
  _TranslationsCommonSoldNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get to => 'Verkocht aan';
  @override
  String get at => 'Verkocht op';
}

// Path: common.unit
class _TranslationsCommonUnitNl extends TranslationsCommonUnitDe {
  _TranslationsCommonUnitNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get m => 'm';
  @override
  String get cm => 'cm';
}

// Path: common.hint
class _TranslationsCommonHintNl extends TranslationsCommonHintDe {
  _TranslationsCommonHintNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get select => 'Kiezen';
  @override
  String get text => 'Invoeren';
}

// Path: auth.validators
class _TranslationsAuthValidatorsNl extends TranslationsAuthValidatorsDe {
  _TranslationsAuthValidatorsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get email => 'Voer een geldig e-mailadres in';
  @override
  String get email_format => 'Voer een geldig e-mailadres in';
  @override
  String get password => 'Voer een wachtwoord in';
  @override
  String get password_length => 'Het wachtwoord moet minstens 6 tekens lang zijn';
  @override
  String get first_name => 'Voer je voornaam in';
  @override
  String get first_name_length => 'De voornaam moet minstens 3 tekens lang zijn';
  @override
  String get last_name => 'Voer je achternaam in';
}

// Path: csv_import.birds
class _TranslationsCsvImportBirdsNl extends TranslationsCsvImportBirdsDe {
  _TranslationsCsvImportBirdsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Vogels';
  @override
  String get description => 'Importeer vogels met soort,\nkleur en volière';
  @override
  String get import_title => 'Vogels uit CSV importeren';
  @override
  String get import_description =>
      'Kies een CSV-bestand met je vogelgegevens.\nSoorten, kleuren en volières worden automatisch aangemaakt als ze nog niet bestaan. Als scheidingsteken in het CSV-bestand wordt een puntkomma (;) verwacht. Het datumformaat moet yyyy-MM-dd, dd.MM.yyyy of dd/MM/yyyy zijn.';
  @override
  String import_button({required Object Count}) => '${Count} vogels importeren';
  @override
  String get item_name => 'vogels';
}

// Path: csv_import.contacts
class _TranslationsCsvImportContactsNl extends TranslationsCsvImportContactsDe {
  _TranslationsCsvImportContactsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Contacten';
  @override
  String get description => 'Importeer contactgegevens\nzoals kwekers of kopers';
  @override
  String get import_title => 'Contacten uit CSV importeren';
  @override
  String get import_description =>
      'Kies een CSV-bestand met je contactgegevens. Als scheidingsteken in het CSV-bestand wordt een puntkomma (;) verwacht.';
  @override
  String import_button({required Object Count}) => '${Count} contacten importeren';
  @override
  String get item_name => 'contacten';
}

// Path: csv_import.columns
class _TranslationsCsvImportColumnsNl extends TranslationsCsvImportColumnsDe {
  _TranslationsCsvImportColumnsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ondersteunde kolommen:';
  @override
  String get date_formats => 'Datumformaten: yyyy-MM-dd, dd.MM.yyyy, dd/MM/yyyy';
  @override
  String get bird_columns =>
      '• ringnumber / ring / ringnummer - Ringnummer (verplicht)\n• species / art / vogelart - Vogelsoort\n• color / farbe / colour - Kleur\n• cage / voliere / käfig - Volière\n• sex / geschlecht - Geslacht (male/female/männlich/weiblich)\n• born_at / geboren / geburtsdatum - Geboortedatum\n• father / vater - Ringnummer vader\n• mother / mutter - Ringnummer moeder\n• notes / notizen / bemerkungen - Notities';
  @override
  String get contact_columns =>
      '• firstname / vorname - Voornaam\n• name / nachname / lastname - Achternaam (minstens voor- of achternaam vereist)\n• number / nummer / kundennummer - Contactnummer\n• phone / telefon / mobil - Telefoonnummer\n• email / e-mail / mail - E-mailadres\n• address / adresse / strasse - Straat\n• city / stadt / ort - Plaats\n• postalcode / plz / zip - Postcode\n• country / land - Land\n• website / homepage / url - Website';
}

// Path: csv_import.preview
class _TranslationsCsvImportPreviewNl extends TranslationsCsvImportPreviewDe {
  _TranslationsCsvImportPreviewNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String valid({required Object Count}) => '${Count} geldig';
  @override
  String invalid({required Object Count}) => '${Count} ongeldig';
}

// Path: csv_import.table
class _TranslationsCsvImportTableNl extends TranslationsCsvImportTableDe {
  _TranslationsCsvImportTableNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get row => '#';
  @override
  String get ring_number => 'Ringnummer';
  @override
  String get species => 'Soort';
  @override
  String get color => 'Kleur';
  @override
  String get cage => 'Volière';
  @override
  String get sex => 'Geslacht';
  @override
  String get birth_date => 'Geb.datum';
  @override
  String get death_date => 'Overleden';
  @override
  String get father => 'Vader';
  @override
  String get mother => 'Moeder';
  @override
  String get breeder => 'Kweker';
  @override
  String get owner => 'Eigenaar';
  @override
  String get status => 'Status';
  @override
  String get number => 'Nummer';
  @override
  String get first_name => 'Voornaam';
  @override
  String get last_name => 'Achternaam';
  @override
  String get phone => 'Telefoon';
  @override
  String get cell_phone => 'Mobiel';
  @override
  String get email => 'E-mail';
  @override
  String get city => 'Plaats';
}

// Path: csv_import.status
class _TranslationsCsvImportStatusNl extends TranslationsCsvImportStatusDe {
  _TranslationsCsvImportStatusNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get error => 'Fout';
  @override
  String get missing_ring_number => 'Ringnummer ontbreekt';
  @override
  String get missing_name => 'Naam ontbreekt';
  @override
  String get no_ring_number => 'Geen ringnummer';
}

// Path: csv_import.summary
class _TranslationsCsvImportSummaryNl extends TranslationsCsvImportSummaryDe {
  _TranslationsCsvImportSummaryNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get successful => 'Succesvol geïmporteerd';
  @override
  String get failed => 'Mislukt';
  @override
  String get skipped_duplicates => 'Overgeslagen (duplicaten)';
  @override
  String get skipped_invalid => 'Overgeslagen (ongeldig)';
  @override
  String get species_created => 'Nieuwe soorten aangemaakt';
  @override
  String get colors_created => 'Nieuwe kleuren aangemaakt';
  @override
  String get cages_created => 'Nieuwe volières aangemaakt';
  @override
  String get failed_imports => 'Mislukte imports';
  @override
  String get skipped_entries => 'Overgeslagen vermeldingen (duplicaten)';
}

// Path: csv_import.errors
class _TranslationsCsvImportErrorsNl extends TranslationsCsvImportErrorsDe {
  _TranslationsCsvImportErrorsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get select_csv_file => 'Kies een CSV-bestand';
  @override
  String get not_csv_file => 'Het gekozen bestand is geen CSV-bestand.';
  @override
  String get could_not_read_file => 'Bestand kon niet gelezen worden';
  @override
  String get error_reading_file => 'Fout bij het lezen van het bestand';
  @override
  String get ring_number_exists => 'Ringnummer bestaat al';
  @override
  String get could_not_create_bird => 'Vogel kon niet aangemaakt worden';
  @override
  String contact_number_exists({required Object Number}) => 'Contactnummer "${Number}" bestaat al';
  @override
  String get could_not_create_contact => 'Contact kon niet aangemaakt worden';
}

// Path: menu.sections
class _TranslationsMenuSectionsNl extends TranslationsMenuSectionsDe {
  _TranslationsMenuSectionsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get main => 'Hoofdonderdelen';
  @override
  String get data => 'Stamgegevens';
  @override
  String get settings => 'Instellingen';
}

// Path: menu.birds
class _TranslationsMenuBirdsNl extends TranslationsMenuBirdsDe {
  _TranslationsMenuBirdsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Vogels';
  @override
  String get description => 'Beheer je vogels';
}

// Path: menu.contacts
class _TranslationsMenuContactsNl extends TranslationsMenuContactsDe {
  _TranslationsMenuContactsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Contacten';
  @override
  String get description => 'Beheer je contacten';
}

// Path: menu.breedings
class _TranslationsMenuBreedingsNl extends TranslationsMenuBreedingsDe {
  _TranslationsMenuBreedingsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Kweek';
  @override
  String get description => 'Actieve & afgeronde kweekkoppels';
}

// Path: menu.resources
class _TranslationsMenuResourcesNl extends TranslationsMenuResourcesDe {
  _TranslationsMenuResourcesNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Bronnen';
  @override
  String get description => 'Kleuren, soorten, volières';
}

// Path: menu.finances
class _TranslationsMenuFinancesNl extends TranslationsMenuFinancesDe {
  _TranslationsMenuFinancesNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Financiën';
  @override
  String get description => 'Kasboek';
}

// Path: menu.csv_import
class _TranslationsMenuCsvImportNl extends TranslationsMenuCsvImportDe {
  _TranslationsMenuCsvImportNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'CSV-import';
  @override
  String get description => 'Importeer gegevens uit CSV';
}

// Path: menu.account
class _TranslationsMenuAccountNl extends TranslationsMenuAccountDe {
  _TranslationsMenuAccountNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Account';
  @override
  String get description => 'Je account';
}

// Path: menu.species
class _TranslationsMenuSpeciesNl extends TranslationsMenuSpeciesDe {
  _TranslationsMenuSpeciesNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Soorten';
  @override
  String get description => 'Vogelsoorten beheren';
}

// Path: menu.cages
class _TranslationsMenuCagesNl extends TranslationsMenuCagesDe {
  _TranslationsMenuCagesNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Volières';
  @override
  String get description => 'Volières & kooien';
}

// Path: menu.colors
class _TranslationsMenuColorsNl extends TranslationsMenuColorsDe {
  _TranslationsMenuColorsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Kleuren';
  @override
  String get description => 'Kleurslagen';
}

// Path: menu.finance_categories
class _TranslationsMenuFinanceCategoriesNl extends TranslationsMenuFinanceCategoriesDe {
  _TranslationsMenuFinanceCategoriesNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Financiële categorieën';
  @override
  String get description => 'Categorieën voor inkomsten en uitgaven';
}

// Path: dialog.discard_changes
class _TranslationsDialogDiscardChangesNl extends TranslationsDialogDiscardChangesDe {
  _TranslationsDialogDiscardChangesNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Wijzigingen verwerpen?';
  @override
  String get content => 'Je wijzigingen worden verworpen, weet je het zeker?';
}

// Path: dialog.delete_entry
class _TranslationsDialogDeleteEntryNl extends TranslationsDialogDeleteEntryDe {
  _TranslationsDialogDeleteEntryNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get content => 'Wil je deze vermelding echt verwijderen?';
}

// Path: export.events
class _TranslationsExportEventsNl extends TranslationsExportEventsDe {
  _TranslationsExportEventsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String succeeded({required Object FileName}) => '"${FileName}" aangemaakt.';
  @override
  String failed({required Object Error}) => 'Export mislukt: ${Error}';
}

// Path: export.format
class _TranslationsExportFormatNl extends TranslationsExportFormatDe {
  _TranslationsExportFormatNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Formaat';
  @override
  late final _TranslationsExportFormatCsvNl csv = _TranslationsExportFormatCsvNl._(_root);
  @override
  late final _TranslationsExportFormatPdfNl pdf = _TranslationsExportFormatPdfNl._(_root);
}

// Path: export.preset
class _TranslationsExportPresetNl extends TranslationsExportPresetDe {
  _TranslationsExportPresetNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Omvang';
}

// Path: export.pdf
class _TranslationsExportPdfNl extends TranslationsExportPdfDe {
  _TranslationsExportPdfNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String page({required Object Page, required Object Total}) => 'Pagina ${Page} van ${Total}';
}

// Path: export.header
class _TranslationsExportHeaderNl extends TranslationsExportHeaderDe {
  _TranslationsExportHeaderNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'PDF-briefhoofd';
  @override
  String get subtitle => 'Koptekst voor geëxporteerde PDF\'s';
  @override
  String get list_empty => 'Nog geen briefhoofd aangemaakt. Zonder profiel gebruikt de export de naam van de lijst en je profielgegevens.';
  @override
  String get add => 'Briefhoofd aanmaken';
  @override
  String get new_name => 'Nieuw briefhoofd';
  @override
  String get none => 'Zonder briefhoofd';
  @override
  String get default_badge => 'Standaard';
  @override
  String get set_default => 'Als standaard gebruiken';
  @override
  String get delete_title => 'Briefhoofd verwijderen?';
  @override
  String delete_content({required Object Name}) => '"${Name}" wordt definitief verwijderd.';
  @override
  String get deleted => 'Briefhoofd verwijderd.';
  @override
  String get saved => 'Briefhoofd opgeslagen.';
  @override
  String get name_label => 'Naam van het profiel';
  @override
  String get name_hint => 'bijv. vereniging of verkoop';
  @override
  String get section_layout => 'Indeling';
  @override
  String get section_logo => 'Logo';
  @override
  String get section_text => 'Teksten';
  @override
  String get section_meta => 'Gegevens';
  @override
  String get section_footer => 'Voettekst';
  @override
  late final _TranslationsExportHeaderLayoutNl layout = _TranslationsExportHeaderLayoutNl._(_root);
  @override
  late final _TranslationsExportHeaderLogoSizeNl logo_size = _TranslationsExportHeaderLogoSizeNl._(_root);
  @override
  String get logo_pick => 'Logo kiezen';
  @override
  String get logo_replace => 'Logo vervangen';
  @override
  String get logo_remove => 'Logo verwijderen';
  @override
  String get title_label => 'Titelregel';
  @override
  String get subtitle_label => 'Ondertitel';
  @override
  String get footer_label => 'Voettekst';
  @override
  String get address_show => 'Adresblok tonen';
  @override
  String get address_override_label => 'Eigen adresblok';
  @override
  String get address_override_hint => 'Leeg laten om het adres uit je profiel te gebruiken';
  @override
  String get address_from_profile => 'Uit profiel overnemen';
  @override
  String get show_date => 'Datum tonen';
  @override
  String get show_count => 'Aantal tonen';
  @override
  String get show_filter => 'Actieve filters tonen';
  @override
  String get show_breeder_number => 'Kwekernummer tonen';
  @override
  String get show_divider => 'Scheidingslijn tonen';
  @override
  String get show_page_numbers => 'Paginanummers tonen';
  @override
  String get placeholders_hint => 'Tik op een tijdelijke aanduiding om hem in te voegen';
  @override
  String get preview_title => 'Voorbeeld';
  @override
  String get preview_list => 'Bestandslijst';
  @override
  String get preview_filter => 'Soort: Grasparkiet';
}

// Path: export.summary
class _TranslationsExportSummaryNl extends TranslationsExportSummaryDe {
  _TranslationsExportSummaryNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get birds => 'Vogels';
  @override
  String get pairs => 'Koppels';
  @override
  String get hatch_rate => 'Uitkomstpercentage';
  @override
  String get income => 'Inkomsten';
  @override
  String get expense => 'Uitgaven';
  @override
  String get net => 'Saldo';
}

// Path: export.lists
class _TranslationsExportListsNl extends TranslationsExportListsDe {
  _TranslationsExportListsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get birds => 'Bestandslijst';
  @override
  String get breeding_pairs => 'Kweekkoppels';
  @override
  String get finances => 'Kasboek';
}

// Path: export.file_names
class _TranslationsExportFileNamesNl extends TranslationsExportFileNamesDe {
  _TranslationsExportFileNamesNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get birds => 'bestandslijst';
  @override
  String get breeding_pairs => 'kweekkoppels';
  @override
  String get finances => 'kasboek';
}

// Path: export.presets
class _TranslationsExportPresetsNl extends TranslationsExportPresetsDe {
  _TranslationsExportPresetsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsExportPresetsBirdsNl birds = _TranslationsExportPresetsBirdsNl._(_root);
  @override
  late final _TranslationsExportPresetsBreedingPairsNl breeding_pairs = _TranslationsExportPresetsBreedingPairsNl._(_root);
  @override
  late final _TranslationsExportPresetsFinancesNl finances = _TranslationsExportPresetsFinancesNl._(_root);
}

// Path: export.columns
class _TranslationsExportColumnsNl extends TranslationsExportColumnsDe {
  _TranslationsExportColumnsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsExportColumnsBirdNl bird = _TranslationsExportColumnsBirdNl._(_root);
  @override
  late final _TranslationsExportColumnsBreedingPairNl breeding_pair = _TranslationsExportColumnsBreedingPairNl._(_root);
  @override
  late final _TranslationsExportColumnsFinanceNl finance = _TranslationsExportColumnsFinanceNl._(_root);
}

// Path: documents.types
class _TranslationsDocumentsTypesNl extends TranslationsDocumentsTypesDe {
  _TranslationsDocumentsTypesNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsDocumentsTypesProfileNl profile = _TranslationsDocumentsTypesProfileNl._(_root);
  @override
  late final _TranslationsDocumentsTypesPedigreeNl pedigree = _TranslationsDocumentsTypesPedigreeNl._(_root);
  @override
  late final _TranslationsDocumentsTypesSaleReceiptNl sale_receipt = _TranslationsDocumentsTypesSaleReceiptNl._(_root);
}

// Path: documents.profile
class _TranslationsDocumentsProfileNl extends TranslationsDocumentsProfileDe {
  _TranslationsDocumentsProfileNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get section_general => 'Algemeen';
  @override
  String get section_lifecycle => 'Levensdata';
  @override
  String get section_origin => 'Herkomst en kweek';
  @override
  String get section_commerce => 'Aankoop en verkoop';
  @override
  String get section_notes => 'Notities';
}

// Path: documents.pedigree
class _TranslationsDocumentsPedigreeNl extends TranslationsDocumentsPedigreeDe {
  _TranslationsDocumentsPedigreeNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get statement => 'Hierbij wordt bevestigd dat de afstamming van de hierboven genoemde vogel naar beste weten correct is weergegeven.';
  @override
  String get breeder => 'Kweker';
  @override
  String get breeder_number => 'Kwekersnummer';
  @override
  String get signature => 'Plaats, datum, handtekening van de kweker';
}

// Path: documents.receipt
class _TranslationsDocumentsReceiptNl extends TranslationsDocumentsReceiptDe {
  _TranslationsDocumentsReceiptNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get seller => 'Overdragende partij';
  @override
  String get buyer => 'Ontvangende partij';
  @override
  String get bird_data => 'Gegevens van de vogel';
  @override
  String get price => 'Prijs';
  @override
  String get date => 'Datum van overdracht';
  @override
  String get statement =>
      'De hierboven beschreven vogel wordt tegen de genoemde prijs overgedragen aan de ontvangende partij. De vogel verkeert op het moment van overdracht in goede gezondheid.';
  @override
  String get signature_seller => 'Plaats, datum, handtekening overdragende partij';
  @override
  String get signature_buyer => 'Plaats, datum, handtekening ontvangende partij';
}

// Path: finances.categories.filters
class _TranslationsFinancesCategoriesFiltersNl extends TranslationsFinancesCategoriesFiltersDe {
  _TranslationsFinancesCategoriesFiltersNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Alle';
  @override
  String get income => 'Inkomsten';
  @override
  String get expense => 'Uitgaven';
}

// Path: finances.categories.groups
class _TranslationsFinancesCategoriesGroupsNl extends TranslationsFinancesCategoriesGroupsDe {
  _TranslationsFinancesCategoriesGroupsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get income => 'Inkomsten';
  @override
  String get expense => 'Uitgaven';
}

// Path: finances.categories.kind_singular
class _TranslationsFinancesCategoriesKindSingularNl extends TranslationsFinancesCategoriesKindSingularDe {
  _TranslationsFinancesCategoriesKindSingularNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get income => 'Inkomst';
  @override
  String get expense => 'Uitgave';
}

// Path: finances.categories.pill
class _TranslationsFinancesCategoriesPillNl extends TranslationsFinancesCategoriesPillDe {
  _TranslationsFinancesCategoriesPillNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get income => '↑ INKOMSTEN';
  @override
  String get expense => '↓ UITGAVEN';
}

// Path: finances.categories.detail
class _TranslationsFinancesCategoriesDetailNl extends TranslationsFinancesCategoriesDetailDe {
  _TranslationsFinancesCategoriesDetailNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get bookings_label => 'Boekingen';
  @override
  String get six_months => '6 maanden';
  @override
  String get avg_per_month => 'Ø per maand';
  @override
  String get recent_bookings => 'Laatste boekingen';
  @override
  String get no_bookings => 'Geen boekingen';
  @override
  String get last_six_months_label => 'laatste 6 maanden';
  @override
  String get course_six_months => 'Verloop · 6 maanden';
}

// Path: finances.categories.months_short
class _TranslationsFinancesCategoriesMonthsShortNl extends TranslationsFinancesCategoriesMonthsShortDe {
  _TranslationsFinancesCategoriesMonthsShortNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get dec => 'dec';
  @override
  String get jan => 'jan';
  @override
  String get feb => 'feb';
  @override
  String get mar => 'mrt';
  @override
  String get apr => 'apr';
  @override
  String get may => 'mei';
}

// Path: backup.cloud.choose_folder_dialog
class _TranslationsBackupCloudChooseFolderDialogNl extends TranslationsBackupCloudChooseFolderDialogDe {
  _TranslationsBackupCloudChooseFolderDialogNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Cloudmap kiezen?';
  @override
  String get content => 'Kies nu een map in je cloud (bijv. Google Drive), zodat automatische back-ups opgeslagen kunnen worden.';
  @override
  String get confirm => 'Map kiezen';
}

// Path: backup.cloud.sync_after_change_dialog
class _TranslationsBackupCloudSyncAfterChangeDialogNl extends TranslationsBackupCloudSyncAfterChangeDialogDe {
  _TranslationsBackupCloudSyncAfterChangeDialogNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Nu synchroniseren?';
  @override
  String get content => 'De cloudmap is gewijzigd. Moeten je huidige gegevens daar nu heen worden opgeslagen?';
  @override
  String get confirm => 'Synchroniseren';
}

// Path: backup.cloud.interval
class _TranslationsBackupCloudIntervalNl extends TranslationsBackupCloudIntervalDe {
  _TranslationsBackupCloudIntervalNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Interval automatische back-up';
  @override
  String get sub => 'Hoe vaak er bij het starten van de app automatisch wordt opgeslagen';
  @override
  String get sheet_title => 'Interval kiezen';
  @override
  String get every_launch => 'Bij elke start';
  @override
  String get daily => 'Dagelijks';
  @override
  String get weekly => 'Wekelijks';
  @override
  String get off => 'Handmatig';
}

// Path: backup.cloud.status
class _TranslationsBackupCloudStatusNl extends TranslationsBackupCloudStatusDe {
  _TranslationsBackupCloudStatusNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get synced_today => 'Laatst gesynchroniseerd: vandaag';
  @override
  String synced_days_ago({required num count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(
        count,
        one: 'Laatst gesynchroniseerd: 1 dag geleden',
        other: 'Laatst gesynchroniseerd: {count} dagen geleden',
      );
  @override
  String get never => 'Nog niet gesynchroniseerd';
  @override
  String get unavailable_icloud => 'Niet aangemeld bij iCloud';
  @override
  String get unavailable_folder => 'Geen toegang tot de map – kies opnieuw';
}

// Path: backup.cloud.events
class _TranslationsBackupCloudEventsNl extends TranslationsBackupCloudEventsDe {
  _TranslationsBackupCloudEventsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String location_chosen({required Object Name}) => 'Cloudmap ingesteld: ${Name}';
  @override
  String get location_failed => 'Geen map gekozen';
  @override
  String get sync_succeeded => 'In de cloud opgeslagen';
  @override
  String sync_failed({required Object Error}) => 'Cloudsynchronisatie mislukt: ${Error}';
  @override
  String get unavailable_icloud => 'Niet aangemeld bij iCloud';
  @override
  String get unavailable_folder => 'Geen toegang tot de cloudmap. Kies opnieuw.';
}

// Path: contacts.fields.title
class _TranslationsContactsFieldsTitleNl extends TranslationsContactsFieldsTitleDe {
  _TranslationsContactsFieldsTitleNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Aanhef';
  @override
  String get none => 'Geen';
  @override
  String get mr => 'Dhr.';
  @override
  String get ms => 'Mevr.';
}

// Path: contacts.fields.app_user
class _TranslationsContactsFieldsAppUserNl extends TranslationsContactsFieldsAppUserDe {
  _TranslationsContactsFieldsAppUserNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Dit contact ben ik';
  @override
  String get sub_title => 'Markeert het contact als app-gebruiker.';
}

// Path: breeding_pairs.stats.abbr
class _TranslationsBreedingPairsStatsAbbrNl extends TranslationsBreedingPairsStatsAbbrDe {
  _TranslationsBreedingPairsStatsAbbrNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get laid => 'GL';
  @override
  String get fertilized => 'BV';
  @override
  String get hatched => 'UK';
  @override
  String get fledged => 'UV';
}

// Path: breeding_pairs.stats.label
class _TranslationsBreedingPairsStatsLabelNl extends TranslationsBreedingPairsStatsLabelDe {
  _TranslationsBreedingPairsStatsLabelNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get laid => 'Eieren gelegd';
  @override
  String get fertilized => 'Bevrucht';
  @override
  String get hatched => 'Uitgekomen';
  @override
  String get fledged => 'Uitgevlogen';
}

// Path: breeding_pairs.stats.legend
class _TranslationsBreedingPairsStatsLegendNl extends TranslationsBreedingPairsStatsLegendDe {
  _TranslationsBreedingPairsStatsLegendNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Legenda';
}

// Path: resources.sort.by
class _TranslationsResourcesSortByNl extends TranslationsResourcesSortByDe {
  _TranslationsResourcesSortByNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Naam';
  @override
  String get created => 'Aangemaakt';
  @override
  String get capacity => 'Capaciteit';
  @override
  String get kind => 'Type';
  @override
  String get lat_name => 'Lat. naam';
  @override
  String get hex => 'Kleurcode';
  @override
  String get stock => 'Bestand';
}

// Path: bird.sections.identification
class _TranslationsBirdSectionsIdentificationNl extends TranslationsBirdSectionsIdentificationDe {
  _TranslationsBirdSectionsIdentificationNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Identificatie';
  @override
  String get sub_title => 'Gegevens ter identificatie van de vogel';
}

// Path: bird.sections.keeping
class _TranslationsBirdSectionsKeepingNl extends TranslationsBirdSectionsKeepingDe {
  _TranslationsBirdSectionsKeepingNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Huisvesting';
  @override
  String get sub_title => 'Gegevens over de huisvesting van de vogel';
}

// Path: bird.sections.status
class _TranslationsBirdSectionsStatusNl extends TranslationsBirdSectionsStatusDe {
  _TranslationsBirdSectionsStatusNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Status';
  @override
  String get sub_title => 'Gegevens over de status van de vogel';
}

// Path: bird.sections.sale
class _TranslationsBirdSectionsSaleNl extends TranslationsBirdSectionsSaleDe {
  _TranslationsBirdSectionsSaleNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Verkoop';
  @override
  String get sub_title => 'Gegevens over de verkoop van de vogel';
}

// Path: bird.sections.purchase
class _TranslationsBirdSectionsPurchaseNl extends TranslationsBirdSectionsPurchaseDe {
  _TranslationsBirdSectionsPurchaseNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Aankoop';
  @override
  String get sub_title => 'Gegevens over de aankoop van de vogel';
}

// Path: bird.sections.health
class _TranslationsBirdSectionsHealthNl extends TranslationsBirdSectionsHealthDe {
  _TranslationsBirdSectionsHealthNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Gezondheid';
  @override
  String get sub_title => 'Gegevens over de gezondheid van de vogel';
}

// Path: bird.sections.life
class _TranslationsBirdSectionsLifeNl extends TranslationsBirdSectionsLifeDe {
  _TranslationsBirdSectionsLifeNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Levensfase';
  @override
  String get sub_title => 'Gegevens over de levensfase van de vogel';
  @override
  String get unknown_lifecycle_title => 'Levenscyclusgegevens onbekend?';
  @override
  String get unknown_lifecycle_sub_title => 'Schakel deze optie in als de levenscyclusgegevens niet bekend zijn.';
  @override
  String get unknown_lifecycle_description =>
      'Als er een geboortedatum is, wordt de vogel als volwassen beschouwd. Als er een sterfdatum is, wordt de vogel als overleden beschouwd.';
}

// Path: bird.sections.notes
class _TranslationsBirdSectionsNotesNl extends TranslationsBirdSectionsNotesDe {
  _TranslationsBirdSectionsNotesNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Notities';
  @override
  String get sub_title => 'Gegevens over de notities van de vogel';
}

// Path: bird.sections.photos
class _TranslationsBirdSectionsPhotosNl extends TranslationsBirdSectionsPhotosDe {
  _TranslationsBirdSectionsPhotosNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Foto\'s';
  @override
  String get sub_title => 'Foto\'s van deze vogel beheren';
  @override
  String get add_camera => 'Camera';
  @override
  String get add_gallery => 'Galerij';
  @override
  String get save_first => 'Sla de vogel eerst op om foto\'s toe te voegen.';
  @override
  String get empty => 'Nog geen foto\'s';
  @override
  String get delete_title => 'Foto verwijderen?';
  @override
  String get delete_confirm => 'Verwijderen';
  @override
  String get manage => 'Foto\'s beheren';
  @override
  String get capture => 'Foto maken';
  @override
  String get capture_sub => 'of uit galerij kiezen · meerdere mogelijk';
  @override
  String get section_label => 'Foto\'s van deze vogel';
  @override
  String get add_tile => 'Toevoegen';
  @override
  String get cover_badge => 'Omslag';
  @override
  String get set_cover => 'Als omslagfoto instellen';
  @override
  String get remove => 'Verwijderen';
  @override
  String get source_camera => 'Camera';
  @override
  String get source_gallery => 'Galerij';
  @override
  String get hint =>
      'Tik op een foto om hem groot te bekijken. Houd een foto ingedrukt en sleep hem naar een andere positie – de eerste foto is de omslagfoto en verschijnt in lijsten en op de detailpagina van de vogel.';
  @override
  String get done => 'Klaar';
  @override
  String count_preview_one({required Object Count}) => '${Count} foto';
  @override
  String count_preview_other({required Object Count}) => '${Count} foto\'s';
}

// Path: bird.sections.parent
class _TranslationsBirdSectionsParentNl extends TranslationsBirdSectionsParentDe {
  _TranslationsBirdSectionsParentNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ouders';
  @override
  String get sub_title => 'Gegevens over de ouders van de vogel';
}

// Path: bird.sections.breeder
class _TranslationsBirdSectionsBreederNl extends TranslationsBirdSectionsBreederDe {
  _TranslationsBirdSectionsBreederNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Kweker';
  @override
  String get sub_title => 'Gegevens over de kweker van de vogel';
}

// Path: bird.sections.children
class _TranslationsBirdSectionsChildrenNl extends TranslationsBirdSectionsChildrenDe {
  _TranslationsBirdSectionsChildrenNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Nakomelingen';
  @override
  String get sub_title => 'Gegevens over de nakomelingen van de vogel';
}

// Path: common.sell.price
class _TranslationsCommonSellPriceNl extends TranslationsCommonSellPriceDe {
  _TranslationsCommonSellPriceNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get kFinal => 'Werkelijke verkoopprijs';
  @override
  String get asking => 'Gewenste verkoopprijs';
}

// Path: export.format.csv
class _TranslationsExportFormatCsvNl extends TranslationsExportFormatCsvDe {
  _TranslationsExportFormatCsvNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'CSV';
  @override
  String get description => 'Voor Excel en spreadsheets';
}

// Path: export.format.pdf
class _TranslationsExportFormatPdfNl extends TranslationsExportFormatPdfDe {
  _TranslationsExportFormatPdfNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'PDF';
  @override
  String get description => 'Om af te drukken en door te geven';
}

// Path: export.header.layout
class _TranslationsExportHeaderLayoutNl extends TranslationsExportHeaderLayoutDe {
  _TranslationsExportHeaderLayoutNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get logo_left => 'Logo links';
  @override
  String get centered => 'Gecentreerd';
  @override
  String get address_left_logo_right => 'Adres links, logo rechts';
}

// Path: export.header.logo_size
class _TranslationsExportHeaderLogoSizeNl extends TranslationsExportHeaderLogoSizeDe {
  _TranslationsExportHeaderLogoSizeNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Grootte';
  @override
  String get small => 'Klein';
  @override
  String get medium => 'Middel';
  @override
  String get large => 'Groot';
}

// Path: export.presets.birds
class _TranslationsExportPresetsBirdsNl extends TranslationsExportPresetsBirdsDe {
  _TranslationsExportPresetsBirdsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get overview => 'Overzicht';
  @override
  String get full => 'Volledig';
}

// Path: export.presets.breeding_pairs
class _TranslationsExportPresetsBreedingPairsNl extends TranslationsExportPresetsBreedingPairsDe {
  _TranslationsExportPresetsBreedingPairsNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get overview => 'Overzicht';
  @override
  String get full => 'Volledig';
}

// Path: export.presets.finances
class _TranslationsExportPresetsFinancesNl extends TranslationsExportPresetsFinancesDe {
  _TranslationsExportPresetsFinancesNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get bookings => 'Boekingen';
  @override
  String get full => 'Volledig';
}

// Path: export.columns.bird
class _TranslationsExportColumnsBirdNl extends TranslationsExportColumnsBirdDe {
  _TranslationsExportColumnsBirdNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get ring_number => 'Ringnummer';
  @override
  String get species => 'Soort';
  @override
  String get color => 'Kleur';
  @override
  String get cage => 'Volière';
  @override
  String get sex => 'Geslacht';
  @override
  String get laid_at => 'Gelegd op';
  @override
  String get hatched_at => 'Uitgekomen op';
  @override
  String get fledged_at => 'Uitgevlogen op';
  @override
  String get born_at => 'Geboren op';
  @override
  String get died_at => 'Gestorven op';
  @override
  String get father => 'Vader';
  @override
  String get mother => 'Moeder';
  @override
  String get breeder => 'Kweker';
  @override
  String get breeder_number => 'Kwekernummer';
  @override
  String get owner => 'Eigenaar';
  @override
  String get owner_number => 'Eigenaarsnummer';
  @override
  String get bought_at => 'Gekocht op';
  @override
  String get bought_price => 'Aankoopprijs';
  @override
  String get bought_from => 'Gekocht van';
  @override
  String get sale_status => 'Verkoopstatus';
  @override
  String get asking_price => 'Vraagprijs';
  @override
  String get final_price => 'Eindprijs';
  @override
  String get sold_at => 'Verkocht op';
  @override
  String get sold_to => 'Verkocht aan';
  @override
  String get notes => 'Notities';
}

// Path: export.columns.breeding_pair
class _TranslationsExportColumnsBreedingPairNl extends TranslationsExportColumnsBreedingPairDe {
  _TranslationsExportColumnsBreedingPairNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get father_ring => 'Vader (ring)';
  @override
  String get father_species => 'Vader (soort)';
  @override
  String get mother_ring => 'Moeder (ring)';
  @override
  String get mother_species => 'Moeder (soort)';
  @override
  String get cage => 'Volière';
  @override
  String get status => 'Status';
  @override
  String get start => 'Begin';
  @override
  String get end => 'Einde';
  @override
  String get broods => 'Broedsels';
  @override
  String get laid => 'Gelegd';
  @override
  String get fertilized => 'Bevrucht';
  @override
  String get hatched => 'Uitgekomen';
  @override
  String get fledged => 'Uitgevlogen';
  @override
  String get notes => 'Notities';
}

// Path: export.columns.finance
class _TranslationsExportColumnsFinanceNl extends TranslationsExportColumnsFinanceDe {
  _TranslationsExportColumnsFinanceNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get date => 'Datum';
  @override
  String get title => 'Titel';
  @override
  String get category => 'Categorie';
  @override
  String get kind => 'Soort';
  @override
  String get amount => 'Bedrag';
  @override
  String get bird => 'Vogel';
  @override
  String get notes => 'Notities';
}

// Path: documents.types.profile
class _TranslationsDocumentsTypesProfileNl extends TranslationsDocumentsTypesProfileDe {
  _TranslationsDocumentsTypesProfileNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Gegevensblad';
  @override
  String get description => 'Alle stamgegevens op één pagina';
  @override
  String get file_name => 'gegevensblad';
}

// Path: documents.types.pedigree
class _TranslationsDocumentsTypesPedigreeNl extends TranslationsDocumentsTypesPedigreeDe {
  _TranslationsDocumentsTypesPedigreeNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Afstammingsbewijs';
  @override
  String get description => 'Stamboom over drie generaties';
  @override
  String get file_name => 'afstammingsbewijs';
}

// Path: documents.types.sale_receipt
class _TranslationsDocumentsTypesSaleReceiptNl extends TranslationsDocumentsTypesSaleReceiptDe {
  _TranslationsDocumentsTypesSaleReceiptNl._(TranslationsNl root)
      : this._root = root,
        super.internal(root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Overdrachtsbewijs';
  @override
  String get description => 'Bewijs voor verkoop of overdracht';
  @override
  String get file_name => 'overdrachtsbewijs';
}
