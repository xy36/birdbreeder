///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'translations.g.dart';

// Path: <root>
typedef TranslationsDe = Translations; // ignore: unused_element

class Translations implements BaseTranslations<AppLocale, Translations> {
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
  late final TranslationsFinancesDe finances = TranslationsFinancesDe.internal(_root);
  late final TranslationsAccountDe account = TranslationsAccountDe.internal(_root);
  late final TranslationsBreedingsDe breedings = TranslationsBreedingsDe.internal(_root);
  late final TranslationsColorsDe colors = TranslationsColorsDe.internal(_root);
  late final TranslationsCagesDe cages = TranslationsCagesDe.internal(_root);
  late final TranslationsSpeciesDe species = TranslationsSpeciesDe.internal(_root);
  late final TranslationsContactsDe contacts = TranslationsContactsDe.internal(_root);
  late final TranslationsBreedingPairsDe breeding_pairs = TranslationsBreedingPairsDe.internal(_root);
  late final TranslationsResourcesDe resources = TranslationsResourcesDe.internal(_root);
  late final TranslationsBirdsDe birds = TranslationsBirdsDe.internal(_root);
  late final TranslationsBirdDe bird = TranslationsBirdDe.internal(_root);
  late final TranslationsCommonDe common = TranslationsCommonDe.internal(_root);
  late final TranslationsLoginDe login = TranslationsLoginDe.internal(_root);
  late final TranslationsMenuDe menu = TranslationsMenuDe.internal(_root);
  late final TranslationsErrorDe error = TranslationsErrorDe.internal(_root);
  late final TranslationsDialogDe dialog = TranslationsDialogDe.internal(_root);
  late final TranslationsPopUpMenuDe pop_up_menu = TranslationsPopUpMenuDe.internal(_root);
  late final TranslationsSnackbarsDe snackbars = TranslationsSnackbarsDe.internal(_root);
}

// Path: app
class TranslationsAppDe {
  TranslationsAppDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'birdbreeder'
  String get title => 'birdbreeder';
}

// Path: finances
class TranslationsFinancesDe {
  TranslationsFinancesDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Finanzen'
  String get title => 'Finanzen';
}

// Path: account
class TranslationsAccountDe {
  TranslationsAccountDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Konto'
  String get title => 'Konto';
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

  /// de: 'Farbe löschen?'
  String get delete => 'Farbe löschen?';

  /// de: 'Farbe'
  String get color => 'Farbe';
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

  /// de: 'Art löschen?'
  String get delete => 'Art löschen?';

  /// de: 'Name der Art'
  String get name => 'Name der Art';

  /// de: 'Lateinischer Name'
  String get latin_name => 'Lateinischer Name';
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

  /// de: 'Kontakt löschen?'
  String get contact => 'Kontakt löschen?';

  /// de: 'Kontakt hinzufügen?'
  String get add => 'Kontakt hinzufügen?';

  late final TranslationsContactsSectionsDe sections = TranslationsContactsSectionsDe.internal(_root);
  late final TranslationsContactsActionButtonDe action_button = TranslationsContactsActionButtonDe.internal(_root);
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

  /// de: 'Zuchtpaar löschen?'
  String get delete => 'Zuchtpaar löschen?';

  late final TranslationsBreedingPairsStatusDe status = TranslationsBreedingPairsStatusDe.internal(_root);

  /// de: 'Startdatum'
  String get start_date => 'Startdatum';

  /// de: 'Notizen (optional)'
  String get notes => 'Notizen (optional)';
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
}

// Path: birds
class TranslationsBirdsDe {
  TranslationsBirdsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Vögel'
  String get title => 'Vögel';
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
  late final TranslationsBirdSectionsDe sections = TranslationsBirdSectionsDe.internal(_root);
}

// Path: common
class TranslationsCommonDe {
  TranslationsCommonDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsCommonBottomSheetDe bottom_sheet = TranslationsCommonBottomSheetDe.internal(_root);
  late final TranslationsCommonLifeStageDe life_stage = TranslationsCommonLifeStageDe.internal(_root);
  late final TranslationsCommonSaleStatusDe sale_status = TranslationsCommonSaleStatusDe.internal(_root);

  /// de: 'Alle'
  String get all_label => 'Alle';

