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
class TranslationsIt extends Translations with BaseTranslations<AppLocale, Translations> {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsIt(
      {Map<String, Node>? overrides,
      PluralResolver? cardinalResolver,
      PluralResolver? ordinalResolver,
      TranslationMetadata<AppLocale, Translations>? meta})
      : assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
        $meta = meta ??
            TranslationMetadata(
              locale: AppLocale.it,
              overrides: overrides ?? {},
              cardinalResolver: cardinalResolver,
              ordinalResolver: ordinalResolver,
            ),
        super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

  /// Metadata for the translations of <it>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final TranslationsIt _root = this; // ignore: unused_field

  @override
  TranslationsIt $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsIt(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsAppIt app = _TranslationsAppIt._(_root);
  @override
  late final _TranslationsOnboardingIt onboarding = _TranslationsOnboardingIt._(_root);
  @override
  late final _TranslationsFinancesIt finances = _TranslationsFinancesIt._(_root);
  @override
  late final _TranslationsAccountIt account = _TranslationsAccountIt._(_root);
  @override
  late final _TranslationsBackupIt backup = _TranslationsBackupIt._(_root);
  @override
  late final _TranslationsBreedingsIt breedings = _TranslationsBreedingsIt._(_root);
  @override
  late final _TranslationsColorsIt colors = _TranslationsColorsIt._(_root);
  @override
  late final _TranslationsCagesIt cages = _TranslationsCagesIt._(_root);
  @override
  late final _TranslationsSpeciesIt species = _TranslationsSpeciesIt._(_root);
  @override
  late final _TranslationsContactsIt contacts = _TranslationsContactsIt._(_root);
  @override
  late final _TranslationsBreedingPairsIt breeding_pairs = _TranslationsBreedingPairsIt._(_root);
  @override
  late final _TranslationsResourcesIt resources = _TranslationsResourcesIt._(_root);
  @override
  late final _TranslationsBirdsIt birds = _TranslationsBirdsIt._(_root);
  @override
  late final _TranslationsPedigreeIt pedigree = _TranslationsPedigreeIt._(_root);
  @override
  late final _TranslationsInbreedingIt inbreeding = _TranslationsInbreedingIt._(_root);
  @override
  late final _TranslationsBirdIt bird = _TranslationsBirdIt._(_root);
  @override
  late final _TranslationsPairDetailIt pair_detail = _TranslationsPairDetailIt._(_root);
  @override
  late final _TranslationsBroodIt brood = _TranslationsBroodIt._(_root);
  @override
  late final _TranslationsEggIt egg = _TranslationsEggIt._(_root);
  @override
  late final _TranslationsCommonIt common = _TranslationsCommonIt._(_root);
  @override
  late final _TranslationsAuthIt auth = _TranslationsAuthIt._(_root);
  @override
  late final _TranslationsCsvImportIt csv_import = _TranslationsCsvImportIt._(_root);
  @override
  late final _TranslationsMenuIt menu = _TranslationsMenuIt._(_root);
  @override
  late final _TranslationsErrorIt error = _TranslationsErrorIt._(_root);
  @override
  late final _TranslationsDialogIt dialog = _TranslationsDialogIt._(_root);
  @override
  late final _TranslationsPopUpMenuIt pop_up_menu = _TranslationsPopUpMenuIt._(_root);
  @override
  late final _TranslationsExportIt export = _TranslationsExportIt._(_root);
  @override
  late final _TranslationsDocumentsIt documents = _TranslationsDocumentsIt._(_root);
  @override
  late final _TranslationsSnackbarsIt snackbars = _TranslationsSnackbarsIt._(_root);
}

// Path: app
class _TranslationsAppIt extends TranslationsAppDe {
  _TranslationsAppIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Birdbreeder';
}

// Path: onboarding
class _TranslationsOnboardingIt extends TranslationsOnboardingDe {
  _TranslationsOnboardingIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Configura il profilo';
  @override
  String get subtitle => 'Crea il tuo profilo. Viene usato come utente dell\'app, ad esempio per contrassegnare i tuoi uccelli.';
  @override
  String get first_name => 'Nome';
  @override
  String get last_name => 'Cognome';
  @override
  String get last_name_required => 'Inserisci un cognome.';
  @override
  String get breeder_number => 'Numero allevatore';
  @override
  String get breeder_number_required => 'Inserisci un numero allevatore.';
  @override
  String get save => 'Salva profilo';
  @override
  String get or => 'oppure';
  @override
  String get restore_backup => 'Ripristina backup';
}

// Path: finances
class _TranslationsFinancesIt extends TranslationsFinancesDe {
  _TranslationsFinancesIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Finanze';
  @override
  late final _TranslationsFinancesCategoriesIt categories = _TranslationsFinancesCategoriesIt._(_root);
  @override
  String get delete => 'Eliminare la voce?';
  @override
  late final _TranslationsFinancesAddIt add = _TranslationsFinancesAddIt._(_root);
  @override
  late final _TranslationsFinancesKindIt kind = _TranslationsFinancesKindIt._(_root);
  @override
  late final _TranslationsFinancesSummaryIt summary = _TranslationsFinancesSummaryIt._(_root);
  @override
  late final _TranslationsFinancesViewIt view = _TranslationsFinancesViewIt._(_root);
  @override
  late final _TranslationsFinancesScopeIt scope = _TranslationsFinancesScopeIt._(_root);
  @override
  late final _TranslationsFinancesFilterIt filter = _TranslationsFinancesFilterIt._(_root);
  @override
  late final _TranslationsFinancesSortingIt sorting = _TranslationsFinancesSortingIt._(_root);
}

// Path: account
class _TranslationsAccountIt extends TranslationsAccountDe {
  _TranslationsAccountIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Account';
  @override
  String get logout => 'Esci';
  @override
  String get switch_to_local => 'Passa alla modalità locale';
  @override
  late final _TranslationsAccountSwitchToLocalDialogIt switch_to_local_dialog = _TranslationsAccountSwitchToLocalDialogIt._(_root);
  @override
  late final _TranslationsAccountLocalModeIt local_mode = _TranslationsAccountLocalModeIt._(_root);
  @override
  late final _TranslationsAccountAppearanceIt appearance = _TranslationsAccountAppearanceIt._(_root);
  @override
  late final _TranslationsAccountLanguageIt language = _TranslationsAccountLanguageIt._(_root);
  @override
  late final _TranslationsAccountCurrencyIt currency = _TranslationsAccountCurrencyIt._(_root);
  @override
  late final _TranslationsAccountProfileIt profile = _TranslationsAccountProfileIt._(_root);
  @override
  late final _TranslationsAccountUserIt user = _TranslationsAccountUserIt._(_root);
  @override
  late final _TranslationsAccountEventsIt events = _TranslationsAccountEventsIt._(_root);
}

// Path: backup
class _TranslationsBackupIt extends TranslationsBackupDe {
  _TranslationsBackupIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get section_title => 'Backup';
  @override
  String get page_title => 'Backup';
  @override
  String get empty => 'Nessun backup presente.';
  @override
  String get loading => 'Caricamento…';
  @override
  String get no_backup_yet => 'Nessun backup';
  @override
  String last_backup({required Object Date}) => 'Ultimo backup: ${Date}';
  @override
  late final _TranslationsBackupExternalIt external = _TranslationsBackupExternalIt._(_root);
  @override
  late final _TranslationsBackupActionsIt actions = _TranslationsBackupActionsIt._(_root);
  @override
  String get manual_section => 'Backup manuale';
  @override
  String get last_backup_label => 'Ultimo backup';
  @override
  String get no_backup_size => 'Nessun backup';
  @override
  String get create_hint => 'Apre la finestra di condivisione – scegli Drive, File, e-mail o simili. Le foto sono incluse.';
  @override
  String get restore_hint => 'Ad es. dopo il cambio di dispositivo – ripristina uno stato precedente.';
  @override
  late final _TranslationsBackupRestoreSheetIt restore_sheet = _TranslationsBackupRestoreSheetIt._(_root);
  @override
  late final _TranslationsBackupMenuIt menu = _TranslationsBackupMenuIt._(_root);
  @override
  late final _TranslationsBackupDeleteDialogIt delete_dialog = _TranslationsBackupDeleteDialogIt._(_root);
  @override
  late final _TranslationsBackupRestoreDialogIt restore_dialog = _TranslationsBackupRestoreDialogIt._(_root);
  @override
  late final _TranslationsBackupReminderIt reminder = _TranslationsBackupReminderIt._(_root);
  @override
  late final _TranslationsBackupEventsIt events = _TranslationsBackupEventsIt._(_root);
  @override
  late final _TranslationsBackupCloudIt cloud = _TranslationsBackupCloudIt._(_root);
}

// Path: breedings
class _TranslationsBreedingsIt extends TranslationsBreedingsDe {
  _TranslationsBreedingsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Allevamenti';
}

// Path: colors
class _TranslationsColorsIt extends TranslationsColorsDe {
  _TranslationsColorsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Colori';
  @override
  String get add => 'Aggiungi colore';
  @override
  String get edit => 'Modifica colore';
  @override
  String get select => 'Seleziona colore';
  @override
  String get pick => 'Seleziona colore';
  @override
  String get delete => 'Eliminare il colore?';
  @override
  String get color => 'Colore';
  @override
  String get list_title => 'Varietà di colore';
  @override
  String get value_label => 'Valore colore';
  @override
  String get genetics_section => 'Genetica (facoltativo)';
  @override
  String get inheritance_label => 'Ereditarietà';
  @override
  String get inheritance_hint => 'ad es. autosomica dominante';
  @override
  String get birds_with_color => 'Uccelli con questo colore';
  @override
  String get no_birds_with_color => 'Nessun uccello con questo colore';
  @override
  String get empty => 'Nessun colore';
  @override
  String get detail_title => 'Colore';
  @override
  late final _TranslationsColorsStatsIt stats = _TranslationsColorsStatsIt._(_root);
}

// Path: cages
class _TranslationsCagesIt extends TranslationsCagesDe {
  _TranslationsCagesIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Voliere';
  @override
  String get add => 'Aggiungi voliera';
  @override
  String get edit => 'Modifica voliera';
  @override
  String get select => 'Seleziona voliera';
  @override
  String get delete => 'Eliminare la voliera?';
  @override
  String get name => 'Nome della voliera';
  @override
  String get description => 'Descrizione';
  @override
  String get height => 'Altezza';
  @override
  String get width => 'Larghezza';
  @override
  String get depth => 'Profondità';
  @override
  String get list_title => 'Gabbie';
  @override
  String get detail_title => 'Voliera';
  @override
  late final _TranslationsCagesSectionIt section = _TranslationsCagesSectionIt._(_root);
  @override
  late final _TranslationsCagesFieldIt field = _TranslationsCagesFieldIt._(_root);
  @override
  late final _TranslationsCagesUnitsIt units = _TranslationsCagesUnitsIt._(_root);
  @override
  String get occupancy => 'Occupazione';
  @override
  String get occupied_label => 'Occupati';
  @override
  String get free_label => 'Liberi';
  @override
  String get birds_count_label => 'Uccelli';
  @override
  String capacity_hint({required Object Occupied}) => 'Attualmente occupati: ${Occupied}. Non è possibile scendere sotto ${Occupied}.';
  @override
  String get capacity_missing_hint => 'Capienza non impostata — inserisci un valore';
  @override
  String get empty_badge => 'VUOTA';
  @override
  String places_occupied({required Object Occupied, required Object Capacity}) => '${Occupied}/${Capacity} posti occupati';
  @override
  String get empty_filter => 'Nessuna gabbia per questo filtro';
  @override
  late final _TranslationsCagesFiltersIt filters = _TranslationsCagesFiltersIt._(_root);
  @override
  late final _TranslationsCagesTypesIt types = _TranslationsCagesTypesIt._(_root);
}

// Path: species
class _TranslationsSpeciesIt extends TranslationsSpeciesDe {
  _TranslationsSpeciesIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Specie';
  @override
  String get add => 'Aggiungi specie';
  @override
  String get edit => 'Modifica specie';
  @override
  String get select => 'Seleziona specie';
  @override
  String get delete => 'Eliminare la specie?';
  @override
  String get name => 'Nome della specie';
  @override
  String get latin_name => 'Nome latino';
  @override
  String get detail_title => 'Specie';
  @override
  late final _TranslationsSpeciesSectionIt section = _TranslationsSpeciesSectionIt._(_root);
  @override
  String get incubation => 'Incubazione';
  @override
  String get fledge => 'Involo';
  @override
  String get days_short => 'g';
  @override
  String lifecycle_total({required Object Days}) => '${Days}g in totale';
  @override
  String get lifecycle_hint => 'Usato automaticamente per le previsioni di schiusa e involo.';
  @override
  String lifecycle_label_total({required Object Total}) => '${Total} GIORNI IN TOTALE';
  @override
  String get chick_until_fledge => 'Pullo fino all\'involo';
  @override
  String hatch_label({required Object Day}) => 'Schiusa · G${Day}';
  @override
  String fledge_label({required Object Day}) => 'Involo · G${Day}';
  @override
  String get latin_hint_example => 'ad es. Melopsittacus undulatus';
  @override
  String get latin_hint => 'Nome latino della specie per un\'identificazione precisa.';
  @override
  String get endangered => 'Specie minacciata';
  @override
  String get endangered_hint => 'Contrassegna le specie protette o considerate minacciate.';
  @override
  String get endangered_not => 'Specie non minacciata';
  @override
  String get reportable => 'Soggetta a denuncia';
  @override
  String get reportable_hint => 'La detenzione di questa specie va denunciata alle autorità.';
  @override
  String get reportable_not => 'Nessun obbligo di denuncia';
  @override
  String get suggestions => 'Suggerimenti';
  @override
  String get incubation_found => 'Durata di incubazione applicata';
  @override
  String get incubation_missing => 'Nessuna durata di incubazione trovata: inseriscila manualmente.';
  @override
  String get scientific_name => 'Nome scientifico';
  @override
  String get empty => 'Nessuna specie';
  @override
  String get birds_in_stock => 'Uccelli in allevamento';
  @override
  String get no_birds => 'Nessun uccello';
  @override
  late final _TranslationsSpeciesStatsIt stats = _TranslationsSpeciesStatsIt._(_root);
  @override
  String stock_summary({required num count, required Object Count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(
        count,
        one: '${Count} uccello in allevamento',
        other: '${Count} uccelli in allevamento',
      );
  @override
  String get already_added => 'Già presente';
  @override
  String get duplicate_warning => 'Esiste già una specie con questo nome.';
  @override
  String get image_remove => 'Rimuovi immagine';
}

// Path: contacts
class _TranslationsContactsIt extends TranslationsContactsDe {
  _TranslationsContactsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String title({required Object Count}) => 'Contatti (${Count})';
  @override
  String get edit => 'Modifica contatto';
  @override
  String get create => 'Crea contatto';
  @override
  String get deleted => 'Contatto eliminato';
  @override
  String get saved => 'Contatto salvato';
  @override
  late final _TranslationsContactsFieldsIt fields = _TranslationsContactsFieldsIt._(_root);
  @override
  String get empty_list_information => 'Non ci sono ancora contatti. Puoi aggiungere contatti o importarli da un file CSV.';
  @override
  String get import_button_text => 'Importa contatti';
  @override
  String get add_contact_button_text => 'Aggiungi contatto';
  @override
  String get delete => 'Eliminare il contatto?';
  @override
  String get add => 'Aggiungere il contatto?';
  @override
  String get select => 'Seleziona contatto';
  @override
  late final _TranslationsContactsSectionsIt sections = _TranslationsContactsSectionsIt._(_root);
  @override
  late final _TranslationsContactsActionButtonIt action_button = _TranslationsContactsActionButtonIt._(_root);
  @override
  late final _TranslationsContactsOverviewIt overview = _TranslationsContactsOverviewIt._(_root);
  @override
  late final _TranslationsContactsCardIt card = _TranslationsContactsCardIt._(_root);
  @override
  late final _TranslationsContactsDetailIt detail = _TranslationsContactsDetailIt._(_root);
}

// Path: breeding_pairs
class _TranslationsBreedingPairsIt extends TranslationsBreedingPairsDe {
  _TranslationsBreedingPairsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Coppia riproduttiva';
  @override
  String get add => 'Aggiungi coppia';
  @override
  String get edit => 'Modifica coppia';
  @override
  String get delete => 'Eliminare la coppia?';
  @override
  late final _TranslationsBreedingPairsStatusIt status = _TranslationsBreedingPairsStatusIt._(_root);
  @override
  String get start_date => 'Data di inizio';
  @override
  String get end_date => 'Data di fine';
  @override
  String get notes => 'Note';
  @override
  late final _TranslationsBreedingPairsYearFilterIt year_filter = _TranslationsBreedingPairsYearFilterIt._(_root);
  @override
  late final _TranslationsBreedingPairsFilterIt filter = _TranslationsBreedingPairsFilterIt._(_root);
  @override
  String get pair_one => 'Coppia';
  @override
  String get pair_other => 'Coppie';
  @override
  String cages_count({required Object Count}) => '${Count} gabbie';
  @override
  String active_broods_one({required Object Count}) => '${Count} covata attiva';
  @override
  String active_broods_other({required Object Count}) => '${Count} covate attive';
  @override
  String broods_total_one({required Object Count}) => '${Count} covata';
  @override
  String broods_total_other({required Object Count}) => '${Count} covate';
  @override
  late final _TranslationsBreedingPairsBroodStatusIt brood_status = _TranslationsBreedingPairsBroodStatusIt._(_root);
  @override
  String get finished_tag => 'CONCLUSA';
  @override
  String get no_cage => 'Senza gabbia';
  @override
  String since({required Object Date}) => 'dal ${Date}';
  @override
  String until({required Object Date}) => 'fino al ${Date}';
  @override
  String empty_for_year({required Object Year}) => 'Nessuna coppia nel ${Year}.';
  @override
  String get empty => 'Nessuna coppia riproduttiva.';
  @override
  String get search_hint => 'Cerca anello, gabbia …';
  @override
  late final _TranslationsBreedingPairsSortByIt sort_by = _TranslationsBreedingPairsSortByIt._(_root);
  @override
  late final _TranslationsBreedingPairsStatsIt stats = _TranslationsBreedingPairsStatsIt._(_root);
}

// Path: resources
class _TranslationsResourcesIt extends TranslationsResourcesDe {
  _TranslationsResourcesIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Risorse';
  @override
  String usage_count({required num count, required Object N}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(
        count,
        zero: 'Non usato da nessun uccello',
        one: 'Usato da un uccello',
        other: 'Usato da ${N} uccelli',
      );
  @override
  String get no_search_results => 'Nessun risultato, tocca «Aggiungi» per creare una nuova voce.';
  @override
  late final _TranslationsResourcesSectionIt section = _TranslationsResourcesSectionIt._(_root);
  @override
  late final _TranslationsResourcesActionsIt actions = _TranslationsResourcesActionsIt._(_root);
  @override
  late final _TranslationsResourcesColorPickerIt color_picker = _TranslationsResourcesColorPickerIt._(_root);
  @override
  late final _TranslationsResourcesFieldIt field = _TranslationsResourcesFieldIt._(_root);
  @override
  late final _TranslationsResourcesDeleteIt delete = _TranslationsResourcesDeleteIt._(_root);
  @override
  late final _TranslationsResourcesSortIt sort = _TranslationsResourcesSortIt._(_root);
}

// Path: birds
class _TranslationsBirdsIt extends TranslationsBirdsDe {
  _TranslationsBirdsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Uccelli';
  @override
  late final _TranslationsBirdsOverviewIt overview = _TranslationsBirdsOverviewIt._(_root);
  @override
  late final _TranslationsBirdsFilterIt filter = _TranslationsBirdsFilterIt._(_root);
}

// Path: pedigree
class _TranslationsPedigreeIt extends TranslationsPedigreeDe {
  _TranslationsPedigreeIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Pedigree';
  @override
  String get subtitle => 'Albero genealogico';
  @override
  String get col_bird => 'Uccello';
  @override
  String get col_parents => 'Genitori';
  @override
  String get col_grandparents => 'Nonni';
  @override
  String get col_greatgrandparents => 'Bisnonni';
  @override
  String get col_ancestors => 'Antenati';
  @override
  String get section_ancestors => 'Ascendenti';
  @override
  String get section_descendants => 'Discendenti';
  @override
  String get no_descendants => 'Nessun discendente registrato';
  @override
  String get unknown => 'Sconosciuto';
  @override
  String get assign_parent => 'Assegna genitore';
  @override
  String get add_father => 'Aggiungi padre';
  @override
  String get add_mother => 'Aggiungi madre';
  @override
  String get common_ancestor => 'Antenato comune (consanguineità)';
  @override
  String get sold => 'Venduto';
  @override
  String get not_own => 'Non in possesso';
  @override
  String get deceased => 'Deceduto';
  @override
  String get share => 'Condividi';
  @override
  String share_filename({required Object Ring}) => 'pedigree_${Ring}';
  @override
  String get depth => 'Profondità';
  @override
  String get depth_all => 'Tutte';
  @override
  String get inbreeding_explainer => 'Questi uccelli sono imparentati sia per linea paterna sia per linea materna.';
  @override
  String get via_father => 'via padre';
  @override
  String get via_mother => 'via madre';
  @override
  late final _TranslationsPedigreeStatsIt stats = _TranslationsPedigreeStatsIt._(_root);
  @override
  String get swipe_hint => 'Scorri per una visione d\'insieme';
}

// Path: inbreeding
class _TranslationsInbreedingIt extends TranslationsInbreedingDe {
  _TranslationsInbreedingIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get coefficient => 'Coefficiente di consanguineità';
  @override
  String get coefficient_short => 'F';
  @override
  String get severity_none => 'Nessuna consanguineità';
  @override
  String get severity_low => 'Bassa';
  @override
  String get severity_elevated => 'Elevata';
  @override
  String get severity_high => 'Alta';
  @override
  String get common_ancestors_one => '1 antenato comune';
  @override
  String common_ancestors_other({required Object Count}) => '${Count} antenati comuni';
  @override
  String get path_contribution => 'Contributo';
  @override
  String banner_label({required Object Percent}) => 'Coefficiente di consanguineità: ${Percent}';
  @override
  String get pair_warning_title => 'Avviso di consanguineità';
  @override
  String pair_warning_body({required Object Percent, required Object Severity}) =>
      'L\'accoppiamento di questi uccelli produce un coefficiente di consanguineità di ${Percent} (${Severity}). Creare comunque?';
  @override
  String get proceed_anyway => 'Crea comunque';
}

// Path: bird
class _TranslationsBirdIt extends TranslationsBirdDe {
  _TranslationsBirdIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Uccello';
  @override
  String get edit => 'Modifica uccello';
  @override
  String get deleted => 'Uccello eliminato';
  @override
  String get saved => 'Uccello salvato';
  @override
  String get delete => 'Eliminare l\'uccello?';
  @override
  String get duplicate => 'Duplica uccello';
  @override
  String get add => 'Aggiungi uccello';
  @override
  String get select_color_label => 'Seleziona colore';
  @override
  String get select_species_label => 'Seleziona specie';
  @override
  String get select_cage_label => 'Seleziona voliera';
  @override
  String get select_owner_label => 'Seleziona proprietario';
  @override
  String get select_sold_to_label => 'Seleziona acquirente';
  @override
  String get select_bought_from_label => 'Seleziona venditore';
  @override
  String created_information({required Object DateTimeDate, required Object Time}) => 'Creato il ${DateTimeDate} alle ${Time}';
  @override
  late final _TranslationsBirdTabsIt tabs = _TranslationsBirdTabsIt._(_root);
  @override
  late final _TranslationsBirdSummaryIt summary = _TranslationsBirdSummaryIt._(_root);
  @override
  late final _TranslationsBirdSectionsIt sections = _TranslationsBirdSectionsIt._(_root);
}

// Path: pair_detail
class _TranslationsPairDetailIt extends TranslationsPairDetailDe {
  _TranslationsPairDetailIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get father_label => '♂ PADRE';
  @override
  String get mother_label => '♀ MADRE';
  @override
  String get current_brood => 'Covata attuale';
  @override
  String get history => 'Cronologia';
  @override
  String history_count_one({required Object Count}) => '${Count} covata';
  @override
  String history_count_other({required Object Count}) => '${Count} covate';
  @override
  String get brood_short => 'COVATA';
  @override
  String day({required Object Day}) => 'Giorno ${Day}';
  @override
  String start_label({required Object Date}) => 'Inizio: ${Date}';
  @override
  String get no_current_brood => 'Nessuna covata attiva';
  @override
  late final _TranslationsPairDetailKpiIt kpi = _TranslationsPairDetailKpiIt._(_root);
  @override
  String get new_brood => 'Nuova covata';
  @override
  String since({required Object Date}) => 'dal ${Date}';
}

// Path: brood
class _TranslationsBroodIt extends TranslationsBroodDe {
  _TranslationsBroodIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Deposizione';
  @override
  String get overview => 'Panoramica covate';
  @override
  String get latest => 'Ultima covata';
  @override
  String get add => 'Aggiungi deposizione';
  @override
  String get delete => 'Eliminare la deposizione?';
  @override
  String get edit => 'Modifica deposizione';
  @override
  String get empty => 'Nessuna deposizione aggiunta';
  @override
  String since({required Object Date}) => 'Dal ${Date}';
  @override
  String eggs_count({required num count, required Object Count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(
        count,
        zero: 'Nessun uovo',
        one: '1 uovo',
        other: '${Count} uova',
      );
  @override
  late final _TranslationsBroodKpiIt kpi = _TranslationsBroodKpiIt._(_root);
  @override
  String hatched_count({required num count, required Object Count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(
        count,
        zero: 'Nessuna schiusa',
        one: '1 schiusa',
        other: '${Count} schiuse',
      );
  @override
  String fledged_count({required num count, required Object Count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(
        count,
        zero: 'Nessun involo',
        one: '1 involata',
        other: '${Count} involate',
      );
  @override
  String get notes => 'Note (facoltativo)';
  @override
  String created_information({required Object DateTimeDate, required Object Time}) => 'Creato il ${DateTimeDate} alle ${Time}';
}

// Path: egg
class _TranslationsEggIt extends TranslationsEggDe {
  _TranslationsEggIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Uovo';
  @override
  String get add => 'Aggiungi uovo';
  @override
  late final _TranslationsEggStatusIt status = _TranslationsEggStatusIt._(_root);
  @override
  late final _TranslationsEggActionIt action = _TranslationsEggActionIt._(_root);
  @override
  String get pick_laid_date => 'Scegli la data di deposizione';
  @override
  String get pick_fledged_date => 'Scegli la data di involo';
  @override
  String get pick_hatched_date => 'Scegli la data di schiusa';
  @override
  String get pick_fertilized_date => 'Scegli la data di fecondazione';
  @override
  String get pick_unfertilized_date => 'Scegli la data di non fecondazione';
  @override
  String get pick_died_date => 'Scegli la data di morte';
  @override
  String get in_stock => 'In allevamento';
  @override
  late final _TranslationsEggLifecycleIt lifecycle = _TranslationsEggLifecycleIt._(_root);
}

// Path: common
class _TranslationsCommonIt extends TranslationsCommonDe {
  _TranslationsCommonIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsCommonBottomSheetIt bottom_sheet = _TranslationsCommonBottomSheetIt._(_root);
  @override
  late final _TranslationsCommonSaleStatusIt sale_status = _TranslationsCommonSaleStatusIt._(_root);
  @override
  String get all_label => 'Tutti';
  @override
  String get more_label => 'Altro';
  @override
  String get less_label => 'Meno';
  @override
  String get search => 'Cerca';
  @override
  String get search_hint => 'Cerca ...';
  @override
  String countbird({required num count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(
        count,
        zero: 'Nessun uccello',
        one: '1 uccello',
        other: '{count} uccelli',
      );
  @override
  String get optional => 'Facoltativo';
  @override
  String get apply => 'Applica';
  @override
  String get reset => 'Reimposta';
  @override
  String get add => 'Aggiungi';
  @override
  String get close => 'Chiudi';
  @override
  String get cancel => 'Annulla';
  @override
  String get ok => 'Ok';
  @override
  late final _TranslationsCommonSexIt sex = _TranslationsCommonSexIt._(_root);
  @override
  late final _TranslationsCommonSellIt sell = _TranslationsCommonSellIt._(_root);
  @override
  late final _TranslationsCommonBoughtIt bought = _TranslationsCommonBoughtIt._(_root);
  @override
  String eggs_short({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(
        n,
        one: 'Uovo',
        other: 'Uova',
      );
  @override
  String get laid_short => 'dep.';
  @override
  String get fertilzed_short => 'fec.';
  @override
  String get hatched_short => 'schi.';
  @override
  String get fledged_short => 'inv.';
  @override
  String get died_short => 'mor.';
  @override
  late final _TranslationsCommonSortingIt sorting = _TranslationsCommonSortingIt._(_root);
  @override
  String get something_went_wrong => 'Ops, qualcosa è andato storto.';
  @override
  String get save => 'Salva';
  @override
  String get general => 'Generale';
  @override
  String get ringnumber => 'Numero anello';
  @override
  String get notes => 'Note';
  @override
  String get clutches => 'Deposizioni';
  @override
  String get laid => 'Deposto';
  @override
  String get fertilzed => 'Fecondo';
  @override
  String get hatched => 'Schiuso';
  @override
  String get fledged => 'Involato';
  @override
  String get origin => 'Provenienza';
  @override
  String get species => 'Specie';
  @override
  String get color => 'Colore';
  @override
  String get cage => 'Voliera';
  @override
  String get owner => 'Proprietario';
  @override
  late final _TranslationsCommonSoldIt sold = _TranslationsCommonSoldIt._(_root);
  @override
  String get gender => 'Sesso';
  @override
  String get died_at => 'Data di morte';
  @override
  String get born_at => 'Data di nascita';
  @override
  String get father => 'Padre';
  @override
  String get mother => 'Madre';
  @override
  String get partner => 'Partner';
  @override
  String get is_for_sale => 'In vendita';
  @override
  String get yes => 'Sì';
  @override
  String get no => 'No';
  @override
  late final _TranslationsCommonUnitIt unit = _TranslationsCommonUnitIt._(_root);
  @override
  String get email => 'E-mail';
  @override
  String get password => 'Password';
  @override
  late final _TranslationsCommonHintIt hint = _TranslationsCommonHintIt._(_root);
  @override
  String get required => 'Questo campo deve essere compilato';
}

// Path: auth
class _TranslationsAuthIt extends TranslationsAuthDe {
  _TranslationsAuthIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get sign_in => 'Accedi';
  @override
  String get sign_up => 'Registrati';
  @override
  String get confirm_password => 'Conferma password';
  @override
  String get passwords_do_not_match => 'Le password non coincidono';
  @override
  String get create_account => 'Crea account';
  @override
  String get first_name => 'Nome';
  @override
  String get last_name => 'Cognome';
  @override
  String get sign_in_text => 'Accedi per continuare. Se non hai ancora un account, puoi crearne uno. Passa semplicemente alla scheda «Crea account».';
  @override
  String get sign_up_text =>
      'Crea un account per continuare. Se hai già un account, puoi semplicemente accedere. Passa semplicemente alla scheda «Accedi».';
  @override
  late final _TranslationsAuthValidatorsIt validators = _TranslationsAuthValidatorsIt._(_root);
}

// Path: csv_import
class _TranslationsCsvImportIt extends TranslationsCsvImportDe {
  _TranslationsCsvImportIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Importazione CSV';
  @override
  String get select_type => 'Scegli cosa vuoi importare:';
  @override
  String get back => 'Indietro';
  @override
  String get select_file => 'Seleziona file CSV';
  @override
  String get cancel => 'Annulla';
  @override
  String get new_import => 'Nuova importazione';
  @override
  String get retry => 'Riprova';
  @override
  String reading({required Object FileName}) => 'Lettura di «${FileName}»...';
  @override
  String importing({required Object ItemName}) => 'Importazione di ${ItemName}...';
  @override
  String progress({required Object Current, required Object Total}) => '${Current} di ${Total}';
  @override
  String get completed => 'Importazione completata';
  @override
  late final _TranslationsCsvImportBirdsIt birds = _TranslationsCsvImportBirdsIt._(_root);
  @override
  late final _TranslationsCsvImportContactsIt contacts = _TranslationsCsvImportContactsIt._(_root);
  @override
  late final _TranslationsCsvImportColumnsIt columns = _TranslationsCsvImportColumnsIt._(_root);
  @override
  late final _TranslationsCsvImportPreviewIt preview = _TranslationsCsvImportPreviewIt._(_root);
  @override
  late final _TranslationsCsvImportTableIt table = _TranslationsCsvImportTableIt._(_root);
  @override
  late final _TranslationsCsvImportStatusIt status = _TranslationsCsvImportStatusIt._(_root);
  @override
  late final _TranslationsCsvImportSummaryIt summary = _TranslationsCsvImportSummaryIt._(_root);
  @override
  late final _TranslationsCsvImportErrorsIt errors = _TranslationsCsvImportErrorsIt._(_root);
}

// Path: menu
class _TranslationsMenuIt extends TranslationsMenuDe {
  _TranslationsMenuIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsMenuSectionsIt sections = _TranslationsMenuSectionsIt._(_root);
  @override
  late final _TranslationsMenuBirdsIt birds = _TranslationsMenuBirdsIt._(_root);
  @override
  late final _TranslationsMenuContactsIt contacts = _TranslationsMenuContactsIt._(_root);
  @override
  late final _TranslationsMenuBreedingsIt breedings = _TranslationsMenuBreedingsIt._(_root);
  @override
  late final _TranslationsMenuResourcesIt resources = _TranslationsMenuResourcesIt._(_root);
  @override
  late final _TranslationsMenuFinancesIt finances = _TranslationsMenuFinancesIt._(_root);
  @override
  late final _TranslationsMenuCsvImportIt csv_import = _TranslationsMenuCsvImportIt._(_root);
  @override
  late final _TranslationsMenuAccountIt account = _TranslationsMenuAccountIt._(_root);
  @override
  late final _TranslationsMenuSpeciesIt species = _TranslationsMenuSpeciesIt._(_root);
  @override
  late final _TranslationsMenuCagesIt cages = _TranslationsMenuCagesIt._(_root);
  @override
  late final _TranslationsMenuColorsIt colors = _TranslationsMenuColorsIt._(_root);
  @override
  late final _TranslationsMenuFinanceCategoriesIt finance_categories = _TranslationsMenuFinanceCategoriesIt._(_root);
  @override
  String get add_bird => 'Aggiungi uccello';
}

// Path: error
class _TranslationsErrorIt extends TranslationsErrorDe {
  _TranslationsErrorIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get message => 'Spiacenti, si è verificato un errore';
}

// Path: dialog
class _TranslationsDialogIt extends TranslationsDialogDe {
  _TranslationsDialogIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsDialogDiscardChangesIt discard_changes = _TranslationsDialogDiscardChangesIt._(_root);
  @override
  late final _TranslationsDialogDeleteEntryIt delete_entry = _TranslationsDialogDeleteEntryIt._(_root);
}

// Path: pop_up_menu
class _TranslationsPopUpMenuIt extends TranslationsPopUpMenuDe {
  _TranslationsPopUpMenuIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get open => 'Apri';
  @override
  String get edit => 'Modifica';
  @override
  String get show => 'Mostra';
  @override
  String get pedigree => 'Pedigree';
  @override
  String get documents => 'Documenti';
  @override
  String get set_ringnumber => 'Imposta numero anello';
  @override
  String get set_color => 'Imposta colore';
  @override
  String get add_to_stock => 'Aggiungi all\'allevamento';
  @override
  String get duplicate => 'Duplica';
  @override
  String get delete => 'Elimina';
}

// Path: export
class _TranslationsExportIt extends TranslationsExportDe {
  _TranslationsExportIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Esporta';
  @override
  String get action => 'Esporta';
  @override
  String get scope_hint => 'Viene esportato esattamente l\'elenco attualmente visualizzato.';
  @override
  String get file_name_label => 'Nome del file';
  @override
  String get empty => 'Non c\'è nulla da esportare.';
  @override
  late final _TranslationsExportEventsIt events = _TranslationsExportEventsIt._(_root);
  @override
  String get row_count_one => '1 voce';
  @override
  String row_count_other({required Object Count}) => '${Count} voci';
  @override
  late final _TranslationsExportFormatIt format = _TranslationsExportFormatIt._(_root);
  @override
  late final _TranslationsExportPresetIt preset = _TranslationsExportPresetIt._(_root);
  @override
  late final _TranslationsExportPdfIt pdf = _TranslationsExportPdfIt._(_root);
  @override
  late final _TranslationsExportHeaderIt header = _TranslationsExportHeaderIt._(_root);
  @override
  String get profile_label => 'Intestazione';
  @override
  late final _TranslationsExportSummaryIt summary = _TranslationsExportSummaryIt._(_root);
  @override
  late final _TranslationsExportListsIt lists = _TranslationsExportListsIt._(_root);
  @override
  late final _TranslationsExportFileNamesIt file_names = _TranslationsExportFileNamesIt._(_root);
  @override
  late final _TranslationsExportPresetsIt presets = _TranslationsExportPresetsIt._(_root);
  @override
  late final _TranslationsExportColumnsIt columns = _TranslationsExportColumnsIt._(_root);
}

// Path: documents
class _TranslationsDocumentsIt extends TranslationsDocumentsDe {
  _TranslationsDocumentsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Crea documento';
  @override
  String get action => 'Crea';
  @override
  String get type_label => 'Documento';
  @override
  late final _TranslationsDocumentsTypesIt types = _TranslationsDocumentsTypesIt._(_root);
  @override
  late final _TranslationsDocumentsProfileIt profile = _TranslationsDocumentsProfileIt._(_root);
  @override
  late final _TranslationsDocumentsPedigreeIt pedigree = _TranslationsDocumentsPedigreeIt._(_root);
  @override
  late final _TranslationsDocumentsReceiptIt receipt = _TranslationsDocumentsReceiptIt._(_root);
}

// Path: snackbars
class _TranslationsSnackbarsIt extends TranslationsSnackbarsDe {
  _TranslationsSnackbarsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get sign_in_failed => 'Accesso non riuscito, controlla le tue credenziali e la connessione a Internet.';
  @override
  String get sign_up_failed => 'Registrazione non riuscita, controlla i dati inseriti e la connessione a Internet.';
  @override
  String get sign_up_success => 'Registrazione riuscita, verrai connesso automaticamente.';
}

// Path: finances.categories
class _TranslationsFinancesCategoriesIt extends TranslationsFinancesCategoriesDe {
  _TranslationsFinancesCategoriesIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Categorie';
  @override
  String get category => 'Categoria';
  @override
  String get add => 'Aggiungi categoria';
  @override
  String get edit => 'Modifica categoria';
  @override
  String get select => 'Seleziona categoria';
  @override
  String get delete => 'Eliminare la categoria?';
  @override
  String get name => 'Nome della categoria';
  @override
  String get color => 'Colore della categoria';
  @override
  String get description => 'Descrizione';
  @override
  String get list_title => 'Categorie';
  @override
  String get designation => 'Denominazione';
  @override
  String get bookings => 'Movimenti';
  @override
  late final _TranslationsFinancesCategoriesFiltersIt filters = _TranslationsFinancesCategoriesFiltersIt._(_root);
  @override
  late final _TranslationsFinancesCategoriesGroupsIt groups = _TranslationsFinancesCategoriesGroupsIt._(_root);
  @override
  late final _TranslationsFinancesCategoriesKindSingularIt kind_singular = _TranslationsFinancesCategoriesKindSingularIt._(_root);
  @override
  late final _TranslationsFinancesCategoriesPillIt pill = _TranslationsFinancesCategoriesPillIt._(_root);
  @override
  String get empty => 'Nessuna categoria';
  @override
  String type_lock_hint({required Object Usage}) => 'Il tipo non può più essere modificato dopo la creazione — ${Usage} movimenti collegati.';
  @override
  String get type_lock_default => 'Determina il segno di calcolo dei movimenti.';
  @override
  String get detail_title => 'Categoria finanziaria';
  @override
  late final _TranslationsFinancesCategoriesDetailIt detail = _TranslationsFinancesCategoriesDetailIt._(_root);
  @override
  late final _TranslationsFinancesCategoriesMonthsShortIt months_short = _TranslationsFinancesCategoriesMonthsShortIt._(_root);
}

// Path: finances.add
class _TranslationsFinancesAddIt extends TranslationsFinancesAddDe {
  _TranslationsFinancesAddIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Aggiungi voce';
  @override
  String get title => 'Oggetto';
  @override
  String get date => 'Data';
  @override
  String get category => 'Seleziona categoria';
  @override
  String get amount => 'Inserisci importo';
  @override
  String get amount_invalid => 'Inserisci un importo valido';
  @override
  String get notes => 'Descrizione';
  @override
  String get bird => 'Uccello interessato';
}

// Path: finances.kind
class _TranslationsFinancesKindIt extends TranslationsFinancesKindDe {
  _TranslationsFinancesKindIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Tipo';
  @override
  String get income => 'Entrate';
  @override
  String get expense => 'Uscite';
}

// Path: finances.summary
class _TranslationsFinancesSummaryIt extends TranslationsFinancesSummaryDe {
  _TranslationsFinancesSummaryIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get net => 'Saldo';
  @override
  String get net_label => 'NETTO';
  @override
  String get today => 'OGGI';
  @override
  String get income_label => 'ENTRATE';
  @override
  String get expense_label => 'USCITE';
}

// Path: finances.view
class _TranslationsFinancesViewIt extends TranslationsFinancesViewDe {
  _TranslationsFinancesViewIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Tutti';
  @override
  String get today => 'Oggi';
  @override
  String get yesterday => 'Ieri';
  @override
  String get search_hint => 'Cerca movimento …';
  @override
  String get empty => 'Nessun movimento nel periodo';
  @override
  String get categories_filter_title => 'Filtra per categoria';
  @override
  String get all_categories => 'Tutte le categorie';
  @override
  String get filter_button => 'Filtro';
  @override
  String get filter_sheet_title => 'Filtra categorie';
  @override
  String get filter_clear_all => 'Deseleziona tutto';
  @override
  String get filter_apply => 'Applica';
  @override
  String get filter_search_hint => 'Cerca categoria …';
}

// Path: finances.scope
class _TranslationsFinancesScopeIt extends TranslationsFinancesScopeDe {
  _TranslationsFinancesScopeIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get month => 'Mese';
  @override
  String get year => 'Anno';
  @override
  String get all => 'Tutti';
  @override
  String get custom => 'Periodo';
  @override
  String get current_year => 'QUEST\'ANNO';
  @override
  String get from_short => 'Dal';
  @override
  String get to_short => 'Al';
  @override
  String get pick_date => 'Scegli data';
}

// Path: finances.filter
class _TranslationsFinancesFilterIt extends TranslationsFinancesFilterDe {
  _TranslationsFinancesFilterIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get bird => 'Uccello';
  @override
  String get date_range => 'Periodo';
  @override
  String get from => 'Dal';
  @override
  String get to => 'Al';
  @override
  String get all_years => 'Tutti';
}

// Path: finances.sorting
class _TranslationsFinancesSortingIt extends TranslationsFinancesSortingDe {
  _TranslationsFinancesSortingIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get date_desc => 'Data (nuovo → vecchio)';
  @override
  String get date_asc => 'Data (vecchio → nuovo)';
  @override
  String get amount_desc => 'Importo (alto → basso)';
  @override
  String get amount_asc => 'Importo (basso → alto)';
}

// Path: account.switch_to_local_dialog
class _TranslationsAccountSwitchToLocalDialogIt extends TranslationsAccountSwitchToLocalDialogDe {
  _TranslationsAccountSwitchToLocalDialogIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Passa alla modalità locale';
  @override
  String get content =>
      'Tutti i tuoi dati verranno copiati dal server nel database locale. L\'app verrà quindi riavviata in modalità locale.\n\nVuoi continuare?';
  @override
  String get confirm => 'Passa';
}

// Path: account.local_mode
class _TranslationsAccountLocalModeIt extends TranslationsAccountLocalModeDe {
  _TranslationsAccountLocalModeIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Modalità locale';
  @override
  String get description => 'Tutti i dati vengono salvati localmente su questo dispositivo.';
}

// Path: account.appearance
class _TranslationsAccountAppearanceIt extends TranslationsAccountAppearanceDe {
  _TranslationsAccountAppearanceIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Aspetto';
  @override
  String get system => 'Sistema';
  @override
  String get light => 'Chiaro';
  @override
  String get dark => 'Scuro';
}

// Path: account.language
class _TranslationsAccountLanguageIt extends TranslationsAccountLanguageDe {
  _TranslationsAccountLanguageIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Lingua';
  @override
  String get system => 'Lingua di sistema';
  @override
  String get sheet_title => 'Scegli la lingua';
}

// Path: account.currency
class _TranslationsAccountCurrencyIt extends TranslationsAccountCurrencyDe {
  _TranslationsAccountCurrencyIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Valuta';
  @override
  String get sheet_title => 'Scegli la valuta';
  @override
  String get hint => 'Gli importi vengono solo rietichettati, non convertiti.';
}

// Path: account.profile
class _TranslationsAccountProfileIt extends TranslationsAccountProfileDe {
  _TranslationsAccountProfileIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String breeder_number({required Object Value}) => 'Numero allevatore ${Value}';
  @override
  String get no_contact => 'Nessun contatto di profilo impostato';
  @override
  String get edit => 'Modifica profilo';
}

// Path: account.user
class _TranslationsAccountUserIt extends TranslationsAccountUserDe {
  _TranslationsAccountUserIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String email({required Object Value}) => 'E-mail: ${Value}';
  @override
  String first_name({required Object Value}) => 'Nome: ${Value}';
  @override
  String last_name({required Object Value}) => 'Cognome: ${Value}';
}

// Path: account.events
class _TranslationsAccountEventsIt extends TranslationsAccountEventsDe {
  _TranslationsAccountEventsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String switch_failed({required Object Error}) => 'Passaggio non riuscito: ${Error}';
  @override
  String switched_to_local({required num count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(
        count,
        one: '1 voce trasferita. Modalità locale attiva.',
        other: '{count} voci trasferite. Modalità locale attiva.',
      );
}

// Path: backup.external
class _TranslationsBackupExternalIt extends TranslationsBackupExternalDe {
  _TranslationsBackupExternalIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get never => 'Mai salvato esternamente';
  @override
  String get today => 'Ultimo salvataggio esterno: oggi';
  @override
  String days_ago({required num count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(
        count,
        one: 'Ultimo salvataggio esterno: 1 giorno fa',
        other: 'Ultimo salvataggio esterno: {count} giorni fa',
      );
}

// Path: backup.actions
class _TranslationsBackupActionsIt extends TranslationsBackupActionsDe {
  _TranslationsBackupActionsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get share_latest => 'Condividi ultimo backup';
  @override
  String get create_now => 'Crea backup ora';
  @override
  String get create_and_save => 'Crea e salva backup';
  @override
  String get restore => 'Ripristina backup';
  @override
  String get manage => 'Gestisci tutti i backup…';
  @override
  String get kNew => 'Nuovo';
}

// Path: backup.restore_sheet
class _TranslationsBackupRestoreSheetIt extends TranslationsBackupRestoreSheetDe {
  _TranslationsBackupRestoreSheetIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Seleziona backup';
  @override
  String get available => 'Backup disponibili';
  @override
  String get kind_cloud => 'CLOUD';
  @override
  String get kind_manual => 'MANUALE';
  @override
  String get pick_file_title => 'Scegli file dal dispositivo';
  @override
  String get pick_file_sub => 'Seleziona manualmente un backup .zip';
  @override
  String get empty => 'Nessun backup trovato';
  @override
  String get choose_folder_first => 'Scegli prima una cartella cloud';
  @override
  String get confirm_title => 'Ripristinare il backup?';
  @override
  String warning({required Object Name}) =>
      'I dati attuali su questo dispositivo verranno sostituiti da questo stato. Le modifiche successive a «${Name}» andranno perse.';
  @override
  String get confirm_button => 'Sì, sostituisci e ripristina';
  @override
  String get restoring => 'Ripristino in corso …';
  @override
  String get back => 'Indietro';
}

// Path: backup.menu
class _TranslationsBackupMenuIt extends TranslationsBackupMenuDe {
  _TranslationsBackupMenuIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get share => 'Condividi';
  @override
  String get restore => 'Ripristina';
  @override
  String get delete => 'Elimina';
}

// Path: backup.delete_dialog
class _TranslationsBackupDeleteDialogIt extends TranslationsBackupDeleteDialogDe {
  _TranslationsBackupDeleteDialogIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Eliminare il backup?';
  @override
  String get confirm => 'Elimina';
}

// Path: backup.restore_dialog
class _TranslationsBackupRestoreDialogIt extends TranslationsBackupRestoreDialogDe {
  _TranslationsBackupRestoreDialogIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ripristina backup';
  @override
  String get content_picked => 'I dati locali attuali verranno sovrascritti dal backup selezionato. Continuare?';
  @override
  String content_named({required Object Name}) => 'I dati locali attuali verranno sovrascritti dal backup\n"${Name}".\n\nContinuare?';
  @override
  String get confirm => 'Ripristina';
}

// Path: backup.reminder
class _TranslationsBackupReminderIt extends TranslationsBackupReminderDe {
  _TranslationsBackupReminderIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Metti al sicuro il backup';
  @override
  String get never => 'Non hai ancora salvato alcun backup esterno.';
  @override
  String age({required num count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(
        count,
        one: 'Il tuo ultimo backup esterno risale a 1 giorno fa.',
        other: 'Il tuo ultimo backup esterno risale a {count} giorni fa.',
      );
  @override
  String get body =>
      'Salvalo ora in un luogo sicuro (iCloud, Drive, e-mail) affinché i tuoi dati non vadano persi in caso di smarrimento del dispositivo.';
  @override
  String get snooze => 'Ricordamelo più tardi';
  @override
  String get already_saved => 'Già salvato';
  @override
  String get share_now => 'Condividi ora';
  @override
  String get cloud_hint =>
      'In alternativa puoi attivare il backup automatico nel cloud: ogni salvataggio viene caricato nel tuo cloud senza doverci pensare.';
  @override
  String get setup_cloud => 'Configura il cloud';
}

// Path: backup.events
class _TranslationsBackupEventsIt extends TranslationsBackupEventsDe {
  _TranslationsBackupEventsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get created => 'Backup creato';
  @override
  String create_failed({required Object Error}) => 'Backup non riuscito: ${Error}';
  @override
  String share_failed({required Object Error}) => 'Condivisione non riuscita: ${Error}';
  @override
  String delete_failed({required Object Error}) => 'Eliminazione non riuscita: ${Error}';
  @override
  String restore_failed({required Object Error}) => 'Ripristino non riuscito: ${Error}';
}

// Path: backup.cloud
class _TranslationsBackupCloudIt extends TranslationsBackupCloudDe {
  _TranslationsBackupCloudIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get section_title => 'Backup cloud';
  @override
  String get enable => 'Salva automaticamente nel cloud';
  @override
  String get choose_location => 'Scegli cartella cloud…';
  @override
  String get location_none => 'Nessuna cartella cloud scelta';
  @override
  String location_set({required Object Name}) => 'Destinazione: ${Name}';
  @override
  String get sync_now => 'Sincronizza ora';
  @override
  String get auto_title => 'Backup cloud automatico';
  @override
  String get auto_on => 'Attivo · salva i tuoi dati automaticamente';
  @override
  String get auto_off => 'Disattivato';
  @override
  String get folder_label => 'Cartella cloud';
  @override
  String get change => 'Modifica';
  @override
  late final _TranslationsBackupCloudChooseFolderDialogIt choose_folder_dialog = _TranslationsBackupCloudChooseFolderDialogIt._(_root);
  @override
  late final _TranslationsBackupCloudSyncAfterChangeDialogIt sync_after_change_dialog = _TranslationsBackupCloudSyncAfterChangeDialogIt._(_root);
  @override
  String get last_sync_label => 'Ultima sincronizzazione';
  @override
  String get syncing => 'Sincronizzazione in corso …';
  @override
  String get syncing_hint => 'Le tue foto e i tuoi dati vengono caricati nel cloud.';
  @override
  String get settings => 'Impostazioni di sincronizzazione';
  @override
  late final _TranslationsBackupCloudIntervalIt interval = _TranslationsBackupCloudIntervalIt._(_root);
  @override
  late final _TranslationsBackupCloudStatusIt status = _TranslationsBackupCloudStatusIt._(_root);
  @override
  late final _TranslationsBackupCloudEventsIt events = _TranslationsBackupCloudEventsIt._(_root);
}

// Path: colors.stats
class _TranslationsColorsStatsIt extends TranslationsColorsStatsDe {
  _TranslationsColorsStatsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get birds => 'Uccelli';
  @override
  String get male_roosters => 'Maschi';
  @override
  String get female_hens => 'Femmine';
}

// Path: cages.section
class _TranslationsCagesSectionIt extends TranslationsCagesSectionDe {
  _TranslationsCagesSectionIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get basics => 'Dati di base';
  @override
  String get capacity => 'Capienza e occupazione';
}

// Path: cages.field
class _TranslationsCagesFieldIt extends TranslationsCagesFieldDe {
  _TranslationsCagesFieldIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get type => 'Tipo';
  @override
  String get location => 'Posizione';
  @override
  String get max_capacity => 'Posti massimi';
}

// Path: cages.units
class _TranslationsCagesUnitsIt extends TranslationsCagesUnitsDe {
  _TranslationsCagesUnitsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get birds => 'uccelli';
}

// Path: cages.filters
class _TranslationsCagesFiltersIt extends TranslationsCagesFiltersDe {
  _TranslationsCagesFiltersIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Tutte';
  @override
  String get aviaries => 'Voliere';
  @override
  String get breeding_boxes => 'Gabbie da cova';
  @override
  String get quarantine => 'Quarantena';
  @override
  String get empty => 'Vuote';
}

// Path: cages.types
class _TranslationsCagesTypesIt extends TranslationsCagesTypesDe {
  _TranslationsCagesTypesIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get aviary => 'Voliera';
  @override
  String get breeding_box => 'Gabbia da cova';
  @override
  String get quarantine => 'Quarantena';
}

// Path: species.section
class _TranslationsSpeciesSectionIt extends TranslationsSpeciesSectionDe {
  _TranslationsSpeciesSectionIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get identity => 'Identità';
  @override
  String get lifecycle => 'Ciclo di vita';
  @override
  String get icon => 'Icona';
  @override
  String get notes => 'Note';
}

// Path: species.stats
class _TranslationsSpeciesStatsIt extends TranslationsSpeciesStatsDe {
  _TranslationsSpeciesStatsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get stock => 'In allevamento';
  @override
  String get male_roosters => 'Maschi';
  @override
  String get female_hens => 'Femmine';
}

// Path: contacts.fields
class _TranslationsContactsFieldsIt extends TranslationsContactsFieldsDe {
  _TranslationsContactsFieldsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get first_name => 'Nome';
  @override
  String get last_name => 'Cognome';
  @override
  late final _TranslationsContactsFieldsTitleIt title = _TranslationsContactsFieldsTitleIt._(_root);
  @override
  late final _TranslationsContactsFieldsAppUserIt app_user = _TranslationsContactsFieldsAppUserIt._(_root);
  @override
  String get email => 'E-mail';
  @override
  String get number => 'Numero allevatore';
  @override
  String get phone => 'Numero di telefono';
  @override
  String get cell_phone_number => 'Numero di cellulare';
  @override
  String get address => 'Indirizzo';
  @override
  String get city => 'Città';
  @override
  String get country => 'Paese';
  @override
  String get postal => 'CAP';
  @override
  String get website => 'Sito web';
}

// Path: contacts.sections
class _TranslationsContactsSectionsIt extends TranslationsContactsSectionsDe {
  _TranslationsContactsSectionsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get personal => 'Informazioni personali';
  @override
  String get app_user => 'Utente dell\'app';
  @override
  String get breeder => 'Informazioni allevatore';
  @override
  String get contact => 'Recapiti';
  @override
  String get address => 'Indirizzo';
  @override
  String get meta => 'Metadati';
}

// Path: contacts.action_button
class _TranslationsContactsActionButtonIt extends TranslationsContactsActionButtonDe {
  _TranslationsContactsActionButtonIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get open_website_tooltipp => 'Apri sito web';
  @override
  String get send_email_tooltipp => 'Scrivi e-mail';
  @override
  String get call_tooltipp => 'Chiama';
}

// Path: contacts.overview
class _TranslationsContactsOverviewIt extends TranslationsContactsOverviewDe {
  _TranslationsContactsOverviewIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get total_label => 'Contatti';
  @override
  String bought_chip({required Object Count}) => '${Count} acquistati';
  @override
  String sold_chip({required Object Count}) => '${Count} venduti';
  @override
  String get all_contacts => 'Tutti i contatti';
  @override
  String get search_hint => 'Cerca nome, città …';
  @override
  String activity_sold({required Object Ring}) => 'Venduto ${Ring}';
  @override
  String activity_bought({required Object Ring}) => 'Acquistato ${Ring}';
}

// Path: contacts.card
class _TranslationsContactsCardIt extends TranslationsContactsCardDe {
  _TranslationsContactsCardIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get call => 'Chiama';
  @override
  String get email => 'E-mail';
  @override
  String get details => 'Dettagli';
}

// Path: contacts.detail
class _TranslationsContactsDetailIt extends TranslationsContactsDetailDe {
  _TranslationsContactsDetailIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Contatto';
  @override
  String get bought => 'Acquistato';
  @override
  String get sold => 'Venduto';
  @override
  String get balance => 'Saldo';
  @override
  String get contact_data => 'Recapiti';
  @override
  String get no_contact_data => 'Nessun recapito salvato';
  @override
  String get linked_birds => 'Uccelli collegati';
  @override
  String get role_sold => 'VENDUTO';
  @override
  String get role_bought => 'ACQUISTATO';
  @override
  String get location => 'Posizione';
  @override
  String get edit => 'Modifica';
}

// Path: breeding_pairs.status
class _TranslationsBreedingPairsStatusIt extends TranslationsBreedingPairsStatusDe {
  _TranslationsBreedingPairsStatusIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Stato';
  @override
  String get active => 'Attiva';
  @override
  String get paused => 'In pausa';
  @override
  String get finished => 'Conclusa';
}

// Path: breeding_pairs.year_filter
class _TranslationsBreedingPairsYearFilterIt extends TranslationsBreedingPairsYearFilterDe {
  _TranslationsBreedingPairsYearFilterIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'ANNO';
  @override
  String get all => 'Tutti';
}

// Path: breeding_pairs.filter
class _TranslationsBreedingPairsFilterIt extends TranslationsBreedingPairsFilterDe {
  _TranslationsBreedingPairsFilterIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String show_results({required Object Count}) => 'Mostra ${Count} coppie';
}

// Path: breeding_pairs.brood_status
class _TranslationsBreedingPairsBroodStatusIt extends TranslationsBreedingPairsBroodStatusDe {
  _TranslationsBreedingPairsBroodStatusIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get active => 'attiva';
  @override
  String get inactive => 'in pausa';
  @override
  String get completed => 'conclusa';
}

// Path: breeding_pairs.sort_by
class _TranslationsBreedingPairsSortByIt extends TranslationsBreedingPairsSortByDe {
  _TranslationsBreedingPairsSortByIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get cage => 'Voliera';
  @override
  String get updated => 'Ultima modifica';
  @override
  String get created => 'Creata';
}

// Path: breeding_pairs.stats
class _TranslationsBreedingPairsStatsIt extends TranslationsBreedingPairsStatsDe {
  _TranslationsBreedingPairsStatsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsBreedingPairsStatsAbbrIt abbr = _TranslationsBreedingPairsStatsAbbrIt._(_root);
  @override
  late final _TranslationsBreedingPairsStatsLabelIt label = _TranslationsBreedingPairsStatsLabelIt._(_root);
  @override
  late final _TranslationsBreedingPairsStatsLegendIt legend = _TranslationsBreedingPairsStatsLegendIt._(_root);
}

// Path: resources.section
class _TranslationsResourcesSectionIt extends TranslationsResourcesSectionDe {
  _TranslationsResourcesSectionIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get identity => 'Identità';
  @override
  String get basics => 'Dati di base';
  @override
  String get lifecycle => 'Ciclo di vita';
  @override
  String get icon => 'Icona';
  @override
  String get notes => 'Note';
  @override
  String get color => 'Colore';
}

// Path: resources.actions
class _TranslationsResourcesActionsIt extends TranslationsResourcesActionsDe {
  _TranslationsResourcesActionsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get edit => 'Modifica';
}

// Path: resources.color_picker
class _TranslationsResourcesColorPickerIt extends TranslationsResourcesColorPickerDe {
  _TranslationsResourcesColorPickerIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Scegli colore';
}

// Path: resources.field
class _TranslationsResourcesFieldIt extends TranslationsResourcesFieldDe {
  _TranslationsResourcesFieldIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Nome';
  @override
  String get required => 'Campo obbligatorio';
}

// Path: resources.delete
class _TranslationsResourcesDeleteIt extends TranslationsResourcesDeleteDe {
  _TranslationsResourcesDeleteIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String with_usage({required Object Usage}) => '${Usage} collegamenti verranno rimossi. Continuare comunque?';
}

// Path: resources.sort
class _TranslationsResourcesSortIt extends TranslationsResourcesSortDe {
  _TranslationsResourcesSortIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Ordina';
  @override
  late final _TranslationsResourcesSortByIt by = _TranslationsResourcesSortByIt._(_root);
  @override
  String get asc => 'Crescente';
  @override
  String get desc => 'Decrescente';
}

// Path: birds.overview
class _TranslationsBirdsOverviewIt extends TranslationsBirdsOverviewDe {
  _TranslationsBirdsOverviewIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String subtitle({required Object Birds, required Object Cages}) => '${Birds} uccelli · ${Cages} gabbie';
  @override
  String for_sale({required Object Count}) => '${Count} in vendita';
  @override
  String get group_by_cage => 'Raggruppa: gabbia';
  @override
  String get no_cage => 'Senza gabbia';
  @override
  String get birds_label => 'Uccelli';
  @override
  String get sale_badge => 'In vendita';
  @override
  String get empty => 'Nessun uccello trovato';
  @override
  String get view_grouped => 'Raggruppa per voliera';
  @override
  String get view_list => 'Mostra come elenco';
}

// Path: birds.filter
class _TranslationsBirdsFilterIt extends TranslationsBirdsFilterDe {
  _TranslationsBirdsFilterIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String show_results({required Object Count}) => 'Mostra ${Count} uccelli';
  @override
  String get sort_title => 'Ordina';
  @override
  String get more_title => 'Altro';
  @override
  String get show_deceased => 'Mostra deceduti';
  @override
  String get endangered_only => 'Solo specie minacciate';
  @override
  String get reportable_only => 'Solo specie da denunciare';
}

// Path: pedigree.stats
class _TranslationsPedigreeStatsIt extends TranslationsPedigreeStatsDe {
  _TranslationsPedigreeStatsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get generations => 'Generazioni';
  @override
  String get ancestors => 'Ascendenti';
  @override
  String get descendants => 'Discendenti';
  @override
  String get inbreeding => 'Consanguineità';
  @override
  String get no_inbreeding => 'Nessuna consanguineità';
}

// Path: bird.tabs
class _TranslationsBirdTabsIt extends TranslationsBirdTabsDe {
  _TranslationsBirdTabsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get general => 'Generale';
  @override
  String get state_and_life => 'Stato';
  @override
  String get breeding => 'Allevamento';
  @override
  String get purchase_and_sale => 'Finanze';
}

// Path: bird.summary
class _TranslationsBirdSummaryIt extends TranslationsBirdSummaryDe {
  _TranslationsBirdSummaryIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get sex => 'Sesso';
  @override
  String get age => 'Età';
  @override
  String get cage => 'Gabbia';
  @override
  String get offspring => 'Discendenti';
  @override
  String get unknown => '—';
}

// Path: bird.sections
class _TranslationsBirdSectionsIt extends TranslationsBirdSectionsDe {
  _TranslationsBirdSectionsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsBirdSectionsIdentificationIt identification = _TranslationsBirdSectionsIdentificationIt._(_root);
  @override
  late final _TranslationsBirdSectionsKeepingIt keeping = _TranslationsBirdSectionsKeepingIt._(_root);
  @override
  late final _TranslationsBirdSectionsStatusIt status = _TranslationsBirdSectionsStatusIt._(_root);
  @override
  late final _TranslationsBirdSectionsSaleIt sale = _TranslationsBirdSectionsSaleIt._(_root);
  @override
  late final _TranslationsBirdSectionsPurchaseIt purchase = _TranslationsBirdSectionsPurchaseIt._(_root);
  @override
  late final _TranslationsBirdSectionsHealthIt health = _TranslationsBirdSectionsHealthIt._(_root);
  @override
  late final _TranslationsBirdSectionsLifeIt life = _TranslationsBirdSectionsLifeIt._(_root);
  @override
  late final _TranslationsBirdSectionsNotesIt notes = _TranslationsBirdSectionsNotesIt._(_root);
  @override
  late final _TranslationsBirdSectionsPhotosIt photos = _TranslationsBirdSectionsPhotosIt._(_root);
  @override
  late final _TranslationsBirdSectionsParentIt parent = _TranslationsBirdSectionsParentIt._(_root);
  @override
  late final _TranslationsBirdSectionsBreederIt breeder = _TranslationsBirdSectionsBreederIt._(_root);
  @override
  late final _TranslationsBirdSectionsChildrenIt children = _TranslationsBirdSectionsChildrenIt._(_root);
}

// Path: pair_detail.kpi
class _TranslationsPairDetailKpiIt extends TranslationsPairDetailKpiDe {
  _TranslationsPairDetailKpiIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get broods => 'Covate';
  @override
  String get eggs => 'Uova';
  @override
  String get hatched => 'Schiuse';
  @override
  String get fledged => 'Involate';
}

// Path: brood.kpi
class _TranslationsBroodKpiIt extends TranslationsBroodKpiDe {
  _TranslationsBroodKpiIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get eggs => 'Uova';
  @override
  String get hatched => 'Schiuse';
  @override
  String get fledged => 'Involate';
}

// Path: egg.status
class _TranslationsEggStatusIt extends TranslationsEggStatusDe {
  _TranslationsEggStatusIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get laid => 'Deposto';
  @override
  String get fertilized => 'Fecondo';
  @override
  String get unfertilized => 'Non fecondo';
  @override
  String get hatched => 'Schiuso';
  @override
  String get dead => 'Morto';
  @override
  String get fledged => 'Involato';
  @override
  String get in_stock => 'In allevamento';
  @override
  String get unknown => 'Sconosciuto';
}

// Path: egg.action
class _TranslationsEggActionIt extends TranslationsEggActionDe {
  _TranslationsEggActionIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get set_ringnumber => 'Inserisci nuovo numero anello';
}

// Path: egg.lifecycle
class _TranslationsEggLifecycleIt extends TranslationsEggLifecycleDe {
  _TranslationsEggLifecycleIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String title({required Object Number}) => 'Uovo ${Number}';
  @override
  String get section_cycle => 'Ciclo di vita';
  @override
  String get section_details => 'Dettagli';
  @override
  String get set_date => 'Imposta data';
  @override
  String get confirm_delete => 'Eliminare l\'uovo?';
}

// Path: common.bottom_sheet
class _TranslationsCommonBottomSheetIt extends TranslationsCommonBottomSheetDe {
  _TranslationsCommonBottomSheetIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String search_empty_builder_text({required Object Text}) => 'La ricerca di ${Text} purtroppo non ha dato risultati.';
}

// Path: common.sale_status
class _TranslationsCommonSaleStatusIt extends TranslationsCommonSaleStatusDe {
  _TranslationsCommonSaleStatusIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Stato acquisto/vendita';
  @override
  String get not_for_sale => 'Non in vendita';
  @override
  String get listed => 'Offerto in vendita';
  @override
  String get reserved => 'Prenotato';
  @override
  String get sold => 'Venduto';
}

// Path: common.sex
class _TranslationsCommonSexIt extends TranslationsCommonSexDe {
  _TranslationsCommonSexIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Sesso';
  @override
  String get male => 'Maschio';
  @override
  String get female => 'Femmina';
  @override
  String get unknown => 'Sconosciuto';
}

// Path: common.sell
class _TranslationsCommonSellIt extends TranslationsCommonSellDe {
  _TranslationsCommonSellIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get year => 'Anno di vendita';
  @override
  String get bird => 'Vendi uccello';
  @override
  late final _TranslationsCommonSellPriceIt price = _TranslationsCommonSellPriceIt._(_root);
}

// Path: common.bought
class _TranslationsCommonBoughtIt extends TranslationsCommonBoughtDe {
  _TranslationsCommonBoughtIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get year => 'Anno di acquisto';
  @override
  String get from => 'Acquistato da';
  @override
  String get at => 'Acquistato il';
  @override
  String get price => 'Prezzo di acquisto';
}

// Path: common.sorting
class _TranslationsCommonSortingIt extends TranslationsCommonSortingDe {
  _TranslationsCommonSortingIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Ordinamento';
  @override
  String get updated => 'Ultimo aggiornamento';
  @override
  String get age => 'Età';
  @override
  String get ringnumber => 'Numero anello';
}

// Path: common.sold
class _TranslationsCommonSoldIt extends TranslationsCommonSoldDe {
  _TranslationsCommonSoldIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get to => 'Venduto a';
  @override
  String get at => 'Venduto il';
}

// Path: common.unit
class _TranslationsCommonUnitIt extends TranslationsCommonUnitDe {
  _TranslationsCommonUnitIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get m => 'm';
  @override
  String get cm => 'cm';
}

// Path: common.hint
class _TranslationsCommonHintIt extends TranslationsCommonHintDe {
  _TranslationsCommonHintIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get select => 'Seleziona';
  @override
  String get text => 'Inserisci';
}

// Path: auth.validators
class _TranslationsAuthValidatorsIt extends TranslationsAuthValidatorsDe {
  _TranslationsAuthValidatorsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get email => 'Inserisci un indirizzo e-mail valido';
  @override
  String get email_format => 'Inserisci un indirizzo e-mail valido';
  @override
  String get password => 'Inserisci una password';
  @override
  String get password_length => 'La password deve contenere almeno 6 caratteri';
  @override
  String get first_name => 'Inserisci il tuo nome';
  @override
  String get first_name_length => 'Il nome deve contenere almeno 3 caratteri';
  @override
  String get last_name => 'Inserisci il tuo cognome';
}

// Path: csv_import.birds
class _TranslationsCsvImportBirdsIt extends TranslationsCsvImportBirdsDe {
  _TranslationsCsvImportBirdsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Uccelli';
  @override
  String get description => 'Importa uccelli con specie,\ncolore e voliera';
  @override
  String get import_title => 'Importa uccelli da CSV';
  @override
  String get import_description =>
      'Scegli un file CSV con i dati dei tuoi uccelli.\nSpecie, colori e voliere vengono creati automaticamente se non esistono ancora. Come separatore nel file CSV è previsto il punto e virgola (;). Il formato data deve essere yyyy-MM-dd, dd.MM.yyyy oppure dd/MM/yyyy.';
  @override
  String import_button({required Object Count}) => 'Importa ${Count} uccelli';
  @override
  String get item_name => 'uccelli';
}

// Path: csv_import.contacts
class _TranslationsCsvImportContactsIt extends TranslationsCsvImportContactsDe {
  _TranslationsCsvImportContactsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Contatti';
  @override
  String get description => 'Importa dati di contatto\ncome allevatori o acquirenti';
  @override
  String get import_title => 'Importa contatti da CSV';
  @override
  String get import_description => 'Scegli un file CSV con i tuoi dati di contatto. Come separatore nel file CSV è previsto il punto e virgola (;).';
  @override
  String import_button({required Object Count}) => 'Importa ${Count} contatti';
  @override
  String get item_name => 'contatti';
}

// Path: csv_import.columns
class _TranslationsCsvImportColumnsIt extends TranslationsCsvImportColumnsDe {
  _TranslationsCsvImportColumnsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Colonne supportate:';
  @override
  String get date_formats => 'Formati data: yyyy-MM-dd, dd.MM.yyyy, dd/MM/yyyy';
  @override
  String get bird_columns =>
      '• ringnumber / ring / ringnummer - Numero anello (obbligatorio)\n• species / art / vogelart - Specie\n• color / farbe / colour - Colore\n• cage / voliere / käfig - Voliera\n• sex / geschlecht - Sesso (male/female/männlich/weiblich)\n• born_at / geboren / geburtsdatum - Data di nascita\n• father / vater - Numero anello del padre\n• mother / mutter - Numero anello della madre\n• notes / notizen / bemerkungen - Note';
  @override
  String get contact_columns =>
      '• firstname / vorname - Nome\n• name / nachname / lastname - Cognome (è richiesto almeno il nome o il cognome)\n• number / nummer / kundennummer - Numero contatto\n• phone / telefon / mobil - Numero di telefono\n• email / e-mail / mail - Indirizzo e-mail\n• address / adresse / strasse - Via\n• city / stadt / ort - Città\n• postalcode / plz / zip - CAP\n• country / land - Paese\n• website / homepage / url - Sito web';
}

// Path: csv_import.preview
class _TranslationsCsvImportPreviewIt extends TranslationsCsvImportPreviewDe {
  _TranslationsCsvImportPreviewIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String valid({required Object Count}) => '${Count} validi';
  @override
  String invalid({required Object Count}) => '${Count} non validi';
}

// Path: csv_import.table
class _TranslationsCsvImportTableIt extends TranslationsCsvImportTableDe {
  _TranslationsCsvImportTableIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get row => '#';
  @override
  String get ring_number => 'Numero anello';
  @override
  String get species => 'Specie';
  @override
  String get color => 'Colore';
  @override
  String get cage => 'Voliera';
  @override
  String get sex => 'Sesso';
  @override
  String get birth_date => 'Nascita';
  @override
  String get death_date => 'Deceduto';
  @override
  String get father => 'Padre';
  @override
  String get mother => 'Madre';
  @override
  String get breeder => 'Allevatore';
  @override
  String get owner => 'Proprietario';
  @override
  String get status => 'Stato';
  @override
  String get number => 'Numero';
  @override
  String get first_name => 'Nome';
  @override
  String get last_name => 'Cognome';
  @override
  String get phone => 'Telefono';
  @override
  String get cell_phone => 'Cellulare';
  @override
  String get email => 'E-mail';
  @override
  String get city => 'Città';
}

// Path: csv_import.status
class _TranslationsCsvImportStatusIt extends TranslationsCsvImportStatusDe {
  _TranslationsCsvImportStatusIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get error => 'Errore';
  @override
  String get missing_ring_number => 'Numero anello mancante';
  @override
  String get missing_name => 'Nome mancante';
  @override
  String get no_ring_number => 'Nessun numero anello';
}

// Path: csv_import.summary
class _TranslationsCsvImportSummaryIt extends TranslationsCsvImportSummaryDe {
  _TranslationsCsvImportSummaryIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get successful => 'Importati con successo';
  @override
  String get failed => 'Non riusciti';
  @override
  String get skipped_duplicates => 'Saltati (duplicati)';
  @override
  String get skipped_invalid => 'Saltati (non validi)';
  @override
  String get species_created => 'Nuove specie create';
  @override
  String get colors_created => 'Nuovi colori creati';
  @override
  String get cages_created => 'Nuove voliere create';
  @override
  String get failed_imports => 'Importazioni non riuscite';
  @override
  String get skipped_entries => 'Voci saltate (duplicati)';
}

// Path: csv_import.errors
class _TranslationsCsvImportErrorsIt extends TranslationsCsvImportErrorsDe {
  _TranslationsCsvImportErrorsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get select_csv_file => 'Scegli un file CSV';
  @override
  String get not_csv_file => 'Il file selezionato non è un file CSV.';
  @override
  String get could_not_read_file => 'Impossibile leggere il file';
  @override
  String get error_reading_file => 'Errore durante la lettura del file';
  @override
  String get ring_number_exists => 'Numero anello già esistente';
  @override
  String get could_not_create_bird => 'Impossibile creare l\'uccello';
  @override
  String contact_number_exists({required Object Number}) => 'Il numero contatto «${Number}» esiste già';
  @override
  String get could_not_create_contact => 'Impossibile creare il contatto';
}

// Path: menu.sections
class _TranslationsMenuSectionsIt extends TranslationsMenuSectionsDe {
  _TranslationsMenuSectionsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get main => 'Sezioni principali';
  @override
  String get data => 'Dati anagrafici';
  @override
  String get settings => 'Impostazioni';
}

// Path: menu.birds
class _TranslationsMenuBirdsIt extends TranslationsMenuBirdsDe {
  _TranslationsMenuBirdsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Uccelli';
  @override
  String get description => 'Gestisci i tuoi uccelli';
}

// Path: menu.contacts
class _TranslationsMenuContactsIt extends TranslationsMenuContactsDe {
  _TranslationsMenuContactsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Contatti';
  @override
  String get description => 'Gestisci i tuoi contatti';
}

// Path: menu.breedings
class _TranslationsMenuBreedingsIt extends TranslationsMenuBreedingsDe {
  _TranslationsMenuBreedingsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Allevamenti';
  @override
  String get description => 'Coppie attive e passate';
}

// Path: menu.resources
class _TranslationsMenuResourcesIt extends TranslationsMenuResourcesDe {
  _TranslationsMenuResourcesIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Risorse';
  @override
  String get description => 'Colori, specie, voliere';
}

// Path: menu.finances
class _TranslationsMenuFinancesIt extends TranslationsMenuFinancesDe {
  _TranslationsMenuFinancesIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Finanze';
  @override
  String get description => 'Libro cassa';
}

// Path: menu.csv_import
class _TranslationsMenuCsvImportIt extends TranslationsMenuCsvImportDe {
  _TranslationsMenuCsvImportIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Importazione CSV';
  @override
  String get description => 'Importa dati da CSV';
}

// Path: menu.account
class _TranslationsMenuAccountIt extends TranslationsMenuAccountDe {
  _TranslationsMenuAccountIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Account';
  @override
  String get description => 'Il tuo account';
}

// Path: menu.species
class _TranslationsMenuSpeciesIt extends TranslationsMenuSpeciesDe {
  _TranslationsMenuSpeciesIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Specie';
  @override
  String get description => 'Gestisci le specie di uccelli';
}

// Path: menu.cages
class _TranslationsMenuCagesIt extends TranslationsMenuCagesDe {
  _TranslationsMenuCagesIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Voliere';
  @override
  String get description => 'Voliere e gabbie';
}

// Path: menu.colors
class _TranslationsMenuColorsIt extends TranslationsMenuColorsDe {
  _TranslationsMenuColorsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Colori';
  @override
  String get description => 'Varietà di colore';
}

// Path: menu.finance_categories
class _TranslationsMenuFinanceCategoriesIt extends TranslationsMenuFinanceCategoriesDe {
  _TranslationsMenuFinanceCategoriesIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Categorie finanziarie';
  @override
  String get description => 'Categorie di entrate e uscite';
}

// Path: dialog.discard_changes
class _TranslationsDialogDiscardChangesIt extends TranslationsDialogDiscardChangesDe {
  _TranslationsDialogDiscardChangesIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Annullare le modifiche?';
  @override
  String get content => 'Le tue modifiche verranno annullate, sei sicuro?';
}

// Path: dialog.delete_entry
class _TranslationsDialogDeleteEntryIt extends TranslationsDialogDeleteEntryDe {
  _TranslationsDialogDeleteEntryIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get content => 'Vuoi davvero eliminare questa voce?';
}

// Path: export.events
class _TranslationsExportEventsIt extends TranslationsExportEventsDe {
  _TranslationsExportEventsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String succeeded({required Object FileName}) => '«${FileName}» creato.';
  @override
  String failed({required Object Error}) => 'Esportazione non riuscita: ${Error}';
}

// Path: export.format
class _TranslationsExportFormatIt extends TranslationsExportFormatDe {
  _TranslationsExportFormatIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Formato';
  @override
  late final _TranslationsExportFormatCsvIt csv = _TranslationsExportFormatCsvIt._(_root);
  @override
  late final _TranslationsExportFormatPdfIt pdf = _TranslationsExportFormatPdfIt._(_root);
}

// Path: export.preset
class _TranslationsExportPresetIt extends TranslationsExportPresetDe {
  _TranslationsExportPresetIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ambito';
}

// Path: export.pdf
class _TranslationsExportPdfIt extends TranslationsExportPdfDe {
  _TranslationsExportPdfIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String page({required Object Page, required Object Total}) => 'Pagina ${Page} di ${Total}';
}

// Path: export.header
class _TranslationsExportHeaderIt extends TranslationsExportHeaderDe {
  _TranslationsExportHeaderIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Intestazione PDF';
  @override
  String get subtitle => 'Intestazione per i PDF esportati';
  @override
  String get list_empty => 'Nessuna intestazione creata. Senza profilo, l\'esportazione usa il nome dell\'elenco e i dati del tuo profilo.';
  @override
  String get add => 'Crea intestazione';
  @override
  String get new_name => 'Nuova intestazione';
  @override
  String get none => 'Senza intestazione';
  @override
  String get default_badge => 'Predefinita';
  @override
  String get set_default => 'Usa come predefinita';
  @override
  String get delete_title => 'Eliminare l\'intestazione?';
  @override
  String delete_content({required Object Name}) => '«${Name}» verrà eliminata definitivamente.';
  @override
  String get deleted => 'Intestazione eliminata.';
  @override
  String get saved => 'Intestazione salvata.';
  @override
  String get name_label => 'Nome del profilo';
  @override
  String get name_hint => 'ad es. associazione o vendita';
  @override
  String get section_layout => 'Disposizione';
  @override
  String get section_logo => 'Logo';
  @override
  String get section_text => 'Testi';
  @override
  String get section_meta => 'Indicazioni';
  @override
  String get section_footer => 'Piè di pagina';
  @override
  late final _TranslationsExportHeaderLayoutIt layout = _TranslationsExportHeaderLayoutIt._(_root);
  @override
  late final _TranslationsExportHeaderLogoSizeIt logo_size = _TranslationsExportHeaderLogoSizeIt._(_root);
  @override
  String get logo_pick => 'Scegli logo';
  @override
  String get logo_replace => 'Sostituisci logo';
  @override
  String get logo_remove => 'Rimuovi logo';
  @override
  String get title_label => 'Riga del titolo';
  @override
  String get subtitle_label => 'Sottotitolo';
  @override
  String get footer_label => 'Testo del piè di pagina';
  @override
  String get address_show => 'Mostra blocco indirizzo';
  @override
  String get address_override_label => 'Blocco indirizzo personalizzato';
  @override
  String get address_override_hint => 'Lascia vuoto per usare l\'indirizzo del tuo profilo';
  @override
  String get address_from_profile => 'Riprendi dal profilo';
  @override
  String get show_date => 'Mostra data';
  @override
  String get show_count => 'Mostra numero';
  @override
  String get show_filter => 'Mostra filtri attivi';
  @override
  String get show_breeder_number => 'Mostra numero allevatore';
  @override
  String get show_divider => 'Mostra linea di separazione';
  @override
  String get show_page_numbers => 'Mostra numeri di pagina';
  @override
  String get placeholders_hint => 'Tocca un segnaposto per inserirlo';
  @override
  String get preview_title => 'Anteprima';
  @override
  String get preview_list => 'Inventario';
  @override
  String get preview_filter => 'Specie: Pappagallino ondulato';
}

// Path: export.summary
class _TranslationsExportSummaryIt extends TranslationsExportSummaryDe {
  _TranslationsExportSummaryIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get birds => 'Uccelli';
  @override
  String get pairs => 'Coppie';
  @override
  String get hatch_rate => 'Tasso di schiusa';
  @override
  String get income => 'Entrate';
  @override
  String get expense => 'Uscite';
  @override
  String get net => 'Saldo';
}

// Path: export.lists
class _TranslationsExportListsIt extends TranslationsExportListsDe {
  _TranslationsExportListsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get birds => 'Inventario';
  @override
  String get breeding_pairs => 'Coppie riproduttive';
  @override
  String get finances => 'Libro cassa';
}

// Path: export.file_names
class _TranslationsExportFileNamesIt extends TranslationsExportFileNamesDe {
  _TranslationsExportFileNamesIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get birds => 'inventario';
  @override
  String get breeding_pairs => 'coppie_riproduzione';
  @override
  String get finances => 'libro_cassa';
}

// Path: export.presets
class _TranslationsExportPresetsIt extends TranslationsExportPresetsDe {
  _TranslationsExportPresetsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsExportPresetsBirdsIt birds = _TranslationsExportPresetsBirdsIt._(_root);
  @override
  late final _TranslationsExportPresetsBreedingPairsIt breeding_pairs = _TranslationsExportPresetsBreedingPairsIt._(_root);
  @override
  late final _TranslationsExportPresetsFinancesIt finances = _TranslationsExportPresetsFinancesIt._(_root);
}

// Path: export.columns
class _TranslationsExportColumnsIt extends TranslationsExportColumnsDe {
  _TranslationsExportColumnsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsExportColumnsBirdIt bird = _TranslationsExportColumnsBirdIt._(_root);
  @override
  late final _TranslationsExportColumnsBreedingPairIt breeding_pair = _TranslationsExportColumnsBreedingPairIt._(_root);
  @override
  late final _TranslationsExportColumnsFinanceIt finance = _TranslationsExportColumnsFinanceIt._(_root);
}

// Path: documents.types
class _TranslationsDocumentsTypesIt extends TranslationsDocumentsTypesDe {
  _TranslationsDocumentsTypesIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsDocumentsTypesProfileIt profile = _TranslationsDocumentsTypesProfileIt._(_root);
  @override
  late final _TranslationsDocumentsTypesPedigreeIt pedigree = _TranslationsDocumentsTypesPedigreeIt._(_root);
  @override
  late final _TranslationsDocumentsTypesSaleReceiptIt sale_receipt = _TranslationsDocumentsTypesSaleReceiptIt._(_root);
}

// Path: documents.profile
class _TranslationsDocumentsProfileIt extends TranslationsDocumentsProfileDe {
  _TranslationsDocumentsProfileIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get section_general => 'Generale';
  @override
  String get section_lifecycle => 'Date di vita';
  @override
  String get section_origin => 'Origine e allevamento';
  @override
  String get section_commerce => 'Acquisto e vendita';
  @override
  String get section_notes => 'Note';
}

// Path: documents.pedigree
class _TranslationsDocumentsPedigreeIt extends TranslationsDocumentsPedigreeDe {
  _TranslationsDocumentsPedigreeIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get statement =>
      'Con la presente si conferma che l\'ascendenza dell\'uccello sopra indicato è riportata correttamente secondo scienza e coscienza.';
  @override
  String get breeder => 'Allevatore';
  @override
  String get breeder_number => 'Numero di allevatore';
  @override
  String get signature => 'Luogo, data, firma dell\'allevatore';
}

// Path: documents.receipt
class _TranslationsDocumentsReceiptIt extends TranslationsDocumentsReceiptDe {
  _TranslationsDocumentsReceiptIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get seller => 'Parte cedente';
  @override
  String get buyer => 'Parte ricevente';
  @override
  String get bird_data => 'Dati dell\'uccello';
  @override
  String get price => 'Prezzo';
  @override
  String get date => 'Data della cessione';
  @override
  String get statement =>
      'L\'uccello sopra descritto viene ceduto alla parte ricevente al prezzo indicato. Al momento della cessione l\'uccello è in buono stato di salute.';
  @override
  String get signature_seller => 'Luogo, data, firma della parte cedente';
  @override
  String get signature_buyer => 'Luogo, data, firma della parte ricevente';
}

// Path: finances.categories.filters
class _TranslationsFinancesCategoriesFiltersIt extends TranslationsFinancesCategoriesFiltersDe {
  _TranslationsFinancesCategoriesFiltersIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Tutte';
  @override
  String get income => 'Entrate';
  @override
  String get expense => 'Uscite';
}

// Path: finances.categories.groups
class _TranslationsFinancesCategoriesGroupsIt extends TranslationsFinancesCategoriesGroupsDe {
  _TranslationsFinancesCategoriesGroupsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get income => 'Entrate';
  @override
  String get expense => 'Uscite';
}

// Path: finances.categories.kind_singular
class _TranslationsFinancesCategoriesKindSingularIt extends TranslationsFinancesCategoriesKindSingularDe {
  _TranslationsFinancesCategoriesKindSingularIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get income => 'Entrata';
  @override
  String get expense => 'Uscita';
}

// Path: finances.categories.pill
class _TranslationsFinancesCategoriesPillIt extends TranslationsFinancesCategoriesPillDe {
  _TranslationsFinancesCategoriesPillIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get income => '↑ ENTRATA';
  @override
  String get expense => '↓ USCITA';
}

// Path: finances.categories.detail
class _TranslationsFinancesCategoriesDetailIt extends TranslationsFinancesCategoriesDetailDe {
  _TranslationsFinancesCategoriesDetailIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get bookings_label => 'Movimenti';
  @override
  String get six_months => '6 mesi';
  @override
  String get avg_per_month => 'Ø al mese';
  @override
  String get recent_bookings => 'Ultimi movimenti';
  @override
  String get no_bookings => 'Nessun movimento';
  @override
  String get last_six_months_label => 'ultimi 6 mesi';
  @override
  String get course_six_months => 'Andamento · 6 mesi';
}

// Path: finances.categories.months_short
class _TranslationsFinancesCategoriesMonthsShortIt extends TranslationsFinancesCategoriesMonthsShortDe {
  _TranslationsFinancesCategoriesMonthsShortIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get dec => 'dic';
  @override
  String get jan => 'gen';
  @override
  String get feb => 'feb';
  @override
  String get mar => 'mar';
  @override
  String get apr => 'apr';
  @override
  String get may => 'mag';
}

// Path: backup.cloud.choose_folder_dialog
class _TranslationsBackupCloudChooseFolderDialogIt extends TranslationsBackupCloudChooseFolderDialogDe {
  _TranslationsBackupCloudChooseFolderDialogIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Scegliere una cartella cloud?';
  @override
  String get content => 'Per poter salvare i backup automatici, scegli ora una cartella nel tuo cloud (ad es. Google Drive).';
  @override
  String get confirm => 'Scegli cartella';
}

// Path: backup.cloud.sync_after_change_dialog
class _TranslationsBackupCloudSyncAfterChangeDialogIt extends TranslationsBackupCloudSyncAfterChangeDialogDe {
  _TranslationsBackupCloudSyncAfterChangeDialogIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Sincronizzare ora?';
  @override
  String get content => 'La cartella cloud è stata modificata. Vuoi salvare subito lì i tuoi dati attuali?';
  @override
  String get confirm => 'Sincronizza';
}

// Path: backup.cloud.interval
class _TranslationsBackupCloudIntervalIt extends TranslationsBackupCloudIntervalDe {
  _TranslationsBackupCloudIntervalIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Intervallo backup automatico';
  @override
  String get sub => 'Con quale frequenza salvare automaticamente all\'avvio dell\'app';
  @override
  String get sheet_title => 'Scegli intervallo';
  @override
  String get every_launch => 'A ogni avvio';
  @override
  String get daily => 'Giornaliero';
  @override
  String get weekly => 'Settimanale';
  @override
  String get off => 'Manuale';
}

// Path: backup.cloud.status
class _TranslationsBackupCloudStatusIt extends TranslationsBackupCloudStatusDe {
  _TranslationsBackupCloudStatusIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get synced_today => 'Ultima sincronizzazione: oggi';
  @override
  String synced_days_ago({required num count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(
        count,
        one: 'Ultima sincronizzazione: 1 giorno fa',
        other: 'Ultima sincronizzazione: {count} giorni fa',
      );
  @override
  String get never => 'Non ancora sincronizzato';
  @override
  String get unavailable_icloud => 'Non connesso a iCloud';
  @override
  String get unavailable_folder => 'Nessun accesso alla cartella – scegline un\'altra';
}

// Path: backup.cloud.events
class _TranslationsBackupCloudEventsIt extends TranslationsBackupCloudEventsDe {
  _TranslationsBackupCloudEventsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String location_chosen({required Object Name}) => 'Cartella cloud impostata: ${Name}';
  @override
  String get location_failed => 'Nessuna cartella scelta';
  @override
  String get sync_succeeded => 'Salvato nel cloud';
  @override
  String sync_failed({required Object Error}) => 'Sincronizzazione cloud non riuscita: ${Error}';
  @override
  String get unavailable_icloud => 'Non connesso a iCloud';
  @override
  String get unavailable_folder => 'Nessun accesso alla cartella cloud. Scegline un\'altra.';
}

// Path: contacts.fields.title
class _TranslationsContactsFieldsTitleIt extends TranslationsContactsFieldsTitleDe {
  _TranslationsContactsFieldsTitleIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Titolo';
  @override
  String get none => 'Nessuno';
  @override
  String get mr => 'Sig.';
  @override
  String get ms => 'Sig.ra';
}

// Path: contacts.fields.app_user
class _TranslationsContactsFieldsAppUserIt extends TranslationsContactsFieldsAppUserDe {
  _TranslationsContactsFieldsAppUserIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Questo contatto sono io';
  @override
  String get sub_title => 'Contrassegna il contatto come utente dell\'app.';
}

// Path: breeding_pairs.stats.abbr
class _TranslationsBreedingPairsStatsAbbrIt extends TranslationsBreedingPairsStatsAbbrDe {
  _TranslationsBreedingPairsStatsAbbrIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get laid => 'DP';
  @override
  String get fertilized => 'FE';
  @override
  String get hatched => 'SC';
  @override
  String get fledged => 'IN';
}

// Path: breeding_pairs.stats.label
class _TranslationsBreedingPairsStatsLabelIt extends TranslationsBreedingPairsStatsLabelDe {
  _TranslationsBreedingPairsStatsLabelIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get laid => 'Uova deposte';
  @override
  String get fertilized => 'Feconde';
  @override
  String get hatched => 'Schiuse';
  @override
  String get fledged => 'Involate';
}

// Path: breeding_pairs.stats.legend
class _TranslationsBreedingPairsStatsLegendIt extends TranslationsBreedingPairsStatsLegendDe {
  _TranslationsBreedingPairsStatsLegendIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Legenda';
}

// Path: resources.sort.by
class _TranslationsResourcesSortByIt extends TranslationsResourcesSortByDe {
  _TranslationsResourcesSortByIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Nome';
  @override
  String get created => 'Creato';
  @override
  String get capacity => 'Capienza';
  @override
  String get kind => 'Tipo';
  @override
  String get lat_name => 'Nome lat.';
  @override
  String get hex => 'Codice colore';
  @override
  String get stock => 'Allevamento';
}

// Path: bird.sections.identification
class _TranslationsBirdSectionsIdentificationIt extends TranslationsBirdSectionsIdentificationDe {
  _TranslationsBirdSectionsIdentificationIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Identificazione';
  @override
  String get sub_title => 'Informazioni per l\'identificazione dell\'uccello';
}

// Path: bird.sections.keeping
class _TranslationsBirdSectionsKeepingIt extends TranslationsBirdSectionsKeepingDe {
  _TranslationsBirdSectionsKeepingIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Sistemazione';
  @override
  String get sub_title => 'Informazioni sulla sistemazione dell\'uccello';
}

// Path: bird.sections.status
class _TranslationsBirdSectionsStatusIt extends TranslationsBirdSectionsStatusDe {
  _TranslationsBirdSectionsStatusIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Stato';
  @override
  String get sub_title => 'Informazioni sullo stato dell\'uccello';
}

// Path: bird.sections.sale
class _TranslationsBirdSectionsSaleIt extends TranslationsBirdSectionsSaleDe {
  _TranslationsBirdSectionsSaleIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Vendita';
  @override
  String get sub_title => 'Informazioni sulla vendita dell\'uccello';
}

// Path: bird.sections.purchase
class _TranslationsBirdSectionsPurchaseIt extends TranslationsBirdSectionsPurchaseDe {
  _TranslationsBirdSectionsPurchaseIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Acquisto';
  @override
  String get sub_title => 'Informazioni sull\'acquisto dell\'uccello';
}

// Path: bird.sections.health
class _TranslationsBirdSectionsHealthIt extends TranslationsBirdSectionsHealthDe {
  _TranslationsBirdSectionsHealthIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Salute';
  @override
  String get sub_title => 'Informazioni sulla salute dell\'uccello';
}

// Path: bird.sections.life
class _TranslationsBirdSectionsLifeIt extends TranslationsBirdSectionsLifeDe {
  _TranslationsBirdSectionsLifeIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Fase di vita';
  @override
  String get sub_title => 'Informazioni sulla fase di vita dell\'uccello';
  @override
  String get unknown_lifecycle_title => 'Dati del ciclo di vita sconosciuti?';
  @override
  String get unknown_lifecycle_sub_title => 'Attiva questa opzione se i dati del ciclo di vita non sono noti.';
  @override
  String get unknown_lifecycle_description =>
      'Se è presente una data di nascita, l\'uccello viene considerato adulto. Se è presente una data di morte, l\'uccello viene considerato deceduto.';
}

// Path: bird.sections.notes
class _TranslationsBirdSectionsNotesIt extends TranslationsBirdSectionsNotesDe {
  _TranslationsBirdSectionsNotesIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Note';
  @override
  String get sub_title => 'Informazioni sulle note dell\'uccello';
}

// Path: bird.sections.photos
class _TranslationsBirdSectionsPhotosIt extends TranslationsBirdSectionsPhotosDe {
  _TranslationsBirdSectionsPhotosIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Foto';
  @override
  String get sub_title => 'Gestisci le foto di questo uccello';
  @override
  String get add_camera => 'Fotocamera';
  @override
  String get add_gallery => 'Galleria';
  @override
  String get save_first => 'Salva prima l\'uccello per aggiungere delle foto.';
  @override
  String get empty => 'Ancora nessuna foto';
  @override
  String get delete_title => 'Eliminare la foto?';
  @override
  String get delete_confirm => 'Elimina';
  @override
  String get manage => 'Gestisci foto';
  @override
  String get capture => 'Scatta foto';
  @override
  String get capture_sub => 'o scegli dalla galleria · più foto possibili';
  @override
  String get section_label => 'Foto di questo uccello';
  @override
  String get add_tile => 'Aggiungi';
  @override
  String get cover_badge => 'Copertina';
  @override
  String get set_cover => 'Imposta come foto di copertina';
  @override
  String get remove => 'Rimuovi';
  @override
  String get source_camera => 'Fotocamera';
  @override
  String get source_gallery => 'Galleria';
  @override
  String get hint =>
      'Tocca una foto per vederla in grande. Tieni premuta una foto e trascinala in un\'altra posizione – la prima foto è quella di copertina e compare negli elenchi e nella pagina di dettaglio dell\'uccello.';
  @override
  String get done => 'Fatto';
  @override
  String count_preview_one({required Object Count}) => '${Count} foto';
  @override
  String count_preview_other({required Object Count}) => '${Count} foto';
}

// Path: bird.sections.parent
class _TranslationsBirdSectionsParentIt extends TranslationsBirdSectionsParentDe {
  _TranslationsBirdSectionsParentIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Genitori';
  @override
  String get sub_title => 'Informazioni sui genitori dell\'uccello';
}

// Path: bird.sections.breeder
class _TranslationsBirdSectionsBreederIt extends TranslationsBirdSectionsBreederDe {
  _TranslationsBirdSectionsBreederIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Allevatore';
  @override
  String get sub_title => 'Informazioni sull\'allevatore dell\'uccello';
}

// Path: bird.sections.children
class _TranslationsBirdSectionsChildrenIt extends TranslationsBirdSectionsChildrenDe {
  _TranslationsBirdSectionsChildrenIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Discendenti';
  @override
  String get sub_title => 'Informazioni sui discendenti dell\'uccello';
}

// Path: common.sell.price
class _TranslationsCommonSellPriceIt extends TranslationsCommonSellPriceDe {
  _TranslationsCommonSellPriceIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get kFinal => 'Prezzo di vendita effettivo';
  @override
  String get asking => 'Prezzo di vendita desiderato';
}

// Path: export.format.csv
class _TranslationsExportFormatCsvIt extends TranslationsExportFormatCsvDe {
  _TranslationsExportFormatCsvIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'CSV';
  @override
  String get description => 'Per Excel e fogli di calcolo';
}

// Path: export.format.pdf
class _TranslationsExportFormatPdfIt extends TranslationsExportFormatPdfDe {
  _TranslationsExportFormatPdfIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'PDF';
  @override
  String get description => 'Per stampare e condividere';
}

// Path: export.header.layout
class _TranslationsExportHeaderLayoutIt extends TranslationsExportHeaderLayoutDe {
  _TranslationsExportHeaderLayoutIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get logo_left => 'Logo a sinistra';
  @override
  String get centered => 'Centrato';
  @override
  String get address_left_logo_right => 'Indirizzo a sinistra, logo a destra';
}

// Path: export.header.logo_size
class _TranslationsExportHeaderLogoSizeIt extends TranslationsExportHeaderLogoSizeDe {
  _TranslationsExportHeaderLogoSizeIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Dimensione';
  @override
  String get small => 'Piccolo';
  @override
  String get medium => 'Medio';
  @override
  String get large => 'Grande';
}

// Path: export.presets.birds
class _TranslationsExportPresetsBirdsIt extends TranslationsExportPresetsBirdsDe {
  _TranslationsExportPresetsBirdsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get overview => 'Panoramica';
  @override
  String get full => 'Completo';
}

// Path: export.presets.breeding_pairs
class _TranslationsExportPresetsBreedingPairsIt extends TranslationsExportPresetsBreedingPairsDe {
  _TranslationsExportPresetsBreedingPairsIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get overview => 'Panoramica';
  @override
  String get full => 'Completo';
}

// Path: export.presets.finances
class _TranslationsExportPresetsFinancesIt extends TranslationsExportPresetsFinancesDe {
  _TranslationsExportPresetsFinancesIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get bookings => 'Movimenti';
  @override
  String get full => 'Completo';
}

// Path: export.columns.bird
class _TranslationsExportColumnsBirdIt extends TranslationsExportColumnsBirdDe {
  _TranslationsExportColumnsBirdIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get ring_number => 'Numero anello';
  @override
  String get species => 'Specie';
  @override
  String get color => 'Colore';
  @override
  String get cage => 'Voliera';
  @override
  String get sex => 'Sesso';
  @override
  String get laid_at => 'Deposto il';
  @override
  String get hatched_at => 'Schiuso il';
  @override
  String get fledged_at => 'Involato il';
  @override
  String get born_at => 'Nato il';
  @override
  String get died_at => 'Morto il';
  @override
  String get father => 'Padre';
  @override
  String get mother => 'Madre';
  @override
  String get breeder => 'Allevatore';
  @override
  String get breeder_number => 'Numero allevatore';
  @override
  String get owner => 'Proprietario';
  @override
  String get owner_number => 'Numero proprietario';
  @override
  String get bought_at => 'Acquistato il';
  @override
  String get bought_price => 'Prezzo di acquisto';
  @override
  String get bought_from => 'Acquistato da';
  @override
  String get sale_status => 'Stato di vendita';
  @override
  String get asking_price => 'Prezzo richiesto';
  @override
  String get final_price => 'Prezzo finale';
  @override
  String get sold_at => 'Venduto il';
  @override
  String get sold_to => 'Venduto a';
  @override
  String get notes => 'Note';
}

// Path: export.columns.breeding_pair
class _TranslationsExportColumnsBreedingPairIt extends TranslationsExportColumnsBreedingPairDe {
  _TranslationsExportColumnsBreedingPairIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get father_ring => 'Padre (anello)';
  @override
  String get father_species => 'Padre (specie)';
  @override
  String get mother_ring => 'Madre (anello)';
  @override
  String get mother_species => 'Madre (specie)';
  @override
  String get cage => 'Voliera';
  @override
  String get status => 'Stato';
  @override
  String get start => 'Inizio';
  @override
  String get end => 'Fine';
  @override
  String get broods => 'Covate';
  @override
  String get laid => 'Deposte';
  @override
  String get fertilized => 'Feconde';
  @override
  String get hatched => 'Schiuse';
  @override
  String get fledged => 'Involate';
  @override
  String get notes => 'Note';
}

// Path: export.columns.finance
class _TranslationsExportColumnsFinanceIt extends TranslationsExportColumnsFinanceDe {
  _TranslationsExportColumnsFinanceIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get date => 'Data';
  @override
  String get title => 'Titolo';
  @override
  String get category => 'Categoria';
  @override
  String get kind => 'Tipo';
  @override
  String get amount => 'Importo';
  @override
  String get bird => 'Uccello';
  @override
  String get notes => 'Note';
}

// Path: documents.types.profile
class _TranslationsDocumentsTypesProfileIt extends TranslationsDocumentsTypesProfileDe {
  _TranslationsDocumentsTypesProfileIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Scheda';
  @override
  String get description => 'Tutti i dati anagrafici su una pagina';
  @override
  String get file_name => 'scheda';
}

// Path: documents.types.pedigree
class _TranslationsDocumentsTypesPedigreeIt extends TranslationsDocumentsTypesPedigreeDe {
  _TranslationsDocumentsTypesPedigreeIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Certificato di ascendenza';
  @override
  String get description => 'Albero genealogico su tre generazioni';
  @override
  String get file_name => 'certificato_ascendenza';
}

// Path: documents.types.sale_receipt
class _TranslationsDocumentsTypesSaleReceiptIt extends TranslationsDocumentsTypesSaleReceiptDe {
  _TranslationsDocumentsTypesSaleReceiptIt._(TranslationsIt root)
      : this._root = root,
        super.internal(root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Ricevuta di cessione';
  @override
  String get description => 'Ricevuta per vendita o cessione';
  @override
  String get file_name => 'ricevuta_cessione';
}
