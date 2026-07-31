///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsDe = Translations; // ignore: unused_element

class Translations with BaseTranslations<AppLocale, Translations> {
  /// Returns the current translations of the given [context].
  ///
  /// Usage:
  /// final t = Translations.of(context);
  static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  Translations(
      {Map<String, Node>? overrides,
      PluralResolver? cardinalResolver,
      PluralResolver? ordinalResolver,
      TranslationMetadata<AppLocale, Translations>? meta})
      : assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
        $meta = meta ??
            TranslationMetadata(
              locale: AppLocale.de,
              overrides: overrides ?? {},
              cardinalResolver: cardinalResolver,
              ordinalResolver: ordinalResolver,
            );

  /// Metadata for the translations of <de>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final Translations _root = this; // ignore: unused_field

  Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

  // Translations
  late final TranslationsAppDe app = TranslationsAppDe.internal(_root);
  late final TranslationsOnboardingDe onboarding = TranslationsOnboardingDe.internal(_root);
  late final TranslationsFinancesDe finances = TranslationsFinancesDe.internal(_root);
  late final TranslationsAccountDe account = TranslationsAccountDe.internal(_root);
  late final TranslationsBackupDe backup = TranslationsBackupDe.internal(_root);
  late final TranslationsBreedingsDe breedings = TranslationsBreedingsDe.internal(_root);
  late final TranslationsColorsDe colors = TranslationsColorsDe.internal(_root);
  late final TranslationsCagesDe cages = TranslationsCagesDe.internal(_root);
  late final TranslationsSpeciesDe species = TranslationsSpeciesDe.internal(_root);
  late final TranslationsContactsDe contacts = TranslationsContactsDe.internal(_root);
  late final TranslationsBreedingPairsDe breeding_pairs = TranslationsBreedingPairsDe.internal(_root);
  late final TranslationsResourcesDe resources = TranslationsResourcesDe.internal(_root);
  late final TranslationsBirdsDe birds = TranslationsBirdsDe.internal(_root);
  late final TranslationsPedigreeDe pedigree = TranslationsPedigreeDe.internal(_root);
  late final TranslationsInbreedingDe inbreeding = TranslationsInbreedingDe.internal(_root);
  late final TranslationsBirdDe bird = TranslationsBirdDe.internal(_root);
  late final TranslationsPairDetailDe pair_detail = TranslationsPairDetailDe.internal(_root);
  late final TranslationsBroodDe brood = TranslationsBroodDe.internal(_root);
  late final TranslationsEggDe egg = TranslationsEggDe.internal(_root);
  late final TranslationsCommonDe common = TranslationsCommonDe.internal(_root);
  late final TranslationsAuthDe auth = TranslationsAuthDe.internal(_root);
  late final TranslationsCsvImportDe csv_import = TranslationsCsvImportDe.internal(_root);
  late final TranslationsMenuDe menu = TranslationsMenuDe.internal(_root);
  late final TranslationsErrorDe error = TranslationsErrorDe.internal(_root);
  late final TranslationsDialogDe dialog = TranslationsDialogDe.internal(_root);
  late final TranslationsPopUpMenuDe pop_up_menu = TranslationsPopUpMenuDe.internal(_root);
  late final TranslationsExportDe export = TranslationsExportDe.internal(_root);
  late final TranslationsDocumentsDe documents = TranslationsDocumentsDe.internal(_root);
  late final TranslationsSnackbarsDe snackbars = TranslationsSnackbarsDe.internal(_root);
}

// Path: app
class TranslationsAppDe {
  TranslationsAppDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Birdbreeder'
  String get title => 'Birdbreeder';
}

// Path: onboarding
class TranslationsOnboardingDe {
  TranslationsOnboardingDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Profil einrichten'
  String get title => 'Profil einrichten';

  /// de: 'Lege dein eigenes Profil an. Es wird als App-Nutzer verwendet, z. B. um deine eigenen Vögel zu kennzeichnen.'
  String get subtitle => 'Lege dein eigenes Profil an. Es wird als App-Nutzer verwendet, z. B. um deine eigenen Vögel zu kennzeichnen.';

  /// de: 'Vorname'
  String get first_name => 'Vorname';

  /// de: 'Nachname'
  String get last_name => 'Nachname';

  /// de: 'Bitte gib einen Nachnamen ein.'
  String get last_name_required => 'Bitte gib einen Nachnamen ein.';

  /// de: 'Züchternummer'
  String get breeder_number => 'Züchternummer';

  /// de: 'Bitte gib eine Züchternummer ein.'
  String get breeder_number_required => 'Bitte gib eine Züchternummer ein.';

  /// de: 'Profil speichern'
  String get save => 'Profil speichern';

  /// de: 'oder'
  String get or => 'oder';

  /// de: 'Backup einspielen'
  String get restore_backup => 'Backup einspielen';
}

// Path: finances
class TranslationsFinancesDe {
  TranslationsFinancesDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Finanzen'
  String get title => 'Finanzen';

  late final TranslationsFinancesCategoriesDe categories = TranslationsFinancesCategoriesDe.internal(_root);

  /// de: 'Eintrag löschen?'
  String get delete => 'Eintrag löschen?';

  late final TranslationsFinancesAddDe add = TranslationsFinancesAddDe.internal(_root);
  late final TranslationsFinancesKindDe kind = TranslationsFinancesKindDe.internal(_root);
  late final TranslationsFinancesSummaryDe summary = TranslationsFinancesSummaryDe.internal(_root);
  late final TranslationsFinancesViewDe view = TranslationsFinancesViewDe.internal(_root);
  late final TranslationsFinancesScopeDe scope = TranslationsFinancesScopeDe.internal(_root);
  late final TranslationsFinancesFilterDe filter = TranslationsFinancesFilterDe.internal(_root);
  late final TranslationsFinancesSortingDe sorting = TranslationsFinancesSortingDe.internal(_root);
}

// Path: account
class TranslationsAccountDe {
  TranslationsAccountDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Konto'
  String get title => 'Konto';

  /// de: 'Logout'
  String get logout => 'Logout';

  /// de: 'Zu Lokal-Modus wechseln'
  String get switch_to_local => 'Zu Lokal-Modus wechseln';

  late final TranslationsAccountSwitchToLocalDialogDe switch_to_local_dialog = TranslationsAccountSwitchToLocalDialogDe.internal(_root);
  late final TranslationsAccountLocalModeDe local_mode = TranslationsAccountLocalModeDe.internal(_root);
  late final TranslationsAccountAppearanceDe appearance = TranslationsAccountAppearanceDe.internal(_root);
  late final TranslationsAccountLanguageDe language = TranslationsAccountLanguageDe.internal(_root);
  late final TranslationsAccountCurrencyDe currency = TranslationsAccountCurrencyDe.internal(_root);
  late final TranslationsAccountProfileDe profile = TranslationsAccountProfileDe.internal(_root);
  late final TranslationsAccountUserDe user = TranslationsAccountUserDe.internal(_root);
  late final TranslationsAccountEventsDe events = TranslationsAccountEventsDe.internal(_root);
}

// Path: backup
class TranslationsBackupDe {
  TranslationsBackupDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Backup'
  String get section_title => 'Backup';

  /// de: 'Backups'
  String get page_title => 'Backups';

  /// de: 'Noch keine Backups vorhanden.'
  String get empty => 'Noch keine Backups vorhanden.';

  /// de: 'Wird geladen…'
  String get loading => 'Wird geladen…';

  /// de: 'Noch kein Backup vorhanden'
  String get no_backup_yet => 'Noch kein Backup vorhanden';

  /// de: 'Letztes Backup: {{date}}'
  String last_backup({required Object Date}) => 'Letztes Backup: ${Date}';

  late final TranslationsBackupExternalDe external = TranslationsBackupExternalDe.internal(_root);
  late final TranslationsBackupActionsDe actions = TranslationsBackupActionsDe.internal(_root);

  /// de: 'Manuelles Backup'
  String get manual_section => 'Manuelles Backup';

  /// de: 'Letztes Backup'
  String get last_backup_label => 'Letztes Backup';

  /// de: 'Noch kein Backup'
  String get no_backup_size => 'Noch kein Backup';

  /// de: 'Öffnet den Teilen-Dialog – wähle Drive, Dateien, E-Mail o.ä. Fotos sind enthalten.'
  String get create_hint => 'Öffnet den Teilen-Dialog – wähle Drive, Dateien, E-Mail o.ä. Fotos sind enthalten.';

  /// de: 'Z.B. nach Gerätewechsel – spielt einen älteren Stand zurück.'
  String get restore_hint => 'Z.B. nach Gerätewechsel – spielt einen älteren Stand zurück.';

  late final TranslationsBackupRestoreSheetDe restore_sheet = TranslationsBackupRestoreSheetDe.internal(_root);
  late final TranslationsBackupMenuDe menu = TranslationsBackupMenuDe.internal(_root);
  late final TranslationsBackupDeleteDialogDe delete_dialog = TranslationsBackupDeleteDialogDe.internal(_root);
  late final TranslationsBackupRestoreDialogDe restore_dialog = TranslationsBackupRestoreDialogDe.internal(_root);
  late final TranslationsBackupReminderDe reminder = TranslationsBackupReminderDe.internal(_root);
  late final TranslationsBackupEventsDe events = TranslationsBackupEventsDe.internal(_root);
  late final TranslationsBackupCloudDe cloud = TranslationsBackupCloudDe.internal(_root);
}

// Path: breedings
class TranslationsBreedingsDe {
  TranslationsBreedingsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Züchtungen'
  String get title => 'Züchtungen';
}

// Path: colors
class TranslationsColorsDe {
  TranslationsColorsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Farben'
  String get title => 'Farben';

  /// de: 'Farbe hinzufügen'
  String get add => 'Farbe hinzufügen';

  /// de: 'Farbe bearbeiten'
  String get edit => 'Farbe bearbeiten';

  /// de: 'Farbe auswählen'
  String get select => 'Farbe auswählen';

  /// de: 'Farbe auswählen'
  String get pick => 'Farbe auswählen';

  /// de: 'Farbe löschen?'
  String get delete => 'Farbe löschen?';

  /// de: 'Farbe'
  String get color => 'Farbe';

  /// de: 'Farbschläge'
  String get list_title => 'Farbschläge';

  /// de: 'Farbwert'
  String get value_label => 'Farbwert';

  /// de: 'Genetik (optional)'
  String get genetics_section => 'Genetik (optional)';

  /// de: 'Erbgang'
  String get inheritance_label => 'Erbgang';

  /// de: 'z.B. Autosomal dominant'
  String get inheritance_hint => 'z.B. Autosomal dominant';

  /// de: 'Vögel mit dieser Farbe'
  String get birds_with_color => 'Vögel mit dieser Farbe';

  /// de: 'Keine Vögel mit dieser Farbe'
  String get no_birds_with_color => 'Keine Vögel mit dieser Farbe';

  /// de: 'Keine Farben'
  String get empty => 'Keine Farben';

  /// de: 'Farbe'
  String get detail_title => 'Farbe';

  late final TranslationsColorsStatsDe stats = TranslationsColorsStatsDe.internal(_root);
}

// Path: cages
class TranslationsCagesDe {
  TranslationsCagesDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Volieren'
  String get title => 'Volieren';

  /// de: 'Voliere hinzufügen'
  String get add => 'Voliere hinzufügen';

  /// de: 'Voliere bearbeiten'
  String get edit => 'Voliere bearbeiten';

  /// de: 'Voliere auswählen'
  String get select => 'Voliere auswählen';

  /// de: 'Voliere löschen?'
  String get delete => 'Voliere löschen?';

  /// de: 'Name des Volieres'
  String get name => 'Name des Volieres';

  /// de: 'Beschreibung'
  String get description => 'Beschreibung';

  /// de: 'Höhe'
  String get height => 'Höhe';

  /// de: 'Breite'
  String get width => 'Breite';

  /// de: 'Tiefe'
  String get depth => 'Tiefe';

  /// de: 'Käfige'
  String get list_title => 'Käfige';

  /// de: 'Voliere'
  String get detail_title => 'Voliere';

  late final TranslationsCagesSectionDe section = TranslationsCagesSectionDe.internal(_root);
  late final TranslationsCagesFieldDe field = TranslationsCagesFieldDe.internal(_root);
  late final TranslationsCagesUnitsDe units = TranslationsCagesUnitsDe.internal(_root);

  /// de: 'Belegung'
  String get occupancy => 'Belegung';

  /// de: 'Belegt'
  String get occupied_label => 'Belegt';

  /// de: 'Frei'
  String get free_label => 'Frei';

  /// de: 'Vögel'
  String get birds_count_label => 'Vögel';

  /// de: 'Aktuell belegt: {{occupied}}. Reduzierung unter {{occupied}} nicht möglich.'
  String capacity_hint({required Object Occupied}) => 'Aktuell belegt: ${Occupied}. Reduzierung unter ${Occupied} nicht möglich.';

  /// de: 'Kapazität nicht gesetzt — bitte Wert hinterlegen'
  String get capacity_missing_hint => 'Kapazität nicht gesetzt — bitte Wert hinterlegen';

  /// de: 'LEER'
  String get empty_badge => 'LEER';

  /// de: '{{occupied}}/{{capacity}} Plätze belegt'
  String places_occupied({required Object Occupied, required Object Capacity}) => '${Occupied}/${Capacity} Plätze belegt';

  /// de: 'Keine Käfige für diesen Filter'
  String get empty_filter => 'Keine Käfige für diesen Filter';

  late final TranslationsCagesFiltersDe filters = TranslationsCagesFiltersDe.internal(_root);
  late final TranslationsCagesTypesDe types = TranslationsCagesTypesDe.internal(_root);
}

// Path: species
class TranslationsSpeciesDe {
  TranslationsSpeciesDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Arten'
  String get title => 'Arten';

  /// de: 'Art hinzufügen'
  String get add => 'Art hinzufügen';

  /// de: 'Art bearbeiten'
  String get edit => 'Art bearbeiten';

  /// de: 'Art auswählen'
  String get select => 'Art auswählen';

  /// de: 'Art löschen?'
  String get delete => 'Art löschen?';

  /// de: 'Name der Art'
  String get name => 'Name der Art';

  /// de: 'Lateinischer Name'
  String get latin_name => 'Lateinischer Name';

  /// de: 'Art'
  String get detail_title => 'Art';

  late final TranslationsSpeciesSectionDe section = TranslationsSpeciesSectionDe.internal(_root);

  /// de: 'Bebrütung'
  String get incubation => 'Bebrütung';

  /// de: 'Ausflug'
  String get fledge => 'Ausflug';

  /// de: 'Tg'
  String get days_short => 'Tg';

  /// de: '{{days}}T gesamt'
  String lifecycle_total({required Object Days}) => '${Days}T gesamt';

  /// de: 'Wird automatisch für Schlupf- und Ausflugs-Prognosen verwendet.'
  String get lifecycle_hint => 'Wird automatisch für Schlupf- und Ausflugs-Prognosen verwendet.';

  /// de: '{{total}} TAGE GESAMT'
  String lifecycle_label_total({required Object Total}) => '${Total} TAGE GESAMT';

  /// de: 'Küken bis Ausflug'
  String get chick_until_fledge => 'Küken bis Ausflug';

  /// de: 'Schlupf · T{{day}}'
  String hatch_label({required Object Day}) => 'Schlupf · T${Day}';

  /// de: 'Ausflug · T{{day}}'
  String fledge_label({required Object Day}) => 'Ausflug · T${Day}';

  /// de: 'z.B. Melopsittacus undulatus'
  String get latin_hint_example => 'z.B. Melopsittacus undulatus';

  /// de: 'Lateinischer Artname für genaue Identifikation.'
  String get latin_hint => 'Lateinischer Artname für genaue Identifikation.';

  /// de: 'Gefährdete Art'
  String get endangered => 'Gefährdete Art';

  /// de: 'Kennzeichnet Arten, die unter Schutz stehen oder als gefährdet gelten.'
  String get endangered_hint => 'Kennzeichnet Arten, die unter Schutz stehen oder als gefährdet gelten.';

  /// de: 'Keine gefährdete Art'
  String get endangered_not => 'Keine gefährdete Art';

  /// de: 'Vorschläge'
  String get suggestions => 'Vorschläge';

  /// de: 'Brutdauer übernommen'
  String get incubation_found => 'Brutdauer übernommen';

  /// de: 'Keine Brutdauer gefunden – bitte selbst eintragen.'
  String get incubation_missing => 'Keine Brutdauer gefunden – bitte selbst eintragen.';

  /// de: 'Wissenschaftlicher Name'
  String get scientific_name => 'Wissenschaftlicher Name';

  /// de: 'Keine Arten'
  String get empty => 'Keine Arten';

  /// de: 'Vögel im Bestand'
  String get birds_in_stock => 'Vögel im Bestand';

  /// de: 'Keine Vögel'
  String get no_birds => 'Keine Vögel';

  late final TranslationsSpeciesStatsDe stats = TranslationsSpeciesStatsDe.internal(_root);