  /// de: 'Mehr'
  String get more_label => 'Mehr';

  /// de: 'Weniger'
  String get less_label => 'Weniger';

  /// de: 'Suchen'
  String get search => 'Suchen';

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

  /// de: 'Eier'
  String get eggs_short => 'Eier';

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

// Path: login
class TranslationsLoginDe {
  TranslationsLoginDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Anmelden'
  String get sign_in => 'Anmelden';

  late final TranslationsLoginWelcomeDe welcome = TranslationsLoginWelcomeDe.internal(_root);
  late final TranslationsLoginFieldDe field = TranslationsLoginFieldDe.internal(_root);
}

// Path: menu
class TranslationsMenuDe {
  TranslationsMenuDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsMenuNameDe name = TranslationsMenuNameDe.internal(_root);

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

  /// de: 'Bearbeiten'
  String get edit => 'Bearbeiten';

  /// de: 'Anzeigen'
  String get show => 'Anzeigen';

  /// de: 'Duplizieren'
  String get duplicate => 'Duplizieren';

  /// de: 'Löschen'
  String get delete => 'Löschen';
}

// Path: snackbars
class TranslationsSnackbarsDe {
  TranslationsSnackbarsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsSnackbarsGeneralDe general = TranslationsSnackbarsGeneralDe.internal(_root);
  late final TranslationsSnackbarsContactsDe contacts = TranslationsSnackbarsContactsDe.internal(_root);
  late final TranslationsSnackbarsBreedingPairsDe breeding_pairs = TranslationsSnackbarsBreedingPairsDe.internal(_root);
  late final TranslationsSnackbarsErrorDe error = TranslationsSnackbarsErrorDe.internal(_root);
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

  /// de: 'E-Mail'
  String get email => 'E-Mail';

  /// de: 'Züchternummer'
  String get number => 'Züchternummer';

  /// de: 'Telefonnummer'
  String get phone => 'Telefonnummer';

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
  late final TranslationsBirdSectionsParentDe parent = TranslationsBirdSectionsParentDe.internal(_root);
  late final TranslationsBirdSectionsChildrenDe children = TranslationsBirdSectionsChildrenDe.internal(_root);
}

// Path: common.bottom_sheet
class TranslationsCommonBottomSheetDe {
  TranslationsCommonBottomSheetDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Die Suche nach {{text}} hat leider nichts ergeben.'
  String search_empty_builder_text({required Object Text}) => 'Die Suche nach ${Text} hat leider nichts ergeben.';
}

// Path: common.life_stage
class TranslationsCommonLifeStageDe {
  TranslationsCommonLifeStageDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Ei'
  String get egg => 'Ei';

  /// de: 'Küken'
  String get chick => 'Küken';

  /// de: 'Erwachsen'
  String get adult => 'Erwachsen';

  /// de: 'Verstorben'
  String get deceased => 'Verstorben';
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

  /// de: 'Zuletzt aktualisiert (neu → alt)'
  String get updated => 'Zuletzt aktualisiert (neu → alt)';

  /// de: 'Alter (jung → alt)'
  String get age => 'Alter (jung → alt)';

  /// de: 'Ringnummer (A → Z)'
  String get ringnumber => 'Ringnummer (A → Z)';
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

// Path: login.welcome
class TranslationsLoginWelcomeDe {
  TranslationsLoginWelcomeDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Willkommen bei '
  String get text => 'Willkommen bei ';

  /// de: 'Geben Sie Ihre E-Mail und Ihr Passwort ein, um auf Ihr Konto zuzugreifen'
  String get sub_text => 'Geben Sie Ihre E-Mail und Ihr Passwort ein, um auf Ihr Konto zuzugreifen';
}

// Path: login.field
class TranslationsLoginFieldDe {
  TranslationsLoginFieldDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsLoginFieldEmailDe email = TranslationsLoginFieldEmailDe.internal(_root);
  late final TranslationsLoginFieldPasswordDe password = TranslationsLoginFieldPasswordDe.internal(_root);
}

// Path: menu.name
class TranslationsMenuNameDe {
  TranslationsMenuNameDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Vögel'
  String get birds => 'Vögel';

  /// de: 'Kontakte'
  String get contacts => 'Kontakte';

  /// de: 'Ressourcen'
  String get resources => 'Ressourcen';

  /// de: 'Züchtungen'
  String get breedings => 'Züchtungen';

  /// de: 'Finanzen'
  String get finances => 'Finanzen';

  /// de: 'Konto'
  String get account => 'Konto';
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

// Path: snackbars.general
class TranslationsSnackbarsGeneralDe {
  TranslationsSnackbarsGeneralDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Konnte nicht erstellt werden'
  String get create_failed => 'Konnte nicht erstellt werden';

  /// de: 'Konnte nicht aktualisiert werden'
  String get update_failed => 'Konnte nicht aktualisiert werden';

  /// de: 'Konnte nicht gelöscht werden'
  String get delete_failed => 'Konnte nicht gelöscht werden';

  /// de: 'Konnte nicht gelöscht werden'
  String get failed => 'Konnte nicht gelöscht werden';
}

// Path: snackbars.contacts
class TranslationsSnackbarsContactsDe {
  TranslationsSnackbarsContactsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Kontakt konnte nicht erstellt werden'
  String get create_failed => 'Kontakt konnte nicht erstellt werden';

  /// de: 'Kontakt konnte nicht aktualisiert werden'
  String get update_failed => 'Kontakt konnte nicht aktualisiert werden';

  /// de: 'Kontakt konnte nicht gelöscht werden'
  String get delete_failed => 'Kontakt konnte nicht gelöscht werden';
}

// Path: snackbars.breeding_pairs
class TranslationsSnackbarsBreedingPairsDe {
  TranslationsSnackbarsBreedingPairsDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Zuchtpaar konnte nicht erstellt werden'
  String get create_failed => 'Zuchtpaar konnte nicht erstellt werden';

  /// de: 'Zuchtpaar konnte nicht aktualisiert werden'
  String get update_failed => 'Zuchtpaar konnte nicht aktualisiert werden';

  /// de: 'Zuchtpaar konnte nicht gelöscht werden'
  String get delete_failed => 'Zuchtpaar konnte nicht gelöscht werden';
}

// Path: snackbars.error
class TranslationsSnackbarsErrorDe {
  TranslationsSnackbarsErrorDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsSnackbarsErrorDataDe data = TranslationsSnackbarsErrorDataDe.internal(_root);

  /// de: 'Email oder Passwort ist falsch!'
  String get login => 'Email oder Passwort ist falsch!';
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

// Path: login.field.email
class TranslationsLoginFieldEmailDe {
  TranslationsLoginFieldEmailDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Geben Sie Ihre E-Mail ein'
  String get hint => 'Geben Sie Ihre E-Mail ein';

  late final TranslationsLoginFieldEmailValidationDe validation = TranslationsLoginFieldEmailValidationDe.internal(_root);
}

// Path: login.field.password
class TranslationsLoginFieldPasswordDe {
  TranslationsLoginFieldPasswordDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Geben Sie Ihr Passwort ein'
  String get hint => 'Geben Sie Ihr Passwort ein';

  late final TranslationsLoginFieldPasswordValidationDe validation = TranslationsLoginFieldPasswordValidationDe.internal(_root);
}

// Path: snackbars.error.data
class TranslationsSnackbarsErrorDataDe {
  TranslationsSnackbarsErrorDataDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Fehler beim Abrufen der Daten'
  String get fetch => 'Fehler beim Abrufen der Daten';

  /// de: 'Fehler beim Speichern der Daten'
  String get save => 'Fehler beim Speichern der Daten';

  /// de: 'Fehler beim Löschen der Daten'
  String get delete => 'Fehler beim Löschen der Daten';
}

// Path: login.field.email.validation
class TranslationsLoginFieldEmailValidationDe {
  TranslationsLoginFieldEmailValidationDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Bitte geben Sie Ihre E-Mail ein'
  String get error => 'Bitte geben Sie Ihre E-Mail ein';
}

// Path: login.field.password.validation
class TranslationsLoginFieldPasswordValidationDe {
  TranslationsLoginFieldPasswordValidationDe.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// de: 'Bitte geben Sie Ihr Passwort ein'
  String get error => 'Bitte geben Sie Ihr Passwort ein';
}