  /// de: '(one) {{{count}} Vogel im Bestand} (other) {{{count}} Vögel im Bestand}'
  String stock_summary({required num count, required Object Count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(
        count,
        one: '${Count} Vogel im Bestand',
        other: '${Count} Vögel im Bestand',
      );

  /// de: 'Bereits angelegt'
  String get already_added => 'Bereits angelegt';

  /// de: 'Eine Art mit diesem Namen existiert bereits.'
  String get duplicate_warning => 'Eine Art mit diesem Namen existiert bereits.';

  /// de: 'Nur gefährdete Arten'
  String get endangered_only => 'Nur gefährdete Arten';

  /// de: 'Bild entfernen'
  String get image_remove => 'Bild entfernen';
}

// Path: contacts
class TranslationsContactsDe {
  TranslationsContactsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Kontakte ({{count}})'
  String title({required Object Count}) => 'Kontakte (${Count})';

  /// de: 'Kontakt bearbeiten'
  String get edit => 'Kontakt bearbeiten';

  /// de: 'Kontakt erstellen'
  String get create => 'Kontakt erstellen';

  /// de: 'Kontakt gelöscht'
  String get deleted => 'Kontakt gelöscht';

  /// de: 'Kontakt gespeichert'
  String get saved => 'Kontakt gespeichert';

  late final TranslationsContactsFieldsDe fields = TranslationsContactsFieldsDe.internal(_root);

  /// de: 'Es sind noch keine Kontakte vorhanden. Du kannst Kontakte hinzufügen oder aus einer CSV-Datei importieren.'
  String get empty_list_information => 'Es sind noch keine Kontakte vorhanden. Du kannst Kontakte hinzufügen oder aus einer CSV-Datei importieren.';

  /// de: 'Kontakte importieren'
  String get import_button_text => 'Kontakte importieren';

  /// de: 'Kontakt hinzufügen'
  String get add_contact_button_text => 'Kontakt hinzufügen';

  /// de: 'Kontakt löschen?'
  String get delete => 'Kontakt löschen?';

  /// de: 'Kontakt hinzufügen?'
  String get add => 'Kontakt hinzufügen?';

  /// de: 'Kontakt auswählen'
  String get select => 'Kontakt auswählen';

  late final TranslationsContactsSectionsDe sections = TranslationsContactsSectionsDe.internal(_root);
  late final TranslationsContactsActionButtonDe action_button = TranslationsContactsActionButtonDe.internal(_root);
  late final TranslationsContactsOverviewDe overview = TranslationsContactsOverviewDe.internal(_root);
  late final TranslationsContactsCardDe card = TranslationsContactsCardDe.internal(_root);
  late final TranslationsContactsDetailDe detail = TranslationsContactsDetailDe.internal(_root);
}

// Path: breeding_pairs
class TranslationsBreedingPairsDe {
  TranslationsBreedingPairsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Zuchtpaar'
  String get title => 'Zuchtpaar';

  /// de: 'Zuchtpaar hinzufügen'
  String get add => 'Zuchtpaar hinzufügen';

  /// de: 'Zuchtpaar bearbeiten'
  String get edit => 'Zuchtpaar bearbeiten';

  /// de: 'Zuchtpaar löschen?'
  String get delete => 'Zuchtpaar löschen?';

  late final TranslationsBreedingPairsStatusDe status = TranslationsBreedingPairsStatusDe.internal(_root);

  /// de: 'Startdatum'
  String get start_date => 'Startdatum';

  /// de: 'Enddatum'
  String get end_date => 'Enddatum';

  /// de: 'Notizen'
  String get notes => 'Notizen';

  late final TranslationsBreedingPairsYearFilterDe year_filter = TranslationsBreedingPairsYearFilterDe.internal(_root);
  late final TranslationsBreedingPairsFilterDe filter = TranslationsBreedingPairsFilterDe.internal(_root);

  /// de: 'Paar'
  String get pair_one => 'Paar';

  /// de: 'Paare'
  String get pair_other => 'Paare';

  /// de: '{{count}} Käfige'
  String cages_count({required Object Count}) => '${Count} Käfige';

  /// de: '{{count}} aktive Brut'
  String active_broods_one({required Object Count}) => '${Count} aktive Brut';

  /// de: '{{count}} aktive Bruten'
  String active_broods_other({required Object Count}) => '${Count} aktive Bruten';

  /// de: '{{count}} Brut'
  String broods_total_one({required Object Count}) => '${Count} Brut';

  /// de: '{{count}} Bruten'
  String broods_total_other({required Object Count}) => '${Count} Bruten';

  late final TranslationsBreedingPairsBroodStatusDe brood_status = TranslationsBreedingPairsBroodStatusDe.internal(_root);

  /// de: 'BEENDET'
  String get finished_tag => 'BEENDET';

  /// de: 'Ohne Käfig'
  String get no_cage => 'Ohne Käfig';

  /// de: 'seit {{date}}'
  String since({required Object Date}) => 'seit ${Date}';

  /// de: 'bis {{date}}'
  String until({required Object Date}) => 'bis ${Date}';

  /// de: 'Keine Zuchtpaare in {{year}}.'
  String empty_for_year({required Object Year}) => 'Keine Zuchtpaare in ${Year}.';

  /// de: 'Keine Zuchtpaare.'
  String get empty => 'Keine Zuchtpaare.';

  /// de: 'Suche Ring, Käfig …'
  String get search_hint => 'Suche Ring, Käfig …';

  late final TranslationsBreedingPairsSortByDe sort_by = TranslationsBreedingPairsSortByDe.internal(_root);
  late final TranslationsBreedingPairsStatsDe stats = TranslationsBreedingPairsStatsDe.internal(_root);
}

// Path: resources
class TranslationsResourcesDe {
  TranslationsResourcesDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Ressourcen'
  String get title => 'Ressourcen';

  /// de: '(zero) {In keinem Vogel verwendet} (one) {Verwendet in einem Vogel} (other) {Verwendet in {{n}} Vögel}'
  String usage_count({required num count, required Object N}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(
        count,
        zero: 'In keinem Vogel verwendet',
        one: 'Verwendet in einem Vogel',
        other: 'Verwendet in ${N} Vögel',
      );

  /// de: 'Nichts gefunden, klick auf "Hinzufügen" um einen neuen Eintrag zu erstellen.'
  String get no_search_results => 'Nichts gefunden, klick auf "Hinzufügen" um einen neuen Eintrag zu erstellen.';

  late final TranslationsResourcesSectionDe section = TranslationsResourcesSectionDe.internal(_root);
  late final TranslationsResourcesActionsDe actions = TranslationsResourcesActionsDe.internal(_root);
  late final TranslationsResourcesColorPickerDe color_picker = TranslationsResourcesColorPickerDe.internal(_root);
  late final TranslationsResourcesFieldDe field = TranslationsResourcesFieldDe.internal(_root);
  late final TranslationsResourcesDeleteDe delete = TranslationsResourcesDeleteDe.internal(_root);
  late final TranslationsResourcesSortDe sort = TranslationsResourcesSortDe.internal(_root);
}

// Path: birds
class TranslationsBirdsDe {
  TranslationsBirdsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Vögel'
  String get title => 'Vögel';

  late final TranslationsBirdsOverviewDe overview = TranslationsBirdsOverviewDe.internal(_root);
  late final TranslationsBirdsFilterDe filter = TranslationsBirdsFilterDe.internal(_root);
}

// Path: pedigree
class TranslationsPedigreeDe {
  TranslationsPedigreeDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Stammbaum'
  String get title => 'Stammbaum';

  /// de: 'Ahnentafel'
  String get subtitle => 'Ahnentafel';

  /// de: 'Vogel'
  String get col_bird => 'Vogel';

  /// de: 'Eltern'
  String get col_parents => 'Eltern';

  /// de: 'Großeltern'
  String get col_grandparents => 'Großeltern';

  /// de: 'Urgroßeltern'
  String get col_greatgrandparents => 'Urgroßeltern';

  /// de: 'Ahnen'
  String get col_ancestors => 'Ahnen';

  /// de: 'Vorfahren'
  String get section_ancestors => 'Vorfahren';

  /// de: 'Nachkommen'
  String get section_descendants => 'Nachkommen';

  /// de: 'Keine Nachkommen erfasst'
  String get no_descendants => 'Keine Nachkommen erfasst';

  /// de: 'Unbekannt'
  String get unknown => 'Unbekannt';

  /// de: 'Elternteil zuweisen'
  String get assign_parent => 'Elternteil zuweisen';

  /// de: 'Vater hinzufügen'
  String get add_father => 'Vater hinzufügen';

  /// de: 'Mutter hinzufügen'
  String get add_mother => 'Mutter hinzufügen';

  /// de: 'Gemeinsamer Vorfahre (Inzucht)'
  String get common_ancestor => 'Gemeinsamer Vorfahre (Inzucht)';

  /// de: 'Verkauft'
  String get sold => 'Verkauft';

  /// de: 'Nicht im Besitz'
  String get not_own => 'Nicht im Besitz';

  /// de: 'Verstorben'
  String get deceased => 'Verstorben';

  /// de: 'Teilen'
  String get share => 'Teilen';

  /// de: 'stammbaum_{{ring}}'
  String share_filename({required Object Ring}) => 'stammbaum_${Ring}';

  /// de: 'Tiefe'
  String get depth => 'Tiefe';

  /// de: 'Alle'
  String get depth_all => 'Alle';

  /// de: 'Diese Vögel sind sowohl über die väterliche als auch die mütterliche Linie verwandt.'
  String get inbreeding_explainer => 'Diese Vögel sind sowohl über die väterliche als auch die mütterliche Linie verwandt.';

  /// de: 'über Vater'
  String get via_father => 'über Vater';

  /// de: 'über Mutter'
  String get via_mother => 'über Mutter';

  late final TranslationsPedigreeStatsDe stats = TranslationsPedigreeStatsDe.internal(_root);

  /// de: 'Wischen für mehr Übersicht'
  String get swipe_hint => 'Wischen für mehr Übersicht';
}

// Path: inbreeding
class TranslationsInbreedingDe {
  TranslationsInbreedingDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Inzuchtkoeffizient'
  String get coefficient => 'Inzuchtkoeffizient';

  /// de: 'F'
  String get coefficient_short => 'F';

  /// de: 'Keine Inzucht'
  String get severity_none => 'Keine Inzucht';

  /// de: 'Gering'
  String get severity_low => 'Gering';

  /// de: 'Erhöht'
  String get severity_elevated => 'Erhöht';

  /// de: 'Hoch'
  String get severity_high => 'Hoch';

  /// de: '1 gemeinsamer Vorfahre'
  String get common_ancestors_one => '1 gemeinsamer Vorfahre';

  /// de: '{{count}} gemeinsame Vorfahren'
  String common_ancestors_other({required Object Count}) => '${Count} gemeinsame Vorfahren';

  /// de: 'Beitrag'
  String get path_contribution => 'Beitrag';

  /// de: 'Inzuchtkoeffizient: {{percent}}'
  String banner_label({required Object Percent}) => 'Inzuchtkoeffizient: ${Percent}';

  /// de: 'Inzucht-Warnung'
  String get pair_warning_title => 'Inzucht-Warnung';

  /// de: 'Die Verpaarung dieser Vögel ergibt einen Inzuchtkoeffizienten von {{percent}} ({{severity}}). Trotzdem anlegen?'
  String pair_warning_body({required Object Percent, required Object Severity}) =>
      'Die Verpaarung dieser Vögel ergibt einen Inzuchtkoeffizienten von ${Percent} (${Severity}). Trotzdem anlegen?';

  /// de: 'Trotzdem anlegen'
  String get proceed_anyway => 'Trotzdem anlegen';
}

// Path: bird
class TranslationsBirdDe {
  TranslationsBirdDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Vogel'
  String get title => 'Vogel';

  /// de: 'Vogel bearbeiten'
  String get edit => 'Vogel bearbeiten';

  /// de: 'Vogel gelöscht'
  String get deleted => 'Vogel gelöscht';

  /// de: 'Vogel gespeichert'
  String get saved => 'Vogel gespeichert';

  /// de: 'Vogel löschen?'
  String get delete => 'Vogel löschen?';

  /// de: 'Vogel duplizieren'
  String get duplicate => 'Vogel duplizieren';

  /// de: 'Vogel hinzufügen'
  String get add => 'Vogel hinzufügen';

  /// de: 'Farbe auswählen'
  String get select_color_label => 'Farbe auswählen';

  /// de: 'Art auswählen'
  String get select_species_label => 'Art auswählen';

  /// de: 'Voliere auswählen'
  String get select_cage_label => 'Voliere auswählen';

  /// de: 'Besitzer auswählen'
  String get select_owner_label => 'Besitzer auswählen';

  /// de: 'Verkauft an auswählen'
  String get select_sold_to_label => 'Verkauft an auswählen';

  /// de: 'Gekauft von auswählen'
  String get select_bought_from_label => 'Gekauft von auswählen';

  /// de: 'Erstellt am {{DateTime date}} um {{time}}'
  String created_information({required Object DateTimeDate, required Object Time}) => 'Erstellt am ${DateTimeDate} um ${Time}';

  late final TranslationsBirdTabsDe tabs = TranslationsBirdTabsDe.internal(_root);
  late final TranslationsBirdSummaryDe summary = TranslationsBirdSummaryDe.internal(_root);
  late final TranslationsBirdSectionsDe sections = TranslationsBirdSectionsDe.internal(_root);
}

// Path: pair_detail
class TranslationsPairDetailDe {
  TranslationsPairDetailDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: '♂ VATER'
  String get father_label => '♂ VATER';

  /// de: '♀ MUTTER'
  String get mother_label => '♀ MUTTER';

  /// de: 'Aktuelle Brut'
  String get current_brood => 'Aktuelle Brut';

  /// de: 'Verlauf'
  String get history => 'Verlauf';

  /// de: '{{count}} Brut'
  String history_count_one({required Object Count}) => '${Count} Brut';

  /// de: '{{count}} Bruten'
  String history_count_other({required Object Count}) => '${Count} Bruten';

  /// de: 'BRUT'
  String get brood_short => 'BRUT';

  /// de: 'Tag {{day}}'
  String day({required Object Day}) => 'Tag ${Day}';

  /// de: 'Start: {{date}}'
  String start_label({required Object Date}) => 'Start: ${Date}';

  /// de: 'Keine aktive Brut'
  String get no_current_brood => 'Keine aktive Brut';

  late final TranslationsPairDetailKpiDe kpi = TranslationsPairDetailKpiDe.internal(_root);

  /// de: 'Neue Brut'
  String get new_brood => 'Neue Brut';

  /// de: 'seit {{date}}'
  String since({required Object Date}) => 'seit ${Date}';
}

// Path: brood
class TranslationsBroodDe {
  TranslationsBroodDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Gelege'
  String get name => 'Gelege';

  /// de: 'Brutübersicht'
  String get overview => 'Brutübersicht';

  /// de: 'Letzte Brut'
  String get latest => 'Letzte Brut';

  /// de: 'Gelege hinzufügen'
  String get add => 'Gelege hinzufügen';

  /// de: 'Gelege löschen?'
  String get delete => 'Gelege löschen?';

  /// de: 'Gelege bearbeiten'
  String get edit => 'Gelege bearbeiten';

  /// de: 'Noch kein Gelege hinzugefügt'
  String get empty => 'Noch kein Gelege hinzugefügt';

  /// de: 'Seit {{date}}'
  String since({required Object Date}) => 'Seit ${Date}';

  /// de: '(zero) {Keine Eier} (one) {1 Ei} (other) {{{count}} Eier}'
  String eggs_count({required num count, required Object Count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(
        count,
        zero: 'Keine Eier',
        one: '1 Ei',
        other: '${Count} Eier',
      );

  late final TranslationsBroodKpiDe kpi = TranslationsBroodKpiDe.internal(_root);

  /// de: '(zero) {Keine geschlüpft} (one) {1 geschlüpft} (other) {{{count}} geschlüpft}'
  String hatched_count({required num count, required Object Count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(
        count,
        zero: 'Keine geschlüpft',
        one: '1 geschlüpft',
        other: '${Count} geschlüpft',
      );

  /// de: '(zero) {Keine ausgeflogen} (one) {1 ausgeflogen} (other) {{{count}} ausgeflogen}'
  String fledged_count({required num count, required Object Count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(
        count,
        zero: 'Keine ausgeflogen',
        one: '1 ausgeflogen',
        other: '${Count} ausgeflogen',
      );

  /// de: 'Notizen (optional)'
  String get notes => 'Notizen (optional)';

  /// de: 'Erstellt am {{DateTime date}} um {{time}}'
  String created_information({required Object DateTimeDate, required Object Time}) => 'Erstellt am ${DateTimeDate} um ${Time}';
}

// Path: egg
class TranslationsEggDe {
  TranslationsEggDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Ei'
  String get name => 'Ei';

  /// de: 'Ei hinzufügen'
  String get add => 'Ei hinzufügen';

  late final TranslationsEggStatusDe status = TranslationsEggStatusDe.internal(_root);
  late final TranslationsEggActionDe action = TranslationsEggActionDe.internal(_root);

  /// de: 'Lege-Datum auswählen'
  String get pick_laid_date => 'Lege-Datum auswählen';

  /// de: 'Ausgeflogen-Datum auswählen'
  String get pick_fledged_date => 'Ausgeflogen-Datum auswählen';

  /// de: 'Geschlüpft-Datum auswählen'
  String get pick_hatched_date => 'Geschlüpft-Datum auswählen';

  /// de: 'Befruchtet-Datum auswählen'
  String get pick_fertilized_date => 'Befruchtet-Datum auswählen';

  /// de: 'Unbefruchtet-Datum auswählen'
  String get pick_unfertilized_date => 'Unbefruchtet-Datum auswählen';

  /// de: 'Sterbedatum auswählen'
  String get pick_died_date => 'Sterbedatum auswählen';

  /// de: 'Im Bestand'
  String get in_stock => 'Im Bestand';

  late final TranslationsEggLifecycleDe lifecycle = TranslationsEggLifecycleDe.internal(_root);
}

// Path: common
class TranslationsCommonDe {
  TranslationsCommonDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsCommonBottomSheetDe bottom_sheet = TranslationsCommonBottomSheetDe.internal(_root);
  late final TranslationsCommonSaleStatusDe sale_status = TranslationsCommonSaleStatusDe.internal(_root);

  /// de: 'Alle'
  String get all_label => 'Alle';

  /// de: 'Mehr'
  String get more_label => 'Mehr';

  /// de: 'Weniger'
  String get less_label => 'Weniger';

  /// de: 'Suchen'
  String get search => 'Suchen';

  /// de: 'Suchen ...'
  String get search_hint => 'Suchen ...';

  /// de: '(zero) {Keine Vögel} (one) {1 Vogel} (other) {{count} Vögel}'
  String countbird({required num count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(
        count,
        zero: 'Keine Vögel',
        one: '1 Vogel',
        other: '{count} Vögel',
      );

  /// de: 'Optional'
  String get optional => 'Optional';

  /// de: 'Übernehmen'
  String get apply => 'Übernehmen';

  /// de: 'Zurücksetzen'
  String get reset => 'Zurücksetzen';

  /// de: 'Hinzufügen'
  String get add => 'Hinzufügen';

  /// de: 'Schließen'
  String get close => 'Schließen';

  /// de: 'Abbrechen'
  String get cancel => 'Abbrechen';

  /// de: 'Ok'
  String get ok => 'Ok';

  late final TranslationsCommonSexDe sex = TranslationsCommonSexDe.internal(_root);
  late final TranslationsCommonSellDe sell = TranslationsCommonSellDe.internal(_root);
  late final TranslationsCommonBoughtDe bought = TranslationsCommonBoughtDe.internal(_root);

  /// de: '(one) {Ei} (other) {Eier}'
  String eggs_short({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(
        n,
        one: 'Ei',
        other: 'Eier',
      );

  /// de: 'gel.'
  String get laid_short => 'gel.';

  /// de: 'bef.'
  String get fertilzed_short => 'bef.';

  /// de: 'geschl.'
  String get hatched_short => 'geschl.';

  /// de: 'ausgef.'
  String get fledged_short => 'ausgef.';

  /// de: 'gest.'
  String get died_short => 'gest.';

  late final TranslationsCommonSortingDe sorting = TranslationsCommonSortingDe.internal(_root);

  /// de: 'Hoppla, etwas ist schiefgelaufen.'
  String get something_went_wrong => 'Hoppla, etwas ist schiefgelaufen.';

  /// de: 'Speichern'
  String get save => 'Speichern';

  /// de: 'Allgemein'
  String get general => 'Allgemein';

  /// de: 'Ringnummer'
  String get ringnumber => 'Ringnummer';

  /// de: 'Notizen'
  String get notes => 'Notizen';

  /// de: 'Gelege'
  String get clutches => 'Gelege';

  /// de: 'Gelegt'
  String get laid => 'Gelegt';

  /// de: 'Befruchtet'
  String get fertilzed => 'Befruchtet';

  /// de: 'Geschlüpft'
  String get hatched => 'Geschlüpft';

  /// de: 'Ausgeflogen'
  String get fledged => 'Ausgeflogen';

  /// de: 'Herkunft'
  String get origin => 'Herkunft';

  /// de: 'Art'
  String get species => 'Art';

  /// de: 'Farbe'
  String get color => 'Farbe';

  /// de: 'Voliere'
  String get cage => 'Voliere';

  /// de: 'Besitzer'
  String get owner => 'Besitzer';

  late final TranslationsCommonSoldDe sold = TranslationsCommonSoldDe.internal(_root);

  /// de: 'Geschlecht'
  String get gender => 'Geschlecht';

  /// de: 'Sterbedatum'
  String get died_at => 'Sterbedatum';

  /// de: 'Geburtsdatum'
  String get born_at => 'Geburtsdatum';

  /// de: 'Vater'
  String get father => 'Vater';

  /// de: 'Mutter'
  String get mother => 'Mutter';

  /// de: 'Partner'
  String get partner => 'Partner';

  /// de: 'Zum Verkauf'
  String get is_for_sale => 'Zum Verkauf';

  /// de: 'Ja'
  String get yes => 'Ja';

  /// de: 'Nein'
  String get no => 'Nein';

  late final TranslationsCommonUnitDe unit = TranslationsCommonUnitDe.internal(_root);

  /// de: 'E-Mail'
  String get email => 'E-Mail';

  /// de: 'Passwort'
  String get password => 'Passwort';

  late final TranslationsCommonHintDe hint = TranslationsCommonHintDe.internal(_root);

  /// de: 'Dieses Feld muss ausgefüllt werden'
  String get required => 'Dieses Feld muss ausgefüllt werden';
}

// Path: auth
class TranslationsAuthDe {
  TranslationsAuthDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Anmelden'
  String get sign_in => 'Anmelden';

  /// de: 'Registrieren'
  String get sign_up => 'Registrieren';

  /// de: 'Passwort bestätigen'
  String get confirm_password => 'Passwort bestätigen';

  /// de: 'Passwörter stimmen nicht überein'
  String get passwords_do_not_match => 'Passwörter stimmen nicht überein';

  /// de: 'Konto erstellen'
  String get create_account => 'Konto erstellen';

  /// de: 'Vorname'
  String get first_name => 'Vorname';

  /// de: 'Nachname'
  String get last_name => 'Nachname';

  /// de: 'Melden Sie sich an, um fortzufahren. Wenn Sie noch kein Konto haben, können Sie eines erstellen. Wechseln Sie einfach zur Registerkarte "Konto erstellen".'
  String get sign_in_text =>
      'Melden Sie sich an, um fortzufahren. Wenn Sie noch kein Konto haben, können Sie eines erstellen. Wechseln Sie einfach zur Registerkarte "Konto erstellen".';

  /// de: 'Erstellen Sie ein Konto, um fortzufahren. Wenn Sie bereits ein Konto haben, können Sie sich einfach anmelden. Wechseln Sie einfach zur Registerkarte "Anmelden".'
  String get sign_up_text =>
      'Erstellen Sie ein Konto, um fortzufahren. Wenn Sie bereits ein Konto haben, können Sie sich einfach anmelden. Wechseln Sie einfach zur Registerkarte "Anmelden".';

  late final TranslationsAuthValidatorsDe validators = TranslationsAuthValidatorsDe.internal(_root);
}

// Path: csv_import
class TranslationsCsvImportDe {
  TranslationsCsvImportDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'CSV Import'
  String get title => 'CSV Import';

  /// de: 'Wähle aus, was du importieren möchtest:'
  String get select_type => 'Wähle aus, was du importieren möchtest:';

  /// de: 'Zurück'
  String get back => 'Zurück';

  /// de: 'CSV-Datei auswählen'
  String get select_file => 'CSV-Datei auswählen';

  /// de: 'Abbrechen'
  String get cancel => 'Abbrechen';

  /// de: 'Neuer Import'
  String get new_import => 'Neuer Import';

  /// de: 'Erneut versuchen'
  String get retry => 'Erneut versuchen';

  /// de: 'Lese "{{fileName}}"...'
  String reading({required Object FileName}) => 'Lese "${FileName}"...';

  /// de: 'Importiere {{itemName}}...'
  String importing({required Object ItemName}) => 'Importiere ${ItemName}...';

  /// de: '{{current}} von {{total}}'
  String progress({required Object Current, required Object Total}) => '${Current} von ${Total}';

  /// de: 'Import abgeschlossen'
  String get completed => 'Import abgeschlossen';

  late final TranslationsCsvImportBirdsDe birds = TranslationsCsvImportBirdsDe.internal(_root);
  late final TranslationsCsvImportContactsDe contacts = TranslationsCsvImportContactsDe.internal(_root);
  late final TranslationsCsvImportColumnsDe columns = TranslationsCsvImportColumnsDe.internal(_root);
  late final TranslationsCsvImportPreviewDe preview = TranslationsCsvImportPreviewDe.internal(_root);
  late final TranslationsCsvImportTableDe table = TranslationsCsvImportTableDe.internal(_root);
  late final TranslationsCsvImportStatusDe status = TranslationsCsvImportStatusDe.internal(_root);
  late final TranslationsCsvImportSummaryDe summary = TranslationsCsvImportSummaryDe.internal(_root);
  late final TranslationsCsvImportErrorsDe errors = TranslationsCsvImportErrorsDe.internal(_root);
}

// Path: menu
class TranslationsMenuDe {
  TranslationsMenuDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsMenuSectionsDe sections = TranslationsMenuSectionsDe.internal(_root);
  late final TranslationsMenuBirdsDe birds = TranslationsMenuBirdsDe.internal(_root);
  late final TranslationsMenuContactsDe contacts = TranslationsMenuContactsDe.internal(_root);
  late final TranslationsMenuBreedingsDe breedings = TranslationsMenuBreedingsDe.internal(_root);
  late final TranslationsMenuResourcesDe resources = TranslationsMenuResourcesDe.internal(_root);
  late final TranslationsMenuFinancesDe finances = TranslationsMenuFinancesDe.internal(_root);
  late final TranslationsMenuCsvImportDe csv_import = TranslationsMenuCsvImportDe.internal(_root);
  late final TranslationsMenuAccountDe account = TranslationsMenuAccountDe.internal(_root);
  late final TranslationsMenuSpeciesDe species = TranslationsMenuSpeciesDe.internal(_root);
  late final TranslationsMenuCagesDe cages = TranslationsMenuCagesDe.internal(_root);
  late final TranslationsMenuColorsDe colors = TranslationsMenuColorsDe.internal(_root);
  late final TranslationsMenuFinanceCategoriesDe finance_categories = TranslationsMenuFinanceCategoriesDe.internal(_root);

  /// de: 'Vogel hinzufügen'
  String get add_bird => 'Vogel hinzufügen';
}

// Path: error
class TranslationsErrorDe {
  TranslationsErrorDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Entschuldigung, es ist ein Fehler aufgetreten'
  String get message => 'Entschuldigung, es ist ein Fehler aufgetreten';
}

// Path: dialog
class TranslationsDialogDe {
  TranslationsDialogDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsDialogDiscardChangesDe discard_changes = TranslationsDialogDiscardChangesDe.internal(_root);
  late final TranslationsDialogDeleteEntryDe delete_entry = TranslationsDialogDeleteEntryDe.internal(_root);
}

// Path: pop_up_menu
class TranslationsPopUpMenuDe {
  TranslationsPopUpMenuDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Öffnen'
  String get open => 'Öffnen';

  /// de: 'Bearbeiten'
  String get edit => 'Bearbeiten';

  /// de: 'Anzeigen'
  String get show => 'Anzeigen';

  /// de: 'Stammbaum'
  String get pedigree => 'Stammbaum';

  /// de: 'Dokumente'
  String get documents => 'Dokumente';

  /// de: 'Ringnummer setzen'
  String get set_ringnumber => 'Ringnummer setzen';

  /// de: 'Farbe setzen'
  String get set_color => 'Farbe setzen';

  /// de: 'In Bestand aufnehmen'
  String get add_to_stock => 'In Bestand aufnehmen';

  /// de: 'Duplizieren'
  String get duplicate => 'Duplizieren';

  /// de: 'Löschen'
  String get delete => 'Löschen';
}

// Path: export
class TranslationsExportDe {
  TranslationsExportDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Exportieren'
  String get title => 'Exportieren';

  /// de: 'Exportieren'
  String get action => 'Exportieren';

  /// de: 'Exportiert wird genau die aktuell angezeigte Liste.'
  String get scope_hint => 'Exportiert wird genau die aktuell angezeigte Liste.';

  /// de: 'Dateiname'
  String get file_name_label => 'Dateiname';

  /// de: 'Es gibt nichts zu exportieren.'
  String get empty => 'Es gibt nichts zu exportieren.';

  late final TranslationsExportEventsDe events = TranslationsExportEventsDe.internal(_root);

  /// de: '1 Eintrag'
  String get row_count_one => '1 Eintrag';

  /// de: '{{count}} Einträge'
  String row_count_other({required Object Count}) => '${Count} Einträge';

  late final TranslationsExportFormatDe format = TranslationsExportFormatDe.internal(_root);
  late final TranslationsExportPresetDe preset = TranslationsExportPresetDe.internal(_root);
  late final TranslationsExportPdfDe pdf = TranslationsExportPdfDe.internal(_root);
  late final TranslationsExportHeaderDe header = TranslationsExportHeaderDe.internal(_root);

  /// de: 'Briefkopf'
  String get profile_label => 'Briefkopf';

  late final TranslationsExportSummaryDe summary = TranslationsExportSummaryDe.internal(_root);
  late final TranslationsExportListsDe lists = TranslationsExportListsDe.internal(_root);
  late final TranslationsExportFileNamesDe file_names = TranslationsExportFileNamesDe.internal(_root);
  late final TranslationsExportPresetsDe presets = TranslationsExportPresetsDe.internal(_root);
  late final TranslationsExportColumnsDe columns = TranslationsExportColumnsDe.internal(_root);
}

// Path: documents
class TranslationsDocumentsDe {
  TranslationsDocumentsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Dokument erstellen'
  String get title => 'Dokument erstellen';

  /// de: 'Erstellen'
  String get action => 'Erstellen';

  /// de: 'Dokument'
  String get type_label => 'Dokument';

  late final TranslationsDocumentsTypesDe types = TranslationsDocumentsTypesDe.internal(_root);
  late final TranslationsDocumentsProfileDe profile = TranslationsDocumentsProfileDe.internal(_root);
  late final TranslationsDocumentsPedigreeDe pedigree = TranslationsDocumentsPedigreeDe.internal(_root);
  late final TranslationsDocumentsReceiptDe receipt = TranslationsDocumentsReceiptDe.internal(_root);
}

// Path: snackbars
class TranslationsSnackbarsDe {
  TranslationsSnackbarsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Anmeldung fehlgeschlagen, bitte überprüfen Sie Ihre Anmeldedaten und Ihre Internetverbindung.'
  String get sign_in_failed => 'Anmeldung fehlgeschlagen, bitte überprüfen Sie Ihre Anmeldedaten und Ihre Internetverbindung.';

  /// de: 'Registrierung fehlgeschlagen, bitte überprüfen Sie Ihre Eingaben und Ihre Internetverbindung.'
  String get sign_up_failed => 'Registrierung fehlgeschlagen, bitte überprüfen Sie Ihre Eingaben und Ihre Internetverbindung.';

  /// de: 'Registrierung erfolgreich, Sie werden automatisch angemeldet.'
  String get sign_up_success => 'Registrierung erfolgreich, Sie werden automatisch angemeldet.';
}

// Path: finances.categories
class TranslationsFinancesCategoriesDe {
  TranslationsFinancesCategoriesDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Kategorien'
  String get title => 'Kategorien';

  /// de: 'Kategorie'
  String get category => 'Kategorie';

  /// de: 'Kategorie hinzufügen'
  String get add => 'Kategorie hinzufügen';

  /// de: 'Kategorie bearbeiten'
  String get edit => 'Kategorie bearbeiten';

  /// de: 'Kategorie auswählen'
  String get select => 'Kategorie auswählen';

  /// de: 'Kategorie löschen?'
  String get delete => 'Kategorie löschen?';

  /// de: 'Name der Kategorie'
  String get name => 'Name der Kategorie';

  /// de: 'Farbe der Kategorie'
  String get color => 'Farbe der Kategorie';

  /// de: 'Beschreibung'
  String get description => 'Beschreibung';

  /// de: 'Kategorien'
  String get list_title => 'Kategorien';

  /// de: 'Bezeichnung'
  String get designation => 'Bezeichnung';

  /// de: 'Buchungen'
  String get bookings => 'Buchungen';

  late final TranslationsFinancesCategoriesFiltersDe filters = TranslationsFinancesCategoriesFiltersDe.internal(_root);
  late final TranslationsFinancesCategoriesGroupsDe groups = TranslationsFinancesCategoriesGroupsDe.internal(_root);
  late final TranslationsFinancesCategoriesKindSingularDe kind_singular = TranslationsFinancesCategoriesKindSingularDe.internal(_root);
  late final TranslationsFinancesCategoriesPillDe pill = TranslationsFinancesCategoriesPillDe.internal(_root);

  /// de: 'Keine Kategorien'
  String get empty => 'Keine Kategorien';

  /// de: 'Typ kann nach Anlegen nicht mehr geändert werden — {{usage}} Buchungen verknüpft.'
  String type_lock_hint({required Object Usage}) => 'Typ kann nach Anlegen nicht mehr geändert werden — ${Usage} Buchungen verknüpft.';

  /// de: 'Wählt Berechnungs-Vorzeichen für Buchungen.'
  String get type_lock_default => 'Wählt Berechnungs-Vorzeichen für Buchungen.';

  /// de: 'Finanzkategorie'
  String get detail_title => 'Finanzkategorie';

  late final TranslationsFinancesCategoriesDetailDe detail = TranslationsFinancesCategoriesDetailDe.internal(_root);
  late final TranslationsFinancesCategoriesMonthsShortDe months_short = TranslationsFinancesCategoriesMonthsShortDe.internal(_root);
}

// Path: finances.add
class TranslationsFinancesAddDe {
  TranslationsFinancesAddDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Eintrag hinzufügen'
  String get name => 'Eintrag hinzufügen';

  /// de: 'Betreff'
  String get title => 'Betreff';

  /// de: 'Datum'
  String get date => 'Datum';

  /// de: 'Kategorie auswählen'
  String get category => 'Kategorie auswählen';

  /// de: 'Betrag eingeben'
  String get amount => 'Betrag eingeben';

  /// de: 'Bitte einen gültigen Betrag eingeben'
  String get amount_invalid => 'Bitte einen gültigen Betrag eingeben';

  /// de: 'Beschreibung'
  String get notes => 'Beschreibung';

  /// de: 'Relevanter Vogel'
  String get bird => 'Relevanter Vogel';
}

// Path: finances.kind
class TranslationsFinancesKindDe {
  TranslationsFinancesKindDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Art'
  String get name => 'Art';

  /// de: 'Einnahmen'
  String get income => 'Einnahmen';

  /// de: 'Ausgaben'
  String get expense => 'Ausgaben';
}

// Path: finances.summary
class TranslationsFinancesSummaryDe {
  TranslationsFinancesSummaryDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Saldo'
  String get net => 'Saldo';

  /// de: 'NETTO'
  String get net_label => 'NETTO';

  /// de: 'HEUTE'
  String get today => 'HEUTE';

  /// de: 'EINNAHMEN'
  String get income_label => 'EINNAHMEN';

  /// de: 'AUSGABEN'
  String get expense_label => 'AUSGABEN';
}

// Path: finances.view
class TranslationsFinancesViewDe {
  TranslationsFinancesViewDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Alle'
  String get all => 'Alle';

  /// de: 'Heute'
  String get today => 'Heute';

  /// de: 'Gestern'
  String get yesterday => 'Gestern';

  /// de: 'Suche Buchung …'
  String get search_hint => 'Suche Buchung …';

  /// de: 'Keine Buchungen im Zeitraum'
  String get empty => 'Keine Buchungen im Zeitraum';

  /// de: 'Nach Kategorie filtern'
  String get categories_filter_title => 'Nach Kategorie filtern';

  /// de: 'Alle Kategorien'
  String get all_categories => 'Alle Kategorien';

  /// de: 'Filter'
  String get filter_button => 'Filter';

  /// de: 'Kategorien filtern'
  String get filter_sheet_title => 'Kategorien filtern';

  /// de: 'Alle abwählen'
  String get filter_clear_all => 'Alle abwählen';

  /// de: 'Übernehmen'
  String get filter_apply => 'Übernehmen';

  /// de: 'Kategorie suchen …'
  String get filter_search_hint => 'Kategorie suchen …';
}

// Path: finances.scope
class TranslationsFinancesScopeDe {
  TranslationsFinancesScopeDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Monat'
  String get month => 'Monat';

  /// de: 'Jahr'
  String get year => 'Jahr';

  /// de: 'Alle'
  String get all => 'Alle';

  /// de: 'Zeitraum'
  String get custom => 'Zeitraum';

  /// de: 'DIESES JAHR'
  String get current_year => 'DIESES JAHR';

  /// de: 'Von'
  String get from_short => 'Von';

  /// de: 'Bis'
  String get to_short => 'Bis';

  /// de: 'Datum wählen'
  String get pick_date => 'Datum wählen';
}

// Path: finances.filter
class TranslationsFinancesFilterDe {
  TranslationsFinancesFilterDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Vogel'
  String get bird => 'Vogel';

  /// de: 'Zeitraum'
  String get date_range => 'Zeitraum';

  /// de: 'Von'
  String get from => 'Von';

  /// de: 'Bis'
  String get to => 'Bis';

  /// de: 'Alle'
  String get all_years => 'Alle';
}

// Path: finances.sorting
class TranslationsFinancesSortingDe {
  TranslationsFinancesSortingDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Datum (neu → alt)'
  String get date_desc => 'Datum (neu → alt)';

  /// de: 'Datum (alt → neu)'
  String get date_asc => 'Datum (alt → neu)';

  /// de: 'Betrag (hoch → niedrig)'
  String get amount_desc => 'Betrag (hoch → niedrig)';

  /// de: 'Betrag (niedrig → hoch)'
  String get amount_asc => 'Betrag (niedrig → hoch)';
}

// Path: account.switch_to_local_dialog
class TranslationsAccountSwitchToLocalDialogDe {
  TranslationsAccountSwitchToLocalDialogDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Zu Lokal-Modus wechseln'
  String get title => 'Zu Lokal-Modus wechseln';

  /// de: 'Alle deine Daten werden vom Server in die lokale Datenbank kopiert. Danach wird die App im Lokal-Modus neu gestartet. Möchtest du fortfahren?'
  String get content =>
      'Alle deine Daten werden vom Server in die lokale Datenbank kopiert. Danach wird die App im Lokal-Modus neu gestartet.\n\nMöchtest du fortfahren?';

  /// de: 'Wechseln'
  String get confirm => 'Wechseln';
}

// Path: account.local_mode
class TranslationsAccountLocalModeDe {
  TranslationsAccountLocalModeDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Lokal-Modus'
  String get title => 'Lokal-Modus';

  /// de: 'Alle Daten werden lokal auf diesem Gerät gespeichert.'
  String get description => 'Alle Daten werden lokal auf diesem Gerät gespeichert.';
}

// Path: account.appearance
class TranslationsAccountAppearanceDe {
  TranslationsAccountAppearanceDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Erscheinungsbild'
  String get title => 'Erscheinungsbild';

  /// de: 'System'
  String get system => 'System';

  /// de: 'Hell'
  String get light => 'Hell';

  /// de: 'Dunkel'
  String get dark => 'Dunkel';
}

// Path: account.language
class TranslationsAccountLanguageDe {
  TranslationsAccountLanguageDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Sprache'
  String get title => 'Sprache';

  /// de: 'Systemsprache'
  String get system => 'Systemsprache';

  /// de: 'Sprache wählen'
  String get sheet_title => 'Sprache wählen';
}

// Path: account.currency
class TranslationsAccountCurrencyDe {
  TranslationsAccountCurrencyDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Währung'
  String get title => 'Währung';

  /// de: 'Währung wählen'
  String get sheet_title => 'Währung wählen';

  /// de: 'Beträge werden nur neu beschriftet, nicht umgerechnet.'
  String get hint => 'Beträge werden nur neu beschriftet, nicht umgerechnet.';
}

// Path: account.profile
class TranslationsAccountProfileDe {
  TranslationsAccountProfileDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Züchternummer {{value}}'
  String breeder_number({required Object Value}) => 'Züchternummer ${Value}';

  /// de: 'Kein Profil-Kontakt hinterlegt'
  String get no_contact => 'Kein Profil-Kontakt hinterlegt';

  /// de: 'Profil bearbeiten'
  String get edit => 'Profil bearbeiten';
}

// Path: account.user
class TranslationsAccountUserDe {
  TranslationsAccountUserDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Email: {{value}}'
  String email({required Object Value}) => 'Email: ${Value}';

  /// de: 'Vorname: {{value}}'
  String first_name({required Object Value}) => 'Vorname: ${Value}';

  /// de: 'Nachname: {{value}}'
  String last_name({required Object Value}) => 'Nachname: ${Value}';
}

// Path: account.events
class TranslationsAccountEventsDe {
  TranslationsAccountEventsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Wechsel fehlgeschlagen: {{error}}'
  String switch_failed({required Object Error}) => 'Wechsel fehlgeschlagen: ${Error}';

  /// de: '(one) {1 Eintrag übertragen. Lokal-Modus aktiv.} (other) {{count} Einträge übertragen. Lokal-Modus aktiv.}'
  String switched_to_local({required num count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(
        count,
        one: '1 Eintrag übertragen. Lokal-Modus aktiv.',
        other: '{count} Einträge übertragen. Lokal-Modus aktiv.',
      );
}

// Path: backup.external
class TranslationsBackupExternalDe {
  TranslationsBackupExternalDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Noch nie extern gesichert'
  String get never => 'Noch nie extern gesichert';

  /// de: 'Zuletzt extern gesichert: heute'
  String get today => 'Zuletzt extern gesichert: heute';

  /// de: '(one) {Zuletzt extern gesichert: vor 1 Tag} (other) {Zuletzt extern gesichert: vor {count} Tagen}'
  String days_ago({required num count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(
        count,
        one: 'Zuletzt extern gesichert: vor 1 Tag',
        other: 'Zuletzt extern gesichert: vor {count} Tagen',
      );
}

// Path: backup.actions
class TranslationsBackupActionsDe {
  TranslationsBackupActionsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Letztes Backup teilen'
  String get share_latest => 'Letztes Backup teilen';

  /// de: 'Backup jetzt erstellen'
  String get create_now => 'Backup jetzt erstellen';

  /// de: 'Backup erstellen & speichern'
  String get create_and_save => 'Backup erstellen & speichern';

  /// de: 'Backup wiederherstellen'
  String get restore => 'Backup wiederherstellen';

  /// de: 'Alle Backups verwalten…'
  String get manage => 'Alle Backups verwalten…';

  /// de: 'Neu'
  String get kNew => 'Neu';
}

// Path: backup.restore_sheet
class TranslationsBackupRestoreSheetDe {
  TranslationsBackupRestoreSheetDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Backup auswählen'
  String get title => 'Backup auswählen';

  /// de: 'Verfügbare Sicherungen'
  String get available => 'Verfügbare Sicherungen';

  /// de: 'CLOUD'
  String get kind_cloud => 'CLOUD';

  /// de: 'MANUELL'
  String get kind_manual => 'MANUELL';

  /// de: 'Datei vom Gerät wählen'
  String get pick_file_title => 'Datei vom Gerät wählen';

  /// de: '.zip-Backup manuell auswählen'
  String get pick_file_sub => '.zip-Backup manuell auswählen';

  /// de: 'Keine Backups gefunden'
  String get empty => 'Keine Backups gefunden';

  /// de: 'Erst Cloud-Ordner wählen'
  String get choose_folder_first => 'Erst Cloud-Ordner wählen';

  /// de: 'Backup wiederherstellen?'
  String get confirm_title => 'Backup wiederherstellen?';

  /// de: 'Deine aktuellen Daten auf diesem Gerät werden durch diesen Stand ersetzt. Neuere Änderungen als „{{name}}“ gehen verloren.'
  String warning({required Object Name}) =>
      'Deine aktuellen Daten auf diesem Gerät werden durch diesen Stand ersetzt. Neuere Änderungen als „${Name}“ gehen verloren.';

  /// de: 'Ja, ersetzen und wiederherstellen'
  String get confirm_button => 'Ja, ersetzen und wiederherstellen';

  /// de: 'Wird wiederhergestellt …'
  String get restoring => 'Wird wiederhergestellt …';

  /// de: 'Zurück'
  String get back => 'Zurück';
}

// Path: backup.menu
class TranslationsBackupMenuDe {
  TranslationsBackupMenuDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Teilen'
  String get share => 'Teilen';

  /// de: 'Wiederherstellen'
  String get restore => 'Wiederherstellen';

  /// de: 'Löschen'
  String get delete => 'Löschen';
}

// Path: backup.delete_dialog
class TranslationsBackupDeleteDialogDe {
  TranslationsBackupDeleteDialogDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Backup löschen?'
  String get title => 'Backup löschen?';

  /// de: 'Löschen'
  String get confirm => 'Löschen';
}

// Path: backup.restore_dialog
class TranslationsBackupRestoreDialogDe {
  TranslationsBackupRestoreDialogDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Backup wiederherstellen'
  String get title => 'Backup wiederherstellen';

  /// de: 'Aktuelle lokale Daten werden mit dem ausgewählten Backup überschrieben. Fortfahren?'
  String get content_picked => 'Aktuelle lokale Daten werden mit dem ausgewählten Backup überschrieben. Fortfahren?';

  /// de: 'Aktuelle lokale Daten werden mit dem Backup "{{name}}" überschrieben. Fortfahren?'
  String content_named({required Object Name}) => 'Aktuelle lokale Daten werden mit dem Backup\n"${Name}" überschrieben.\n\nFortfahren?';

  /// de: 'Wiederherstellen'
  String get confirm => 'Wiederherstellen';
}

// Path: backup.reminder
class TranslationsBackupReminderDe {
  TranslationsBackupReminderDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Backup sichern'
  String get title => 'Backup sichern';

  /// de: 'Du hast bisher noch kein externes Backup gesichert.'
  String get never => 'Du hast bisher noch kein externes Backup gesichert.';

  /// de: '(one) {Dein letztes externes Backup ist 1 Tag her.} (other) {Dein letztes externes Backup ist {count} Tage her.}'
  String age({required num count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(
        count,
        one: 'Dein letztes externes Backup ist 1 Tag her.',
        other: 'Dein letztes externes Backup ist {count} Tage her.',
      );

  /// de: 'Sichere es jetzt an einem sicheren Ort (iCloud, Drive, Mail), damit deine Daten bei Geräteverlust nicht verloren gehen.'
  String get body => 'Sichere es jetzt an einem sicheren Ort (iCloud, Drive, Mail), damit deine Daten bei Geräteverlust nicht verloren gehen.';

  /// de: 'Später erinnern'
  String get snooze => 'Später erinnern';

  /// de: 'Schon gesichert'
  String get already_saved => 'Schon gesichert';

  /// de: 'Jetzt teilen'
  String get share_now => 'Jetzt teilen';
}

// Path: backup.events
class TranslationsBackupEventsDe {
  TranslationsBackupEventsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Backup erstellt'
  String get created => 'Backup erstellt';

  /// de: 'Backup fehlgeschlagen: {{error}}'
  String create_failed({required Object Error}) => 'Backup fehlgeschlagen: ${Error}';

  /// de: 'Teilen fehlgeschlagen: {{error}}'
  String share_failed({required Object Error}) => 'Teilen fehlgeschlagen: ${Error}';

  /// de: 'Löschen fehlgeschlagen: {{error}}'
  String delete_failed({required Object Error}) => 'Löschen fehlgeschlagen: ${Error}';

  /// de: 'Wiederherstellen fehlgeschlagen: {{error}}'
  String restore_failed({required Object Error}) => 'Wiederherstellen fehlgeschlagen: ${Error}';
}

// Path: backup.cloud
class TranslationsBackupCloudDe {
  TranslationsBackupCloudDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Cloud-Backup'
  String get section_title => 'Cloud-Backup';

  /// de: 'Automatisch in Cloud sichern'
  String get enable => 'Automatisch in Cloud sichern';

  /// de: 'Cloud-Ordner wählen…'
  String get choose_location => 'Cloud-Ordner wählen…';

  /// de: 'Kein Cloud-Ordner gewählt'
  String get location_none => 'Kein Cloud-Ordner gewählt';

  /// de: 'Ziel: {{name}}'
  String location_set({required Object Name}) => 'Ziel: ${Name}';

  /// de: 'Jetzt synchronisieren'
  String get sync_now => 'Jetzt synchronisieren';

  /// de: 'Automatisches Cloud-Backup'
  String get auto_title => 'Automatisches Cloud-Backup';

  /// de: 'Aktiv · sichert deine Daten automatisch'
  String get auto_on => 'Aktiv · sichert deine Daten automatisch';

  /// de: 'Deaktiviert'
  String get auto_off => 'Deaktiviert';

  /// de: 'Cloud-Ordner'
  String get folder_label => 'Cloud-Ordner';

  /// de: 'Ändern'
  String get change => 'Ändern';

  late final TranslationsBackupCloudChooseFolderDialogDe choose_folder_dialog = TranslationsBackupCloudChooseFolderDialogDe.internal(_root);
  late final TranslationsBackupCloudSyncAfterChangeDialogDe sync_after_change_dialog = TranslationsBackupCloudSyncAfterChangeDialogDe.internal(_root);

  /// de: 'Letzte Synchronisierung'
  String get last_sync_label => 'Letzte Synchronisierung';

  /// de: 'Wird synchronisiert …'
  String get syncing => 'Wird synchronisiert …';

  /// de: 'Deine Fotos und Daten werden in die Cloud geladen.'
  String get syncing_hint => 'Deine Fotos und Daten werden in die Cloud geladen.';

  /// de: 'Sync-Einstellungen'
  String get settings => 'Sync-Einstellungen';

  late final TranslationsBackupCloudIntervalDe interval = TranslationsBackupCloudIntervalDe.internal(_root);
  late final TranslationsBackupCloudStatusDe status = TranslationsBackupCloudStatusDe.internal(_root);
  late final TranslationsBackupCloudEventsDe events = TranslationsBackupCloudEventsDe.internal(_root);
}

// Path: colors.stats
class TranslationsColorsStatsDe {
  TranslationsColorsStatsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Vögel'
  String get birds => 'Vögel';

  /// de: 'Hähne'
  String get male_roosters => 'Hähne';

  /// de: 'Hennen'
  String get female_hens => 'Hennen';
}

// Path: cages.section
class TranslationsCagesSectionDe {
  TranslationsCagesSectionDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Grunddaten'
  String get basics => 'Grunddaten';

  /// de: 'Kapazität & Belegung'
  String get capacity => 'Kapazität & Belegung';
}

// Path: cages.field
class TranslationsCagesFieldDe {
  TranslationsCagesFieldDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Typ'
  String get type => 'Typ';

  /// de: 'Standort'
  String get location => 'Standort';

  /// de: 'Maximale Plätze'
  String get max_capacity => 'Maximale Plätze';
}

// Path: cages.units
class TranslationsCagesUnitsDe {
  TranslationsCagesUnitsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Vögel'
  String get birds => 'Vögel';
}

// Path: cages.filters
class TranslationsCagesFiltersDe {
  TranslationsCagesFiltersDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Alle'
  String get all => 'Alle';

  /// de: 'Volieren'
  String get aviaries => 'Volieren';

  /// de: 'Zuchtboxen'
  String get breeding_boxes => 'Zuchtboxen';

  /// de: 'Quarantäne'
  String get quarantine => 'Quarantäne';

  /// de: 'Leere'
  String get empty => 'Leere';
}

// Path: cages.types
class TranslationsCagesTypesDe {
  TranslationsCagesTypesDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Voliere'
  String get aviary => 'Voliere';

  /// de: 'Zuchtbox'
  String get breeding_box => 'Zuchtbox';

  /// de: 'Quarantäne'
  String get quarantine => 'Quarantäne';
}

// Path: species.section
class TranslationsSpeciesSectionDe {
  TranslationsSpeciesSectionDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Identität'
  String get identity => 'Identität';

  /// de: 'Lebenszyklus'
  String get lifecycle => 'Lebenszyklus';

  /// de: 'Icon'
  String get icon => 'Icon';

  /// de: 'Notizen'
  String get notes => 'Notizen';
}

// Path: species.stats
class TranslationsSpeciesStatsDe {
  TranslationsSpeciesStatsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Im Bestand'
  String get stock => 'Im Bestand';

  /// de: 'Hähne'
  String get male_roosters => 'Hähne';

  /// de: 'Hennen'
  String get female_hens => 'Hennen';
}

// Path: contacts.fields
class TranslationsContactsFieldsDe {
  TranslationsContactsFieldsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Vorname'
  String get first_name => 'Vorname';

  /// de: 'Nachname'
  String get last_name => 'Nachname';

  late final TranslationsContactsFieldsTitleDe title = TranslationsContactsFieldsTitleDe.internal(_root);
  late final TranslationsContactsFieldsAppUserDe app_user = TranslationsContactsFieldsAppUserDe.internal(_root);

  /// de: 'E-Mail'
  String get email => 'E-Mail';

  /// de: 'Züchternummer'
  String get number => 'Züchternummer';

  /// de: 'Telefonnummer'
  String get phone => 'Telefonnummer';

  /// de: 'Mobilnummer'
  String get cell_phone_number => 'Mobilnummer';

  /// de: 'Adresse'
  String get address => 'Adresse';

  /// de: 'Stadt'
  String get city => 'Stadt';

  /// de: 'Land'
  String get country => 'Land';

  /// de: 'Postleitzahl'
  String get postal => 'Postleitzahl';

  /// de: 'Webseite'
  String get website => 'Webseite';
}

// Path: contacts.sections
class TranslationsContactsSectionsDe {
  TranslationsContactsSectionsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Persönliche Informationen'
  String get personal => 'Persönliche Informationen';

  /// de: 'App-Benutzer'
  String get app_user => 'App-Benutzer';

  /// de: 'Züchterinformationen'
  String get breeder => 'Züchterinformationen';

  /// de: 'Kontaktinformationen'
  String get contact => 'Kontaktinformationen';

  /// de: 'Adresse'
  String get address => 'Adresse';

  /// de: 'Metadaten'
  String get meta => 'Metadaten';
}

// Path: contacts.action_button
class TranslationsContactsActionButtonDe {
  TranslationsContactsActionButtonDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Webseite öffnen'
  String get open_website_tooltipp => 'Webseite öffnen';

  /// de: 'E-Mail schreiben'
  String get send_email_tooltipp => 'E-Mail schreiben';

  /// de: 'Anrufen'
  String get call_tooltipp => 'Anrufen';
}

// Path: contacts.overview
class TranslationsContactsOverviewDe {
  TranslationsContactsOverviewDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Kontakte'
  String get total_label => 'Kontakte';

  /// de: '{{count}} gekauft'
  String bought_chip({required Object Count}) => '${Count} gekauft';

  /// de: '{{count}} verkauft'
  String sold_chip({required Object Count}) => '${Count} verkauft';

  /// de: 'Alle Kontakte'
  String get all_contacts => 'Alle Kontakte';

  /// de: 'Name, Ort suchen …'
  String get search_hint => 'Name, Ort suchen …';

  /// de: 'Verkauft {{ring}}'
  String activity_sold({required Object Ring}) => 'Verkauft ${Ring}';

  /// de: 'Gekauft {{ring}}'
  String activity_bought({required Object Ring}) => 'Gekauft ${Ring}';
}

// Path: contacts.card
class TranslationsContactsCardDe {
  TranslationsContactsCardDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Anrufen'
  String get call => 'Anrufen';

  /// de: 'E-Mail'
  String get email => 'E-Mail';

  /// de: 'Details'
  String get details => 'Details';
}

// Path: contacts.detail
class TranslationsContactsDetailDe {
  TranslationsContactsDetailDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Kontakt'
  String get title => 'Kontakt';

  /// de: 'Gekauft'
  String get bought => 'Gekauft';

  /// de: 'Verkauft'
  String get sold => 'Verkauft';

  /// de: 'Saldo'
  String get balance => 'Saldo';

  /// de: 'Kontaktdaten'
  String get contact_data => 'Kontaktdaten';

  /// de: 'Keine Kontaktdaten hinterlegt'
  String get no_contact_data => 'Keine Kontaktdaten hinterlegt';

  /// de: 'Verknüpfte Vögel'
  String get linked_birds => 'Verknüpfte Vögel';

  /// de: 'VERKAUFT'
  String get role_sold => 'VERKAUFT';

  /// de: 'GEKAUFT'
  String get role_bought => 'GEKAUFT';

  /// de: 'Standort'
  String get location => 'Standort';

  /// de: 'Bearbeiten'
  String get edit => 'Bearbeiten';
}

// Path: breeding_pairs.status
class TranslationsBreedingPairsStatusDe {
  TranslationsBreedingPairsStatusDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Status'
  String get name => 'Status';

  /// de: 'Aktiv'
  String get active => 'Aktiv';

  /// de: 'Pausiert'
  String get paused => 'Pausiert';

  /// de: 'Beendet'
  String get finished => 'Beendet';
}

// Path: breeding_pairs.year_filter
class TranslationsBreedingPairsYearFilterDe {
  TranslationsBreedingPairsYearFilterDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'JAHR'
  String get label => 'JAHR';

  /// de: 'Alle'
  String get all => 'Alle';
}

// Path: breeding_pairs.filter
class TranslationsBreedingPairsFilterDe {
  TranslationsBreedingPairsFilterDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: '{{count}} Zuchtpaare anzeigen'
  String show_results({required Object Count}) => '${Count} Zuchtpaare anzeigen';
}

// Path: breeding_pairs.brood_status
class TranslationsBreedingPairsBroodStatusDe {
  TranslationsBreedingPairsBroodStatusDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'aktiv'
  String get active => 'aktiv';

  /// de: 'pausiert'
  String get inactive => 'pausiert';

  /// de: 'beendet'
  String get completed => 'beendet';
}

// Path: breeding_pairs.sort_by
class TranslationsBreedingPairsSortByDe {
  TranslationsBreedingPairsSortByDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Voliere'
  String get cage => 'Voliere';

  /// de: 'Zuletzt geändert'
  String get updated => 'Zuletzt geändert';

  /// de: 'Erstellt'
  String get created => 'Erstellt';
}

// Path: breeding_pairs.stats
class TranslationsBreedingPairsStatsDe {
  TranslationsBreedingPairsStatsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsBreedingPairsStatsAbbrDe abbr = TranslationsBreedingPairsStatsAbbrDe.internal(_root);
  late final TranslationsBreedingPairsStatsLabelDe label = TranslationsBreedingPairsStatsLabelDe.internal(_root);
  late final TranslationsBreedingPairsStatsLegendDe legend = TranslationsBreedingPairsStatsLegendDe.internal(_root);
}

// Path: resources.section
class TranslationsResourcesSectionDe {
  TranslationsResourcesSectionDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Identität'
  String get identity => 'Identität';

  /// de: 'Grunddaten'
  String get basics => 'Grunddaten';

  /// de: 'Lebenszyklus'
  String get lifecycle => 'Lebenszyklus';

  /// de: 'Icon'
  String get icon => 'Icon';

  /// de: 'Notizen'
  String get notes => 'Notizen';

  /// de: 'Farbe'
  String get color => 'Farbe';
}

// Path: resources.actions
class TranslationsResourcesActionsDe {
  TranslationsResourcesActionsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Bearbeiten'
  String get edit => 'Bearbeiten';
}

// Path: resources.color_picker
class TranslationsResourcesColorPickerDe {
  TranslationsResourcesColorPickerDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Farbe wählen'
  String get title => 'Farbe wählen';
}

// Path: resources.field
class TranslationsResourcesFieldDe {
  TranslationsResourcesFieldDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Name'
  String get name => 'Name';

  /// de: 'Pflichtfeld'
  String get required => 'Pflichtfeld';
}

// Path: resources.delete
class TranslationsResourcesDeleteDe {
  TranslationsResourcesDeleteDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: '{{usage}} Verknüpfungen werden gelöst. Sicher fortfahren?'
  String with_usage({required Object Usage}) => '${Usage} Verknüpfungen werden gelöst. Sicher fortfahren?';
}

// Path: resources.sort
class TranslationsResourcesSortDe {
  TranslationsResourcesSortDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Sortieren'
  String get label => 'Sortieren';

  late final TranslationsResourcesSortByDe by = TranslationsResourcesSortByDe.internal(_root);

  /// de: 'Aufsteigend'
  String get asc => 'Aufsteigend';

  /// de: 'Absteigend'
  String get desc => 'Absteigend';
}

// Path: birds.overview
class TranslationsBirdsOverviewDe {
  TranslationsBirdsOverviewDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: '{{birds}} Vögel · {{cages}} Käfige'
  String subtitle({required Object Birds, required Object Cages}) => '${Birds} Vögel · ${Cages} Käfige';

  /// de: '{{count}} Verkauf'
  String for_sale({required Object Count}) => '${Count} Verkauf';

  /// de: 'Gruppieren: Käfig'
  String get group_by_cage => 'Gruppieren: Käfig';

  /// de: 'Ohne Käfig'
  String get no_cage => 'Ohne Käfig';

  /// de: 'Vögel'
  String get birds_label => 'Vögel';

  /// de: 'Verkauf'
  String get sale_badge => 'Verkauf';

  /// de: 'Keine Vögel gefunden'
  String get empty => 'Keine Vögel gefunden';

  /// de: 'Nach Voliere gruppieren'
  String get view_grouped => 'Nach Voliere gruppieren';

  /// de: 'Als Liste anzeigen'
  String get view_list => 'Als Liste anzeigen';
}

// Path: birds.filter
class TranslationsBirdsFilterDe {
  TranslationsBirdsFilterDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: '{{count}} Vögel anzeigen'
  String show_results({required Object Count}) => '${Count} Vögel anzeigen';

  /// de: 'Sortieren'
  String get sort_title => 'Sortieren';

  /// de: 'Weitere'
  String get more_title => 'Weitere';

  /// de: 'Verstorbene anzeigen'
  String get show_deceased => 'Verstorbene anzeigen';
}

// Path: pedigree.stats
class TranslationsPedigreeStatsDe {
  TranslationsPedigreeStatsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Generationen'
  String get generations => 'Generationen';

  /// de: 'Vorfahren'
  String get ancestors => 'Vorfahren';

  /// de: 'Nachkommen'
  String get descendants => 'Nachkommen';

  /// de: 'Inzucht'
  String get inbreeding => 'Inzucht';

  /// de: 'Keine Inzucht'
  String get no_inbreeding => 'Keine Inzucht';
}

// Path: bird.tabs
class TranslationsBirdTabsDe {
  TranslationsBirdTabsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Allgemein'
  String get general => 'Allgemein';

  /// de: 'Zustand'
  String get state_and_life => 'Zustand';

  /// de: 'Zucht'
  String get breeding => 'Zucht';

  /// de: 'Finanzen'
  String get purchase_and_sale => 'Finanzen';
}

// Path: bird.summary
class TranslationsBirdSummaryDe {
  TranslationsBirdSummaryDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Geschlecht'
  String get sex => 'Geschlecht';

  /// de: 'Alter'
  String get age => 'Alter';

  /// de: 'Käfig'
  String get cage => 'Käfig';

  /// de: 'Nachkommen'
  String get offspring => 'Nachkommen';

  /// de: '—'
  String get unknown => '—';
}

// Path: bird.sections
class TranslationsBirdSectionsDe {
  TranslationsBirdSectionsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsBirdSectionsIdentificationDe identification = TranslationsBirdSectionsIdentificationDe.internal(_root);
  late final TranslationsBirdSectionsKeepingDe keeping = TranslationsBirdSectionsKeepingDe.internal(_root);
  late final TranslationsBirdSectionsStatusDe status = TranslationsBirdSectionsStatusDe.internal(_root);
  late final TranslationsBirdSectionsSaleDe sale = TranslationsBirdSectionsSaleDe.internal(_root);
  late final TranslationsBirdSectionsPurchaseDe purchase = TranslationsBirdSectionsPurchaseDe.internal(_root);
  late final TranslationsBirdSectionsHealthDe health = TranslationsBirdSectionsHealthDe.internal(_root);
  late final TranslationsBirdSectionsLifeDe life = TranslationsBirdSectionsLifeDe.internal(_root);
  late final TranslationsBirdSectionsNotesDe notes = TranslationsBirdSectionsNotesDe.internal(_root);
  late final TranslationsBirdSectionsPhotosDe photos = TranslationsBirdSectionsPhotosDe.internal(_root);
  late final TranslationsBirdSectionsParentDe parent = TranslationsBirdSectionsParentDe.internal(_root);
  late final TranslationsBirdSectionsBreederDe breeder = TranslationsBirdSectionsBreederDe.internal(_root);
  late final TranslationsBirdSectionsChildrenDe children = TranslationsBirdSectionsChildrenDe.internal(_root);
}

// Path: pair_detail.kpi
class TranslationsPairDetailKpiDe {
  TranslationsPairDetailKpiDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Bruten'
  String get broods => 'Bruten';

  /// de: 'Eier'
  String get eggs => 'Eier';

  /// de: 'Geschlüpft'
  String get hatched => 'Geschlüpft';

  /// de: 'Ausgefl.'
  String get fledged => 'Ausgefl.';
}

// Path: brood.kpi
class TranslationsBroodKpiDe {
  TranslationsBroodKpiDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Eier'
  String get eggs => 'Eier';

  /// de: 'Geschlüpft'
  String get hatched => 'Geschlüpft';

  /// de: 'Ausgeflogen'
  String get fledged => 'Ausgeflogen';
}

// Path: egg.status
class TranslationsEggStatusDe {
  TranslationsEggStatusDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Gelegt'
  String get laid => 'Gelegt';

  /// de: 'Befruchtet'
  String get fertilized => 'Befruchtet';

  /// de: 'Unbefruchtet'
  String get unfertilized => 'Unbefruchtet';

  /// de: 'Geschlüpft'
  String get hatched => 'Geschlüpft';

  /// de: 'Gestorben'
  String get dead => 'Gestorben';

  /// de: 'Ausgeflogen'
  String get fledged => 'Ausgeflogen';

  /// de: 'Im Bestand'
  String get in_stock => 'Im Bestand';

  /// de: 'Unbekannt'
  String get unknown => 'Unbekannt';
}

// Path: egg.action
class TranslationsEggActionDe {
  TranslationsEggActionDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Neue Ringnummer eintragen'
  String get set_ringnumber => 'Neue Ringnummer eintragen';
}

// Path: egg.lifecycle
class TranslationsEggLifecycleDe {
  TranslationsEggLifecycleDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Ei {{number}}'
  String title({required Object Number}) => 'Ei ${Number}';

  /// de: 'Lebenszyklus'
  String get section_cycle => 'Lebenszyklus';

  /// de: 'Details'
  String get section_details => 'Details';

  /// de: 'Datum setzen'
  String get set_date => 'Datum setzen';

  /// de: 'Ei löschen?'
  String get confirm_delete => 'Ei löschen?';
}

// Path: common.bottom_sheet
class TranslationsCommonBottomSheetDe {
  TranslationsCommonBottomSheetDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Die Suche nach {{text}} hat leider nichts ergeben.'
  String search_empty_builder_text({required Object Text}) => 'Die Suche nach ${Text} hat leider nichts ergeben.';
}

// Path: common.sale_status
class TranslationsCommonSaleStatusDe {
  TranslationsCommonSaleStatusDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Kauf/Verkaufsstatus'
  String get name => 'Kauf/Verkaufsstatus';

  /// de: 'Nicht zum Verkauf'
  String get not_for_sale => 'Nicht zum Verkauf';

  /// de: 'Zum Verkauf angeboten'
  String get listed => 'Zum Verkauf angeboten';

  /// de: 'Reserviert'
  String get reserved => 'Reserviert';

  /// de: 'Verkauft'
  String get sold => 'Verkauft';
}

// Path: common.sex
class TranslationsCommonSexDe {
  TranslationsCommonSexDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Geschlecht'
  String get name => 'Geschlecht';

  /// de: 'Hahn'
  String get male => 'Hahn';

  /// de: 'Henne'
  String get female => 'Henne';

  /// de: 'Unbekannt'
  String get unknown => 'Unbekannt';
}

// Path: common.sell
class TranslationsCommonSellDe {
  TranslationsCommonSellDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Verkaufsjahr'
  String get year => 'Verkaufsjahr';

  /// de: 'Vogel verkaufen'
  String get bird => 'Vogel verkaufen';

  late final TranslationsCommonSellPriceDe price = TranslationsCommonSellPriceDe.internal(_root);
}

// Path: common.bought
class TranslationsCommonBoughtDe {
  TranslationsCommonBoughtDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Kaufjahr'
  String get year => 'Kaufjahr';

  /// de: 'Gekauft von'
  String get from => 'Gekauft von';

  /// de: 'Gekauft am'
  String get at => 'Gekauft am';

  /// de: 'Kaufpreis'
  String get price => 'Kaufpreis';
}

// Path: common.sorting
class TranslationsCommonSortingDe {
  TranslationsCommonSortingDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Sortierung'
  String get name => 'Sortierung';

  /// de: 'Zuletzt aktualisiert'
  String get updated => 'Zuletzt aktualisiert';

  /// de: 'Alter'
  String get age => 'Alter';

  /// de: 'Ringnummer'
  String get ringnumber => 'Ringnummer';
}

// Path: common.sold
class TranslationsCommonSoldDe {
  TranslationsCommonSoldDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Verkauft an'
  String get to => 'Verkauft an';

  /// de: 'Verkauft am'
  String get at => 'Verkauft am';
}

// Path: common.unit
class TranslationsCommonUnitDe {
  TranslationsCommonUnitDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'm'
  String get m => 'm';

  /// de: 'cm'
  String get cm => 'cm';
}

// Path: common.hint
class TranslationsCommonHintDe {
  TranslationsCommonHintDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Auswählen'
  String get select => 'Auswählen';

  /// de: 'Eingabe'
  String get text => 'Eingabe';
}

// Path: auth.validators
class TranslationsAuthValidatorsDe {
  TranslationsAuthValidatorsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Bitte geben Sie eine gültige E-Mail-Adresse ein'
  String get email => 'Bitte geben Sie eine gültige E-Mail-Adresse ein';

  /// de: 'Bitte geben Sie eine gültige E-Mail-Adresse ein'
  String get email_format => 'Bitte geben Sie eine gültige E-Mail-Adresse ein';

  /// de: 'Bitte geben Sie ein Passwort ein'
  String get password => 'Bitte geben Sie ein Passwort ein';

  /// de: 'Das Passwort muss mindestens 6 Zeichen lang sein'
  String get password_length => 'Das Passwort muss mindestens 6 Zeichen lang sein';

  /// de: 'Bitte geben Sie Ihren Vornamen ein'
  String get first_name => 'Bitte geben Sie Ihren Vornamen ein';

  /// de: 'Der Vorname muss mindestens 3 Zeichen lang sein'
  String get first_name_length => 'Der Vorname muss mindestens 3 Zeichen lang sein';

  /// de: 'Bitte geben Sie Ihren Nachnamen ein'
  String get last_name => 'Bitte geben Sie Ihren Nachnamen ein';
}

// Path: csv_import.birds
class TranslationsCsvImportBirdsDe {
  TranslationsCsvImportBirdsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Vögel'
  String get title => 'Vögel';

  /// de: 'Importiere Vögel mit Art, Farbe und Voliere'
  String get description => 'Importiere Vögel mit Art,\nFarbe und Voliere';

  /// de: 'Vögel aus CSV importieren'
  String get import_title => 'Vögel aus CSV importieren';

  /// de: 'Wähle eine CSV-Datei mit deinen Vogeldaten aus. Arten, Farben und Volieren werden automatisch erstellt, wenn sie noch nicht existieren. Als Trennzeichen in der CSV-Datei werden Semikolon (;) erwartet. Das Datumsformat sollte entweder yyyy-MM-dd, dd.MM.yyyy oder dd/MM/yyyy sein.'
  String get import_description =>
      'Wähle eine CSV-Datei mit deinen Vogeldaten aus.\nArten, Farben und Volieren werden automatisch erstellt, wenn sie noch nicht existieren. Als Trennzeichen in der CSV-Datei werden Semikolon (;) erwartet. Das Datumsformat sollte entweder yyyy-MM-dd, dd.MM.yyyy oder dd/MM/yyyy sein.';

  /// de: '{{count}} Vögel importieren'
  String import_button({required Object Count}) => '${Count} Vögel importieren';

  /// de: 'Vögel'
  String get item_name => 'Vögel';
}

// Path: csv_import.contacts
class TranslationsCsvImportContactsDe {
  TranslationsCsvImportContactsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Kontakte'
  String get title => 'Kontakte';

  /// de: 'Importiere Kontaktdaten wie Züchter oder Käufer'
  String get description => 'Importiere Kontaktdaten\nwie Züchter oder Käufer';

  /// de: 'Kontakte aus CSV importieren'
  String get import_title => 'Kontakte aus CSV importieren';

  /// de: 'Wähle eine CSV-Datei mit deinen Kontaktdaten aus. Als Trennzeichen in der CSV-Datei werden Semikolon (;) erwartet.'
  String get import_description =>
      'Wähle eine CSV-Datei mit deinen Kontaktdaten aus. Als Trennzeichen in der CSV-Datei werden Semikolon (;) erwartet.';

  /// de: '{{count}} Kontakte importieren'
  String import_button({required Object Count}) => '${Count} Kontakte importieren';

  /// de: 'Kontakte'
  String get item_name => 'Kontakte';
}

// Path: csv_import.columns
class TranslationsCsvImportColumnsDe {
  TranslationsCsvImportColumnsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Unterstützte Spalten:'
  String get title => 'Unterstützte Spalten:';

  /// de: 'Datumsformate: yyyy-MM-dd, dd.MM.yyyy, dd/MM/yyyy'
  String get date_formats => 'Datumsformate: yyyy-MM-dd, dd.MM.yyyy, dd/MM/yyyy';

  /// de: '• ringnumber / ring / ringnummer - Ringnummer (Pflicht) • species / art / vogelart - Vogelart • color / farbe / colour - Farbe • cage / voliere / käfig - Voliere • sex / geschlecht - Geschlecht (male/female/männlich/weiblich) • born_at / geboren / geburtsdatum - Geburtsdatum • father / vater - Vater Ringnummer • mother / mutter - Mutter Ringnummer • notes / notizen / bemerkungen - Notizen'
  String get bird_columns =>
      '• ringnumber / ring / ringnummer - Ringnummer (Pflicht)\n• species / art / vogelart - Vogelart\n• color / farbe / colour - Farbe\n• cage / voliere / käfig - Voliere\n• sex / geschlecht - Geschlecht (male/female/männlich/weiblich)\n• born_at / geboren / geburtsdatum - Geburtsdatum\n• father / vater - Vater Ringnummer\n• mother / mutter - Mutter Ringnummer\n• notes / notizen / bemerkungen - Notizen';

  /// de: '• firstname / vorname - Vorname • name / nachname / lastname - Nachname (mindestens Vor- oder Nachname erforderlich) • number / nummer / kundennummer - Kontaktnummer • phone / telefon / mobil - Telefonnummer • email / e-mail / mail - E-Mail Adresse • address / adresse / strasse - Straße • city / stadt / ort - Stadt • postalcode / plz / zip - Postleitzahl • country / land - Land • website / homepage / url - Webseite'
  String get contact_columns =>
      '• firstname / vorname - Vorname\n• name / nachname / lastname - Nachname (mindestens Vor- oder Nachname erforderlich)\n• number / nummer / kundennummer - Kontaktnummer\n• phone / telefon / mobil - Telefonnummer\n• email / e-mail / mail - E-Mail Adresse\n• address / adresse / strasse - Straße\n• city / stadt / ort - Stadt\n• postalcode / plz / zip - Postleitzahl\n• country / land - Land\n• website / homepage / url - Webseite';
}

// Path: csv_import.preview
class TranslationsCsvImportPreviewDe {
  TranslationsCsvImportPreviewDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: '{{count}} gültig'
  String valid({required Object Count}) => '${Count} gültig';

  /// de: '{{count}} ungültig'
  String invalid({required Object Count}) => '${Count} ungültig';
}

// Path: csv_import.table
class TranslationsCsvImportTableDe {
  TranslationsCsvImportTableDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: '#'
  String get row => '#';

  /// de: 'Ringnummer'
  String get ring_number => 'Ringnummer';

  /// de: 'Art'
  String get species => 'Art';

  /// de: 'Farbe'
  String get color => 'Farbe';

  /// de: 'Voliere'
  String get cage => 'Voliere';

  /// de: 'Geschlecht'
  String get sex => 'Geschlecht';

  /// de: 'Geb.datum'
  String get birth_date => 'Geb.datum';

  /// de: 'Verstorben'
  String get death_date => 'Verstorben';

  /// de: 'Vater'
  String get father => 'Vater';

  /// de: 'Mutter'
  String get mother => 'Mutter';

  /// de: 'Züchter'
  String get breeder => 'Züchter';

  /// de: 'Besitzer'
  String get owner => 'Besitzer';

  /// de: 'Status'
  String get status => 'Status';

  /// de: 'Nummer'
  String get number => 'Nummer';

  /// de: 'Vorname'
  String get first_name => 'Vorname';

  /// de: 'Nachname'
  String get last_name => 'Nachname';

  /// de: 'Telefon'
  String get phone => 'Telefon';

  /// de: 'Mobil'
  String get cell_phone => 'Mobil';

  /// de: 'E-Mail'
  String get email => 'E-Mail';

  /// de: 'Stadt'
  String get city => 'Stadt';
}

// Path: csv_import.status
class TranslationsCsvImportStatusDe {
  TranslationsCsvImportStatusDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Fehler'
  String get error => 'Fehler';

  /// de: 'Ringnummer fehlt'
  String get missing_ring_number => 'Ringnummer fehlt';

  /// de: 'Name fehlt'
  String get missing_name => 'Name fehlt';

  /// de: 'Keine Ringnummer'
  String get no_ring_number => 'Keine Ringnummer';
}

// Path: csv_import.summary
class TranslationsCsvImportSummaryDe {
  TranslationsCsvImportSummaryDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Erfolgreich importiert'
  String get successful => 'Erfolgreich importiert';

  /// de: 'Fehlgeschlagen'
  String get failed => 'Fehlgeschlagen';

  /// de: 'Übersprungen (Duplikate)'
  String get skipped_duplicates => 'Übersprungen (Duplikate)';

  /// de: 'Übersprungen (ungültig)'
  String get skipped_invalid => 'Übersprungen (ungültig)';

  /// de: 'Neue Arten erstellt'
  String get species_created => 'Neue Arten erstellt';

  /// de: 'Neue Farben erstellt'
  String get colors_created => 'Neue Farben erstellt';

  /// de: 'Neue Volieren erstellt'
  String get cages_created => 'Neue Volieren erstellt';

  /// de: 'Fehlgeschlagene Importe'
  String get failed_imports => 'Fehlgeschlagene Importe';

  /// de: 'Übersprungene Einträge (Duplikate)'
  String get skipped_entries => 'Übersprungene Einträge (Duplikate)';
}

// Path: csv_import.errors
class TranslationsCsvImportErrorsDe {
  TranslationsCsvImportErrorsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Bitte wähle eine CSV-Datei aus'
  String get select_csv_file => 'Bitte wähle eine CSV-Datei aus';

  /// de: 'Die ausgewählte Datei ist keine CSV-Datei.'
  String get not_csv_file => 'Die ausgewählte Datei ist keine CSV-Datei.';

  /// de: 'Datei konnte nicht gelesen werden'
  String get could_not_read_file => 'Datei konnte nicht gelesen werden';

  /// de: 'Fehler beim Lesen der Datei'
  String get error_reading_file => 'Fehler beim Lesen der Datei';

  /// de: 'Ringnummer bereits vorhanden'
  String get ring_number_exists => 'Ringnummer bereits vorhanden';

  /// de: 'Vogel konnte nicht erstellt werden'
  String get could_not_create_bird => 'Vogel konnte nicht erstellt werden';

  /// de: 'Kontaktnummer "{{number}}" existiert bereits'
  String contact_number_exists({required Object Number}) => 'Kontaktnummer "${Number}" existiert bereits';

  /// de: 'Kontakt konnte nicht erstellt werden'
  String get could_not_create_contact => 'Kontakt konnte nicht erstellt werden';
}

// Path: menu.sections
class TranslationsMenuSectionsDe {
  TranslationsMenuSectionsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Hauptbereiche'
  String get main => 'Hauptbereiche';

  /// de: 'Stammdaten'
  String get data => 'Stammdaten';

  /// de: 'Einstellungen'
  String get settings => 'Einstellungen';
}

// Path: menu.birds
class TranslationsMenuBirdsDe {
  TranslationsMenuBirdsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Vögel'
  String get title => 'Vögel';

  /// de: 'Verwalte deine Vögel'
  String get description => 'Verwalte deine Vögel';
}

// Path: menu.contacts
class TranslationsMenuContactsDe {
  TranslationsMenuContactsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Kontakte'
  String get title => 'Kontakte';

  /// de: 'Verwalte deine Kontakte'
  String get description => 'Verwalte deine Kontakte';
}

// Path: menu.breedings
class TranslationsMenuBreedingsDe {
  TranslationsMenuBreedingsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Züchtungen'
  String get title => 'Züchtungen';

  /// de: 'Aktive & vergangene Zuchtpaare'
  String get description => 'Aktive & vergangene Zuchtpaare';
}

// Path: menu.resources
class TranslationsMenuResourcesDe {
  TranslationsMenuResourcesDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Ressourcen'
  String get title => 'Ressourcen';

  /// de: 'Farben, Arten, Volieren'
  String get description => 'Farben, Arten, Volieren';
}

// Path: menu.finances
class TranslationsMenuFinancesDe {
  TranslationsMenuFinancesDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Finanzen'
  String get title => 'Finanzen';

  /// de: 'Kassenbuch'
  String get description => 'Kassenbuch';
}

// Path: menu.csv_import
class TranslationsMenuCsvImportDe {
  TranslationsMenuCsvImportDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'CSV Import'
  String get title => 'CSV Import';

  /// de: 'Importiere Daten aus CSV'
  String get description => 'Importiere Daten aus CSV';
}

// Path: menu.account
class TranslationsMenuAccountDe {
  TranslationsMenuAccountDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Konto'
  String get title => 'Konto';

  /// de: 'Dein Konto'
  String get description => 'Dein Konto';
}

// Path: menu.species
class TranslationsMenuSpeciesDe {
  TranslationsMenuSpeciesDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Arten'
  String get title => 'Arten';

  /// de: 'Vogelarten verwalten'
  String get description => 'Vogelarten verwalten';
}

// Path: menu.cages
class TranslationsMenuCagesDe {
  TranslationsMenuCagesDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Volieren'
  String get title => 'Volieren';

  /// de: 'Volieren & Käfige'
  String get description => 'Volieren & Käfige';
}

// Path: menu.colors
class TranslationsMenuColorsDe {
  TranslationsMenuColorsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Farben'
  String get title => 'Farben';

  /// de: 'Farbschläge'
  String get description => 'Farbschläge';
}

// Path: menu.finance_categories
class TranslationsMenuFinanceCategoriesDe {
  TranslationsMenuFinanceCategoriesDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Finanzkategorien'
  String get title => 'Finanzkategorien';

  /// de: 'Einnahme- und Ausgabe-Kategorien'
  String get description => 'Einnahme- und Ausgabe-Kategorien';
}

// Path: dialog.discard_changes
class TranslationsDialogDiscardChangesDe {
  TranslationsDialogDiscardChangesDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Änderungen verwerfen?'
  String get title => 'Änderungen verwerfen?';

  /// de: 'Deine Änderungen werden verworfen, bist du sicher?'
  String get content => 'Deine Änderungen werden verworfen, bist du sicher?';
}

// Path: dialog.delete_entry
class TranslationsDialogDeleteEntryDe {
  TranslationsDialogDeleteEntryDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Möchten Sie diesen Eintrag wirklich löschen?'
  String get content => 'Möchten Sie diesen Eintrag wirklich löschen?';
}

// Path: export.events
class TranslationsExportEventsDe {
  TranslationsExportEventsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: '"{{fileName}}" erstellt.'
  String succeeded({required Object FileName}) => '"${FileName}" erstellt.';

  /// de: 'Export fehlgeschlagen: {{error}}'
  String failed({required Object Error}) => 'Export fehlgeschlagen: ${Error}';
}

// Path: export.format
class TranslationsExportFormatDe {
  TranslationsExportFormatDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Format'
  String get title => 'Format';

  late final TranslationsExportFormatCsvDe csv = TranslationsExportFormatCsvDe.internal(_root);
  late final TranslationsExportFormatPdfDe pdf = TranslationsExportFormatPdfDe.internal(_root);
}

// Path: export.preset
class TranslationsExportPresetDe {
  TranslationsExportPresetDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Umfang'
  String get title => 'Umfang';
}

// Path: export.pdf
class TranslationsExportPdfDe {
  TranslationsExportPdfDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Seite {{page}} von {{total}}'
  String page({required Object Page, required Object Total}) => 'Seite ${Page} von ${Total}';
}

// Path: export.header
class TranslationsExportHeaderDe {
  TranslationsExportHeaderDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'PDF-Briefkopf'
  String get title => 'PDF-Briefkopf';

  /// de: 'Kopfzeile für exportierte PDFs'
  String get subtitle => 'Kopfzeile für exportierte PDFs';

  /// de: 'Noch kein Briefkopf angelegt. Ohne Profil nutzt der Export den Namen der Liste und deine Profildaten.'
  String get list_empty => 'Noch kein Briefkopf angelegt. Ohne Profil nutzt der Export den Namen der Liste und deine Profildaten.';

  /// de: 'Briefkopf anlegen'
  String get add => 'Briefkopf anlegen';

  /// de: 'Neuer Briefkopf'
  String get new_name => 'Neuer Briefkopf';

  /// de: 'Ohne Briefkopf'
  String get none => 'Ohne Briefkopf';

  /// de: 'Standard'
  String get default_badge => 'Standard';

  /// de: 'Als Standard verwenden'
  String get set_default => 'Als Standard verwenden';

  /// de: 'Briefkopf löschen?'
  String get delete_title => 'Briefkopf löschen?';

  /// de: '"{{name}}" wird dauerhaft gelöscht.'
  String delete_content({required Object Name}) => '"${Name}" wird dauerhaft gelöscht.';

  /// de: 'Briefkopf gelöscht.'
  String get deleted => 'Briefkopf gelöscht.';

  /// de: 'Briefkopf gespeichert.'
  String get saved => 'Briefkopf gespeichert.';

  /// de: 'Name des Profils'
  String get name_label => 'Name des Profils';

  /// de: 'z. B. Verein oder Verkauf'
  String get name_hint => 'z. B. Verein oder Verkauf';

  /// de: 'Anordnung'
  String get section_layout => 'Anordnung';

  /// de: 'Logo'
  String get section_logo => 'Logo';

  /// de: 'Texte'
  String get section_text => 'Texte';

  /// de: 'Angaben'
  String get section_meta => 'Angaben';

  /// de: 'Fußzeile'
  String get section_footer => 'Fußzeile';

  late final TranslationsExportHeaderLayoutDe layout = TranslationsExportHeaderLayoutDe.internal(_root);
  late final TranslationsExportHeaderLogoSizeDe logo_size = TranslationsExportHeaderLogoSizeDe.internal(_root);

  /// de: 'Logo wählen'
  String get logo_pick => 'Logo wählen';

  /// de: 'Logo ersetzen'
  String get logo_replace => 'Logo ersetzen';

  /// de: 'Logo entfernen'
  String get logo_remove => 'Logo entfernen';

  /// de: 'Titelzeile'
  String get title_label => 'Titelzeile';

  /// de: 'Unterzeile'
  String get subtitle_label => 'Unterzeile';

  /// de: 'Fußzeilentext'
  String get footer_label => 'Fußzeilentext';

  /// de: 'Adressblock anzeigen'
  String get address_show => 'Adressblock anzeigen';

  /// de: 'Eigener Adressblock'
  String get address_override_label => 'Eigener Adressblock';

  /// de: 'Leer lassen, um die Adresse aus deinem Profil zu nutzen'
  String get address_override_hint => 'Leer lassen, um die Adresse aus deinem Profil zu nutzen';

  /// de: 'Aus Profil übernehmen'
  String get address_from_profile => 'Aus Profil übernehmen';

  /// de: 'Datum anzeigen'
  String get show_date => 'Datum anzeigen';

  /// de: 'Anzahl anzeigen'
  String get show_count => 'Anzahl anzeigen';

  /// de: 'Aktive Filter anzeigen'
  String get show_filter => 'Aktive Filter anzeigen';

  /// de: 'Züchternummer anzeigen'
  String get show_breeder_number => 'Züchternummer anzeigen';

  /// de: 'Trennlinie anzeigen'
  String get show_divider => 'Trennlinie anzeigen';

  /// de: 'Seitenzahlen anzeigen'
  String get show_page_numbers => 'Seitenzahlen anzeigen';

  /// de: 'Platzhalter antippen zum Einfügen'
  String get placeholders_hint => 'Platzhalter antippen zum Einfügen';

  /// de: 'Vorschau'
  String get preview_title => 'Vorschau';

  /// de: 'Bestandsliste'
  String get preview_list => 'Bestandsliste';

  /// de: 'Art: Wellensittich'
  String get preview_filter => 'Art: Wellensittich';
}

// Path: export.summary
class TranslationsExportSummaryDe {
  TranslationsExportSummaryDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Vögel'
  String get birds => 'Vögel';

  /// de: 'Paare'
  String get pairs => 'Paare';

  /// de: 'Schlupfquote'
  String get hatch_rate => 'Schlupfquote';

  /// de: 'Einnahmen'
  String get income => 'Einnahmen';

  /// de: 'Ausgaben'
  String get expense => 'Ausgaben';

  /// de: 'Saldo'
  String get net => 'Saldo';
}

// Path: export.lists
class TranslationsExportListsDe {
  TranslationsExportListsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Bestandsliste'
  String get birds => 'Bestandsliste';

  /// de: 'Zuchtpaare'
  String get breeding_pairs => 'Zuchtpaare';

  /// de: 'Finanzbuch'
  String get finances => 'Finanzbuch';
}

// Path: export.file_names
class TranslationsExportFileNamesDe {
  TranslationsExportFileNamesDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'bestand'
  String get birds => 'bestand';

  /// de: 'zuchtpaare'
  String get breeding_pairs => 'zuchtpaare';

  /// de: 'finanzbuch'
  String get finances => 'finanzbuch';
}

// Path: export.presets
class TranslationsExportPresetsDe {
  TranslationsExportPresetsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsExportPresetsBirdsDe birds = TranslationsExportPresetsBirdsDe.internal(_root);
  late final TranslationsExportPresetsBreedingPairsDe breeding_pairs = TranslationsExportPresetsBreedingPairsDe.internal(_root);
  late final TranslationsExportPresetsFinancesDe finances = TranslationsExportPresetsFinancesDe.internal(_root);
}

// Path: export.columns
class TranslationsExportColumnsDe {
  TranslationsExportColumnsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsExportColumnsBirdDe bird = TranslationsExportColumnsBirdDe.internal(_root);
  late final TranslationsExportColumnsBreedingPairDe breeding_pair = TranslationsExportColumnsBreedingPairDe.internal(_root);
  late final TranslationsExportColumnsFinanceDe finance = TranslationsExportColumnsFinanceDe.internal(_root);
}

// Path: documents.types
class TranslationsDocumentsTypesDe {
  TranslationsDocumentsTypesDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsDocumentsTypesProfileDe profile = TranslationsDocumentsTypesProfileDe.internal(_root);
  late final TranslationsDocumentsTypesPedigreeDe pedigree = TranslationsDocumentsTypesPedigreeDe.internal(_root);
  late final TranslationsDocumentsTypesSaleReceiptDe sale_receipt = TranslationsDocumentsTypesSaleReceiptDe.internal(_root);
}

// Path: documents.profile
class TranslationsDocumentsProfileDe {
  TranslationsDocumentsProfileDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Allgemein'
  String get section_general => 'Allgemein';

  /// de: 'Lebensdaten'
  String get section_lifecycle => 'Lebensdaten';

  /// de: 'Herkunft & Zucht'
  String get section_origin => 'Herkunft & Zucht';

  /// de: 'Kauf & Verkauf'
  String get section_commerce => 'Kauf & Verkauf';

  /// de: 'Notizen'
  String get section_notes => 'Notizen';
}

// Path: documents.pedigree
class TranslationsDocumentsPedigreeDe {
  TranslationsDocumentsPedigreeDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Hiermit wird bestätigt, dass die Abstammung des oben genannten Vogels nach bestem Wissen korrekt wiedergegeben ist.'
  String get statement => 'Hiermit wird bestätigt, dass die Abstammung des oben genannten Vogels nach bestem Wissen korrekt wiedergegeben ist.';

  /// de: 'Züchter'
  String get breeder => 'Züchter';

  /// de: 'Züchternummer'
  String get breeder_number => 'Züchternummer';

  /// de: 'Ort, Datum, Unterschrift des Züchters'
  String get signature => 'Ort, Datum, Unterschrift des Züchters';
}

// Path: documents.receipt
class TranslationsDocumentsReceiptDe {
  TranslationsDocumentsReceiptDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Abgebende Person'
  String get seller => 'Abgebende Person';

  /// de: 'Übernehmende Person'
  String get buyer => 'Übernehmende Person';

  /// de: 'Angaben zum Vogel'
  String get bird_data => 'Angaben zum Vogel';

  /// de: 'Preis'
  String get price => 'Preis';

  /// de: 'Datum der Abgabe'
  String get date => 'Datum der Abgabe';

  /// de: 'Der oben beschriebene Vogel wird zum genannten Preis an die übernehmende Person abgegeben. Der Vogel befindet sich zum Zeitpunkt der Abgabe in einem gesunden Zustand.'
  String get statement =>
      'Der oben beschriebene Vogel wird zum genannten Preis an die übernehmende Person abgegeben. Der Vogel befindet sich zum Zeitpunkt der Abgabe in einem gesunden Zustand.';

  /// de: 'Ort, Datum, Unterschrift abgebende Person'
  String get signature_seller => 'Ort, Datum, Unterschrift abgebende Person';

  /// de: 'Ort, Datum, Unterschrift übernehmende Person'
  String get signature_buyer => 'Ort, Datum, Unterschrift übernehmende Person';
}

// Path: finances.categories.filters
class TranslationsFinancesCategoriesFiltersDe {
  TranslationsFinancesCategoriesFiltersDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Alle'
  String get all => 'Alle';

  /// de: 'Einnahmen'
  String get income => 'Einnahmen';

  /// de: 'Ausgaben'
  String get expense => 'Ausgaben';
}

// Path: finances.categories.groups
class TranslationsFinancesCategoriesGroupsDe {
  TranslationsFinancesCategoriesGroupsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Einnahmen'
  String get income => 'Einnahmen';

  /// de: 'Ausgaben'
  String get expense => 'Ausgaben';
}

// Path: finances.categories.kind_singular
class TranslationsFinancesCategoriesKindSingularDe {
  TranslationsFinancesCategoriesKindSingularDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Einnahme'
  String get income => 'Einnahme';

  /// de: 'Ausgabe'
  String get expense => 'Ausgabe';
}

// Path: finances.categories.pill
class TranslationsFinancesCategoriesPillDe {
  TranslationsFinancesCategoriesPillDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: '↑ EINNAHME'
  String get income => '↑ EINNAHME';

  /// de: '↓ AUSGABE'
  String get expense => '↓ AUSGABE';
}

// Path: finances.categories.detail
class TranslationsFinancesCategoriesDetailDe {
  TranslationsFinancesCategoriesDetailDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Buchungen'
  String get bookings_label => 'Buchungen';

  /// de: '6 Monate'
  String get six_months => '6 Monate';

  /// de: 'Ø pro Monat'
  String get avg_per_month => 'Ø pro Monat';

  /// de: 'Letzte Buchungen'
  String get recent_bookings => 'Letzte Buchungen';

  /// de: 'Keine Buchungen'
  String get no_bookings => 'Keine Buchungen';

  /// de: 'letzte 6 Monate'
  String get last_six_months_label => 'letzte 6 Monate';

  /// de: 'Verlauf · 6 Monate'
  String get course_six_months => 'Verlauf · 6 Monate';
}

// Path: finances.categories.months_short
class TranslationsFinancesCategoriesMonthsShortDe {
  TranslationsFinancesCategoriesMonthsShortDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Dez'
  String get dec => 'Dez';

  /// de: 'Jan'
  String get jan => 'Jan';

  /// de: 'Feb'
  String get feb => 'Feb';

  /// de: 'Mär'
  String get mar => 'Mär';

  /// de: 'Apr'
  String get apr => 'Apr';

  /// de: 'Mai'
  String get may => 'Mai';
}

// Path: backup.cloud.choose_folder_dialog
class TranslationsBackupCloudChooseFolderDialogDe {
  TranslationsBackupCloudChooseFolderDialogDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Cloud-Ordner wählen?'
  String get title => 'Cloud-Ordner wählen?';

  /// de: 'Damit automatische Backups gesichert werden können, wähle jetzt einen Ordner in deiner Cloud (z.B. Google Drive).'
  String get content => 'Damit automatische Backups gesichert werden können, wähle jetzt einen Ordner in deiner Cloud (z.B. Google Drive).';

  /// de: 'Ordner wählen'
  String get confirm => 'Ordner wählen';
}

// Path: backup.cloud.sync_after_change_dialog
class TranslationsBackupCloudSyncAfterChangeDialogDe {
  TranslationsBackupCloudSyncAfterChangeDialogDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Jetzt synchronisieren?'
  String get title => 'Jetzt synchronisieren?';

  /// de: 'Der Cloud-Ordner wurde geändert. Sollen deine aktuellen Daten jetzt dorthin gesichert werden?'
  String get content => 'Der Cloud-Ordner wurde geändert. Sollen deine aktuellen Daten jetzt dorthin gesichert werden?';

  /// de: 'Synchronisieren'
  String get confirm => 'Synchronisieren';
}

// Path: backup.cloud.interval
class TranslationsBackupCloudIntervalDe {
  TranslationsBackupCloudIntervalDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Auto-Backup-Intervall'
  String get label => 'Auto-Backup-Intervall';

  /// de: 'Wie oft beim App-Start automatisch gesichert wird'
  String get sub => 'Wie oft beim App-Start automatisch gesichert wird';

  /// de: 'Intervall wählen'
  String get sheet_title => 'Intervall wählen';

  /// de: 'Bei jedem Start'
  String get every_launch => 'Bei jedem Start';

  /// de: 'Täglich'
  String get daily => 'Täglich';

  /// de: 'Wöchentlich'
  String get weekly => 'Wöchentlich';

  /// de: 'Manuell'
  String get off => 'Manuell';
}

// Path: backup.cloud.status
class TranslationsBackupCloudStatusDe {
  TranslationsBackupCloudStatusDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Zuletzt synchronisiert: heute'
  String get synced_today => 'Zuletzt synchronisiert: heute';

  /// de: '(one) {Zuletzt synchronisiert: vor 1 Tag} (other) {Zuletzt synchronisiert: vor {count} Tagen}'
  String synced_days_ago({required num count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(
        count,
        one: 'Zuletzt synchronisiert: vor 1 Tag',
        other: 'Zuletzt synchronisiert: vor {count} Tagen',
      );

  /// de: 'Noch nicht synchronisiert'
  String get never => 'Noch nicht synchronisiert';

  /// de: 'Nicht bei iCloud angemeldet'
  String get unavailable_icloud => 'Nicht bei iCloud angemeldet';

  /// de: 'Kein Zugriff auf den Ordner – bitte neu wählen'
  String get unavailable_folder => 'Kein Zugriff auf den Ordner – bitte neu wählen';
}

// Path: backup.cloud.events
class TranslationsBackupCloudEventsDe {
  TranslationsBackupCloudEventsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Cloud-Ordner gesetzt: {{name}}'
  String location_chosen({required Object Name}) => 'Cloud-Ordner gesetzt: ${Name}';

  /// de: 'Kein Ordner gewählt'
  String get location_failed => 'Kein Ordner gewählt';

  /// de: 'In Cloud gesichert'
  String get sync_succeeded => 'In Cloud gesichert';

  /// de: 'Cloud-Sync fehlgeschlagen: {{error}}'
  String sync_failed({required Object Error}) => 'Cloud-Sync fehlgeschlagen: ${Error}';

  /// de: 'Nicht bei iCloud angemeldet'
  String get unavailable_icloud => 'Nicht bei iCloud angemeldet';

  /// de: 'Kein Zugriff auf den Cloud-Ordner. Bitte neu wählen.'
  String get unavailable_folder => 'Kein Zugriff auf den Cloud-Ordner. Bitte neu wählen.';
}

// Path: contacts.fields.title
class TranslationsContactsFieldsTitleDe {
  TranslationsContactsFieldsTitleDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Anrede'
  String get name => 'Anrede';

  /// de: 'Keine'
  String get none => 'Keine';

  /// de: 'Herr'
  String get mr => 'Herr';

  /// de: 'Frau'
  String get ms => 'Frau';
}

// Path: contacts.fields.app_user
class TranslationsContactsFieldsAppUserDe {
  TranslationsContactsFieldsAppUserDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Dieser Kontakt bin ich'
  String get title => 'Dieser Kontakt bin ich';

  /// de: 'Markiert den Kontakt als App-Nutzer.'
  String get sub_title => 'Markiert den Kontakt als App-Nutzer.';
}

// Path: breeding_pairs.stats.abbr
class TranslationsBreedingPairsStatsAbbrDe {
  TranslationsBreedingPairsStatsAbbrDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'LG'
  String get laid => 'LG';

  /// de: 'BF'
  String get fertilized => 'BF';

  /// de: 'GS'
  String get hatched => 'GS';

  /// de: 'AF'
  String get fledged => 'AF';
}

// Path: breeding_pairs.stats.label
class TranslationsBreedingPairsStatsLabelDe {
  TranslationsBreedingPairsStatsLabelDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Eier gelegt'
  String get laid => 'Eier gelegt';

  /// de: 'Befruchtet'
  String get fertilized => 'Befruchtet';

  /// de: 'Geschlüpft'
  String get hatched => 'Geschlüpft';

  /// de: 'Ausgeflogen'
  String get fledged => 'Ausgeflogen';
}

// Path: breeding_pairs.stats.legend
class TranslationsBreedingPairsStatsLegendDe {
  TranslationsBreedingPairsStatsLegendDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Legende'
  String get title => 'Legende';
}

// Path: resources.sort.by
class TranslationsResourcesSortByDe {
  TranslationsResourcesSortByDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Name'
  String get name => 'Name';

  /// de: 'Erstellt'
  String get created => 'Erstellt';

  /// de: 'Kapazität'
  String get capacity => 'Kapazität';

  /// de: 'Typ'
  String get kind => 'Typ';

  /// de: 'Lat. Name'
  String get lat_name => 'Lat. Name';

  /// de: 'Farbcode'
  String get hex => 'Farbcode';

  /// de: 'Bestand'
  String get stock => 'Bestand';
}

// Path: bird.sections.identification
class TranslationsBirdSectionsIdentificationDe {
  TranslationsBirdSectionsIdentificationDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Identifikation'
  String get title => 'Identifikation';

  /// de: 'Informationen zur Identifikation des Vogels'
  String get sub_title => 'Informationen zur Identifikation des Vogels';
}

// Path: bird.sections.keeping
class TranslationsBirdSectionsKeepingDe {
  TranslationsBirdSectionsKeepingDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Haltung'
  String get title => 'Haltung';

  /// de: 'Informationen zur Haltung des Vogels'
  String get sub_title => 'Informationen zur Haltung des Vogels';
}

// Path: bird.sections.status
class TranslationsBirdSectionsStatusDe {
  TranslationsBirdSectionsStatusDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Status'
  String get title => 'Status';

  /// de: 'Informationen zum Status des Vogels'
  String get sub_title => 'Informationen zum Status des Vogels';
}

// Path: bird.sections.sale
class TranslationsBirdSectionsSaleDe {
  TranslationsBirdSectionsSaleDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Verkauf'
  String get title => 'Verkauf';

  /// de: 'Informationen zum Verkauf des Vogels'
  String get sub_title => 'Informationen zum Verkauf des Vogels';
}

// Path: bird.sections.purchase
class TranslationsBirdSectionsPurchaseDe {
  TranslationsBirdSectionsPurchaseDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Kauf'
  String get title => 'Kauf';

  /// de: 'Informationen zum Kauf des Vogels'
  String get sub_title => 'Informationen zum Kauf des Vogels';
}

// Path: bird.sections.health
class TranslationsBirdSectionsHealthDe {
  TranslationsBirdSectionsHealthDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Gesundheit'
  String get title => 'Gesundheit';

  /// de: 'Informationen zur Gesundheit des Vogels'
  String get sub_title => 'Informationen zur Gesundheit des Vogels';
}

// Path: bird.sections.life
class TranslationsBirdSectionsLifeDe {
  TranslationsBirdSectionsLifeDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Lebensphase'
  String get title => 'Lebensphase';

  /// de: 'Informationen zur Lebensphase des Vogels'
  String get sub_title => 'Informationen zur Lebensphase des Vogels';

  /// de: 'Unbekannte Lebenszyklusdaten?'
  String get unknown_lifecycle_title => 'Unbekannte Lebenszyklusdaten?';

  /// de: 'Wenn die Lebenszyklusdaten nicht bekannt sind, aktivieren Sie diese Option.'
  String get unknown_lifecycle_sub_title => 'Wenn die Lebenszyklusdaten nicht bekannt sind, aktivieren Sie diese Option.';

  /// de: 'Wenn ein Geburtsdatum vorhanden ist, wird der Vogel als Erwachsen betrachtet. Wenn ein Sterbedatum vorhanden ist, wird der Vogel als Verstorben betrachtet.'
  String get unknown_lifecycle_description =>
      'Wenn ein Geburtsdatum vorhanden ist, wird der Vogel als Erwachsen betrachtet. Wenn ein Sterbedatum vorhanden ist, wird der Vogel als Verstorben betrachtet.';
}

// Path: bird.sections.notes
class TranslationsBirdSectionsNotesDe {
  TranslationsBirdSectionsNotesDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Notizen'
  String get title => 'Notizen';

  /// de: 'Informationen zu den Notizen des Vogels'
  String get sub_title => 'Informationen zu den Notizen des Vogels';
}

// Path: bird.sections.photos
class TranslationsBirdSectionsPhotosDe {
  TranslationsBirdSectionsPhotosDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Fotos'
  String get title => 'Fotos';

  /// de: 'Fotos dieses Vogels verwalten'
  String get sub_title => 'Fotos dieses Vogels verwalten';

  /// de: 'Kamera'
  String get add_camera => 'Kamera';

  /// de: 'Galerie'
  String get add_gallery => 'Galerie';

  /// de: 'Speichere den Vogel zuerst, um Fotos hinzuzufügen.'
  String get save_first => 'Speichere den Vogel zuerst, um Fotos hinzuzufügen.';

  /// de: 'Noch keine Fotos'
  String get empty => 'Noch keine Fotos';

  /// de: 'Foto löschen?'
  String get delete_title => 'Foto löschen?';

  /// de: 'Löschen'
  String get delete_confirm => 'Löschen';

  /// de: 'Fotos verwalten'
  String get manage => 'Fotos verwalten';

  /// de: 'Foto aufnehmen'
  String get capture => 'Foto aufnehmen';

  /// de: 'oder aus Galerie wählen · mehrere möglich'
  String get capture_sub => 'oder aus Galerie wählen · mehrere möglich';

  /// de: 'Fotos dieses Vogels'
  String get section_label => 'Fotos dieses Vogels';

  /// de: 'Hinzufügen'
  String get add_tile => 'Hinzufügen';

  /// de: 'Titel'
  String get cover_badge => 'Titel';

  /// de: 'Als Titelbild festlegen'
  String get set_cover => 'Als Titelbild festlegen';

  /// de: 'Entfernen'
  String get remove => 'Entfernen';

  /// de: 'Kamera'
  String get source_camera => 'Kamera';

  /// de: 'Galerie'
  String get source_gallery => 'Galerie';

  /// de: 'Tippe auf ein Foto, um es groß anzuzeigen. Halte ein Foto gedrückt und ziehe es an eine andere Position – das erste Foto ist das Titelbild und erscheint in Listen und auf der Vogel-Detailseite.'
  String get hint =>
      'Tippe auf ein Foto, um es groß anzuzeigen. Halte ein Foto gedrückt und ziehe es an eine andere Position – das erste Foto ist das Titelbild und erscheint in Listen und auf der Vogel-Detailseite.';

  /// de: 'Fertig'
  String get done => 'Fertig';

  /// de: '{{count}} Foto'
  String count_preview_one({required Object Count}) => '${Count} Foto';

  /// de: '{{count}} Fotos'
  String count_preview_other({required Object Count}) => '${Count} Fotos';
}

// Path: bird.sections.parent
class TranslationsBirdSectionsParentDe {
  TranslationsBirdSectionsParentDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Eltern'
  String get title => 'Eltern';

  /// de: 'Informationen zu den Eltern des Vogels'
  String get sub_title => 'Informationen zu den Eltern des Vogels';
}

// Path: bird.sections.breeder
class TranslationsBirdSectionsBreederDe {
  TranslationsBirdSectionsBreederDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Züchter'
  String get title => 'Züchter';

  /// de: 'Informationen zum Züchter des Vogels'
  String get sub_title => 'Informationen zum Züchter des Vogels';
}

// Path: bird.sections.children
class TranslationsBirdSectionsChildrenDe {
  TranslationsBirdSectionsChildrenDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Nachkommen'
  String get title => 'Nachkommen';

  /// de: 'Informationen zu den Nachkommen des Vogels'
  String get sub_title => 'Informationen zu den Nachkommen des Vogels';
}

// Path: common.sell.price
class TranslationsCommonSellPriceDe {
  TranslationsCommonSellPriceDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Tatsächlicher Verkaufspreis'
  String get kFinal => 'Tatsächlicher Verkaufspreis';

  /// de: 'Gewünschter Verkaufspreis'
  String get asking => 'Gewünschter Verkaufspreis';
}

// Path: export.format.csv
class TranslationsExportFormatCsvDe {
  TranslationsExportFormatCsvDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'CSV'
  String get label => 'CSV';

  /// de: 'Für Excel und Tabellen'
  String get description => 'Für Excel und Tabellen';
}

// Path: export.format.pdf
class TranslationsExportFormatPdfDe {
  TranslationsExportFormatPdfDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'PDF'
  String get label => 'PDF';

  /// de: 'Zum Drucken und Weitergeben'
  String get description => 'Zum Drucken und Weitergeben';
}

// Path: export.header.layout
class TranslationsExportHeaderLayoutDe {
  TranslationsExportHeaderLayoutDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Logo links'
  String get logo_left => 'Logo links';

  /// de: 'Zentriert'
  String get centered => 'Zentriert';

  /// de: 'Adresse links, Logo rechts'
  String get address_left_logo_right => 'Adresse links, Logo rechts';
}

// Path: export.header.logo_size
class TranslationsExportHeaderLogoSizeDe {
  TranslationsExportHeaderLogoSizeDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Größe'
  String get label => 'Größe';

  /// de: 'Klein'
  String get small => 'Klein';

  /// de: 'Mittel'
  String get medium => 'Mittel';

  /// de: 'Groß'
  String get large => 'Groß';
}

// Path: export.presets.birds
class TranslationsExportPresetsBirdsDe {
  TranslationsExportPresetsBirdsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Übersicht'
  String get overview => 'Übersicht';

  /// de: 'Vollständig'
  String get full => 'Vollständig';
}

// Path: export.presets.breeding_pairs
class TranslationsExportPresetsBreedingPairsDe {
  TranslationsExportPresetsBreedingPairsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Übersicht'
  String get overview => 'Übersicht';

  /// de: 'Vollständig'
  String get full => 'Vollständig';
}

// Path: export.presets.finances
class TranslationsExportPresetsFinancesDe {
  TranslationsExportPresetsFinancesDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Buchungen'
  String get bookings => 'Buchungen';

  /// de: 'Vollständig'
  String get full => 'Vollständig';
}

// Path: export.columns.bird
class TranslationsExportColumnsBirdDe {
  TranslationsExportColumnsBirdDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Ringnummer'
  String get ring_number => 'Ringnummer';

  /// de: 'Art'
  String get species => 'Art';

  /// de: 'Farbe'
  String get color => 'Farbe';

  /// de: 'Voliere'
  String get cage => 'Voliere';

  /// de: 'Geschlecht'
  String get sex => 'Geschlecht';

  /// de: 'Gelegt am'
  String get laid_at => 'Gelegt am';

  /// de: 'Geschlüpft am'
  String get hatched_at => 'Geschlüpft am';

  /// de: 'Ausgeflogen am'
  String get fledged_at => 'Ausgeflogen am';

  /// de: 'Geboren am'
  String get born_at => 'Geboren am';

  /// de: 'Gestorben am'
  String get died_at => 'Gestorben am';

  /// de: 'Vater'
  String get father => 'Vater';

  /// de: 'Mutter'
  String get mother => 'Mutter';

  /// de: 'Züchter'
  String get breeder => 'Züchter';

  /// de: 'Züchternummer'
  String get breeder_number => 'Züchternummer';

  /// de: 'Besitzer'
  String get owner => 'Besitzer';

  /// de: 'Besitzernummer'
  String get owner_number => 'Besitzernummer';

  /// de: 'Gekauft am'
  String get bought_at => 'Gekauft am';

  /// de: 'Kaufpreis'
  String get bought_price => 'Kaufpreis';

  /// de: 'Gekauft von'
  String get bought_from => 'Gekauft von';

  /// de: 'Verkaufsstatus'
  String get sale_status => 'Verkaufsstatus';

  /// de: 'Angebotspreis'
  String get asking_price => 'Angebotspreis';

  /// de: 'Endpreis'
  String get final_price => 'Endpreis';

  /// de: 'Verkauft am'
  String get sold_at => 'Verkauft am';

  /// de: 'Verkauft an'
  String get sold_to => 'Verkauft an';

  /// de: 'Notizen'
  String get notes => 'Notizen';
}

// Path: export.columns.breeding_pair
class TranslationsExportColumnsBreedingPairDe {
  TranslationsExportColumnsBreedingPairDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Vater (Ring)'
  String get father_ring => 'Vater (Ring)';

  /// de: 'Vater (Art)'
  String get father_species => 'Vater (Art)';

  /// de: 'Mutter (Ring)'
  String get mother_ring => 'Mutter (Ring)';

  /// de: 'Mutter (Art)'
  String get mother_species => 'Mutter (Art)';

  /// de: 'Voliere'
  String get cage => 'Voliere';

  /// de: 'Status'
  String get status => 'Status';

  /// de: 'Beginn'
  String get start => 'Beginn';

  /// de: 'Ende'
  String get end => 'Ende';

  /// de: 'Bruten'
  String get broods => 'Bruten';

  /// de: 'Gelegt'
  String get laid => 'Gelegt';

  /// de: 'Befruchtet'
  String get fertilized => 'Befruchtet';

  /// de: 'Geschlüpft'
  String get hatched => 'Geschlüpft';

  /// de: 'Ausgeflogen'
  String get fledged => 'Ausgeflogen';

  /// de: 'Notizen'
  String get notes => 'Notizen';
}

// Path: export.columns.finance
class TranslationsExportColumnsFinanceDe {
  TranslationsExportColumnsFinanceDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Datum'
  String get date => 'Datum';

  /// de: 'Titel'
  String get title => 'Titel';

  /// de: 'Kategorie'
  String get category => 'Kategorie';

  /// de: 'Art'
  String get kind => 'Art';

  /// de: 'Betrag'
  String get amount => 'Betrag';

  /// de: 'Vogel'
  String get bird => 'Vogel';

  /// de: 'Notizen'
  String get notes => 'Notizen';
}

// Path: documents.types.profile
class TranslationsDocumentsTypesProfileDe {
  TranslationsDocumentsTypesProfileDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Steckbrief'
  String get label => 'Steckbrief';

  /// de: 'Alle Stammdaten auf einer Seite'
  String get description => 'Alle Stammdaten auf einer Seite';

  /// de: 'steckbrief'
  String get file_name => 'steckbrief';
}

// Path: documents.types.pedigree
class TranslationsDocumentsTypesPedigreeDe {
  TranslationsDocumentsTypesPedigreeDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Abstammungsnachweis'
  String get label => 'Abstammungsnachweis';

  /// de: 'Ahnentafel über drei Generationen'
  String get description => 'Ahnentafel über drei Generationen';

  /// de: 'abstammungsnachweis'
  String get file_name => 'abstammungsnachweis';
}

// Path: documents.types.sale_receipt
class TranslationsDocumentsTypesSaleReceiptDe {
  TranslationsDocumentsTypesSaleReceiptDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Abgabebeleg'
  String get label => 'Abgabebeleg';

  /// de: 'Beleg für Verkauf oder Abgabe'
  String get description => 'Beleg für Verkauf oder Abgabe';

  /// de: 'abgabebeleg'
  String get file_name => 'abgabebeleg';
}
