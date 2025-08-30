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
class TranslationsDe implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsDe(
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
            ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <de>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final TranslationsDe _root = this; // ignore: unused_field

  @override
  TranslationsDe $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsDe(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsAppDe app = _TranslationsAppDe._(_root);
  @override
  late final _TranslationsFinancesDe finances = _TranslationsFinancesDe._(_root);
  @override
  late final _TranslationsAccountDe account = _TranslationsAccountDe._(_root);
  @override
  late final _TranslationsBreedingsDe breedings = _TranslationsBreedingsDe._(_root);
  @override
  late final _TranslationsColorsDe colors = _TranslationsColorsDe._(_root);
  @override
  late final _TranslationsCagesDe cages = _TranslationsCagesDe._(_root);
  @override
  late final _TranslationsSpeciesDe species = _TranslationsSpeciesDe._(_root);
  @override
  late final _TranslationsContactsDe contacts = _TranslationsContactsDe._(_root);
  @override
  late final _TranslationsBreedingPairsDe breeding_pairs = _TranslationsBreedingPairsDe._(_root);
  @override
  late final _TranslationsResourcesDe resources = _TranslationsResourcesDe._(_root);
  @override
  late final _TranslationsBirdsDe birds = _TranslationsBirdsDe._(_root);
  @override
  late final _TranslationsBirdDe bird = _TranslationsBirdDe._(_root);
  @override
  late final _TranslationsCommonDe common = _TranslationsCommonDe._(_root);
  @override
  late final _TranslationsLoginDe login = _TranslationsLoginDe._(_root);
  @override
  late final _TranslationsMenuDe menu = _TranslationsMenuDe._(_root);
  @override
  late final _TranslationsErrorDe error = _TranslationsErrorDe._(_root);
  @override
  late final _TranslationsDialogDe dialog = _TranslationsDialogDe._(_root);
  @override
  late final _TranslationsPopUpMenuDe pop_up_menu = _TranslationsPopUpMenuDe._(_root);
  @override
  late final _TranslationsSnackbarsDe snackbars = _TranslationsSnackbarsDe._(_root);
}

// Path: app
class _TranslationsAppDe implements TranslationsAppEn {
  _TranslationsAppDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'birdbreeder';
}

// Path: finances
class _TranslationsFinancesDe implements TranslationsFinancesEn {
  _TranslationsFinancesDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Finanzen';
}

// Path: account
class _TranslationsAccountDe implements TranslationsAccountEn {
  _TranslationsAccountDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Konto';
}

// Path: breedings
class _TranslationsBreedingsDe implements TranslationsBreedingsEn {
  _TranslationsBreedingsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Züchtungen';
}

// Path: colors
class _TranslationsColorsDe implements TranslationsColorsEn {
  _TranslationsColorsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Farben';
  @override
  String get add => 'Farbe hinzufügen';
  @override
  String get delete => 'Farbe löschen?';
  @override
  String get color => 'Farbe';
}

// Path: cages
class _TranslationsCagesDe implements TranslationsCagesEn {
  _TranslationsCagesDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Volieren';
  @override
  String get add => 'Voliere hinzufügen';
  @override
  String get delete => 'Voliere löschen?';
  @override
  String get name => 'Name des Volieres';
  @override
  String get description => 'Beschreibung';
  @override
  String get height => 'Höhe';
  @override
  String get width => 'Breite';
  @override
  String get depth => 'Tiefe';
}

// Path: species
class _TranslationsSpeciesDe implements TranslationsSpeciesEn {
  _TranslationsSpeciesDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Arten';
  @override
  String get add => 'Art hinzufügen';
  @override
  String get delete => 'Art löschen?';
  @override
  String get name => 'Name der Art';
  @override
  String get latin_name => 'Lateinischer Name';
}

// Path: contacts
class _TranslationsContactsDe implements TranslationsContactsEn {
  _TranslationsContactsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Kontakte ({{count}})';
  @override
  String get edit => 'Kontakt bearbeiten';
  @override
  String get create => 'Kontakt erstellen';
  @override
  String get deleted => 'Kontakt gelöscht';
  @override
  String get saved => 'Kontakt gespeichert';
  @override
  late final _TranslationsContactsFieldsDe fields = _TranslationsContactsFieldsDe._(_root);
  @override
  String get contact => 'Kontakt löschen?';
  @override
  String get add => 'Kontakt hinzufügen?';
  @override
  late final _TranslationsContactsSectionsDe sections = _TranslationsContactsSectionsDe._(_root);
  @override
  late final _TranslationsContactsActionButtonDe actionButton = _TranslationsContactsActionButtonDe._(_root);
}

// Path: breeding_pairs
class _TranslationsBreedingPairsDe implements TranslationsBreedingPairsEn {
  _TranslationsBreedingPairsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Zuchtpaar';
  @override
  String get add => 'Zuchtpaar hinzufügen';
  @override
  String get delete => 'Zuchtpaar löschen?';
}

// Path: resources
class _TranslationsResourcesDe implements TranslationsResourcesEn {
  _TranslationsResourcesDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ressourcen';
  @override
  String usage_count({required num count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(
        count,
        zero: 'In keinem Vogel verwendet',
        one: 'Verwendet in einem Vogel',
        other: 'Verwendet in {{n}} Vögel',
      );
}

// Path: birds
class _TranslationsBirdsDe implements TranslationsBirdsEn {
  _TranslationsBirdsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Vögel';
}

// Path: bird
class _TranslationsBirdDe implements TranslationsBirdEn {
  _TranslationsBirdDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Vogel';
  @override
  String get edit => 'Vogel bearbeiten';
  @override
  String get deleted => 'Vogel gelöscht';
  @override
  String get saved => 'Vogel gespeichert';
  @override
  String get delete => 'Vogel löschen?';
  @override
  String get duplicate => 'Vogel duplizieren';
  @override
  String get add => 'Vogel hinzufügen';
  @override
  String get select_color_label => 'Farbe auswählen';
  @override
  String get select_species_label => 'Art auswählen';
  @override
  String get select_cage_label => 'Voliere auswählen';
  @override
  String get select_owner_label => 'Besitzer auswählen';
  @override
  String get select_sold_to_label => 'Verkauft an auswählen';
  @override
  String get select_bought_from_label => 'Gekauft von auswählen';
  @override
  String get created_information => 'Erstellt am {{DateTime date}} um {{time}}';
  @override
  late final _TranslationsBirdTabsDe tabs = _TranslationsBirdTabsDe._(_root);
  @override
  late final _TranslationsBirdSectionsDe sections = _TranslationsBirdSectionsDe._(_root);
}

// Path: common
class _TranslationsCommonDe implements TranslationsCommonEn {
  _TranslationsCommonDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsCommonBottomSheetDe bottom_sheet = _TranslationsCommonBottomSheetDe._(_root);
  @override
  late final _TranslationsCommonLifeStageDe life_stage = _TranslationsCommonLifeStageDe._(_root);
  @override
  late final _TranslationsCommonSaleStatusDe sale_status = _TranslationsCommonSaleStatusDe._(_root);
  @override
  String get all_label => 'Alle';
  @override
  String get more_label => 'Mehr';
  @override
  String get less_label => 'Weniger';
  @override
  String get search => 'Suchen';
  @override
  String countbird({required num count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(
        count,
        zero: 'Keine Vögel',
        one: '1 Vogel',
        other: '{count} Vögel',
      );
  @override
  String get optional => 'Optional';
  @override
  String get apply => 'Übernehmen';
  @override
  String get reset => 'Zurücksetzen';
  @override
  String get add => 'Hinzufügen';
  @override
  String get close => 'Schließen';
  @override
  String get cancel => 'Abbrechen';
  @override
  String get ok => 'Ok';
  @override
  late final _TranslationsCommonSexDe sex = _TranslationsCommonSexDe._(_root);
  @override
  late final _TranslationsCommonSellDe sell = _TranslationsCommonSellDe._(_root);
  @override
  late final _TranslationsCommonBoughtDe bought = _TranslationsCommonBoughtDe._(_root);
  @override
  late final _TranslationsCommonSortingDe sorting = _TranslationsCommonSortingDe._(_root);
  @override
  String get something_went_wrong => 'Hoppla, etwas ist schiefgelaufen.';
  @override
  String get save => 'Speichern';
  @override
  String get general => 'Allgemein';
  @override
  String get ringnumber => 'Ringnummer';
  @override
  String get notes => 'Notizen';
  @override
  String get clutches => 'Gelege';
  @override
  String get laid => 'Gelegt';
  @override
  String get fertilzed => 'Befruchtet';
  @override
  String get hatched => 'Geschlüpft';
  @override
  String get fledged => 'Ausgeflogen';
  @override
  String get origin => 'Herkunft';
  @override
  String get species => 'Art';
  @override
  String get color => 'Farbe';
  @override
  String get cage => 'Voliere';
  @override
  String get owner => 'Besitzer';
  @override
  late final _TranslationsCommonSoldDe sold = _TranslationsCommonSoldDe._(_root);
  @override
  String get gender => 'Geschlecht';
  @override
  String get diedAt => 'Sterbedatum';
  @override
  String get father => 'Vater';
  @override
  String get mother => 'Mutter';
  @override
  String get partner => 'Partner';
  @override
  String get is_for_sale => 'Zum Verkauf';
  @override
  String get yes => 'Ja';
  @override
  String get no => 'Nein';
  @override
  late final _TranslationsCommonUnitDe unit = _TranslationsCommonUnitDe._(_root);
  @override
  String get email => 'E-Mail';
  @override
  String get password => 'Passwort';
  @override
  late final _TranslationsCommonHintDe hint = _TranslationsCommonHintDe._(_root);
  @override
  String get required => 'Dieses Feld muss ausgefüllt werden';
}

// Path: login
class _TranslationsLoginDe implements TranslationsLoginEn {
  _TranslationsLoginDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get signIn => 'Anmelden';
  @override
  late final _TranslationsLoginWelcomeDe welcome = _TranslationsLoginWelcomeDe._(_root);
  @override
  late final _TranslationsLoginFieldDe field = _TranslationsLoginFieldDe._(_root);
}

// Path: menu
class _TranslationsMenuDe implements TranslationsMenuEn {
  _TranslationsMenuDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsMenuNameDe name = _TranslationsMenuNameDe._(_root);
  @override
  String get addBird => 'Vogel hinzufügen';
}

// Path: error
class _TranslationsErrorDe implements TranslationsErrorEn {
  _TranslationsErrorDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get message => 'Entschuldigung, es ist ein Fehler aufgetreten';
}

// Path: dialog
class _TranslationsDialogDe implements TranslationsDialogEn {
  _TranslationsDialogDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsDialogDiscardChangesDe discard_changes = _TranslationsDialogDiscardChangesDe._(_root);
  @override
  late final _TranslationsDialogDeleteEntryDe delete_entry = _TranslationsDialogDeleteEntryDe._(_root);
}

// Path: pop_up_menu
class _TranslationsPopUpMenuDe implements TranslationsPopUpMenuEn {
  _TranslationsPopUpMenuDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPopUpMenuBirdDe bird = _TranslationsPopUpMenuBirdDe._(_root);
}

// Path: snackbars
class _TranslationsSnackbarsDe implements TranslationsSnackbarsEn {
  _TranslationsSnackbarsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsSnackbarsGeneralDe general = _TranslationsSnackbarsGeneralDe._(_root);
  @override
  late final _TranslationsSnackbarsContactsDe contacts = _TranslationsSnackbarsContactsDe._(_root);
  @override
  late final _TranslationsSnackbarsErrorDe error = _TranslationsSnackbarsErrorDe._(_root);
}

// Path: contacts.fields
class _TranslationsContactsFieldsDe implements TranslationsContactsFieldsEn {
  _TranslationsContactsFieldsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get first_name => 'Vorname';
  @override
  String get last_name => 'Nachname';
  @override
  String get email => 'E-Mail';
  @override
  String get number => 'Züchternummer';
  @override
  String get phone => 'Telefonnummer';
  @override
  String get address => 'Adresse';
  @override
  String get city => 'Stadt';
  @override
  String get country => 'Land';
  @override
  String get postal => 'Postleitzahl';
  @override
  String get website => 'Webseite';
}

// Path: contacts.sections
class _TranslationsContactsSectionsDe implements TranslationsContactsSectionsEn {
  _TranslationsContactsSectionsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get personal => 'Persönliche Informationen';
  @override
  String get breeder => 'Züchterinformationen';
  @override
  String get contact => 'Kontaktinformationen';
  @override
  String get address => 'Adresse';
  @override
  String get meta => 'Metadaten';
}

// Path: contacts.actionButton
class _TranslationsContactsActionButtonDe implements TranslationsContactsActionButtonEn {
  _TranslationsContactsActionButtonDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get open_website_tooltipp => 'Webseite öffnen';
  @override
  String get send_email_tooltipp => 'E-Mail schreiben';
  @override
  String get call_tooltipp => 'Anrufen';
}

// Path: bird.tabs
class _TranslationsBirdTabsDe implements TranslationsBirdTabsEn {
  _TranslationsBirdTabsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get general => 'Allgemein';
  @override
  String get state_and_life => 'Zustand';
  @override
  String get breeding => 'Zucht';
  @override
  String get purchase_and_sale => 'Finanzen';
}

// Path: bird.sections
class _TranslationsBirdSectionsDe implements TranslationsBirdSectionsEn {
  _TranslationsBirdSectionsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsBirdSectionsIdentificationDe identification = _TranslationsBirdSectionsIdentificationDe._(_root);
  @override
  late final _TranslationsBirdSectionsKeepingDe keeping = _TranslationsBirdSectionsKeepingDe._(_root);
  @override
  late final _TranslationsBirdSectionsStatusDe status = _TranslationsBirdSectionsStatusDe._(_root);
  @override
  late final _TranslationsBirdSectionsSaleDe sale = _TranslationsBirdSectionsSaleDe._(_root);
  @override
  late final _TranslationsBirdSectionsPurchaseDe purchase = _TranslationsBirdSectionsPurchaseDe._(_root);
  @override
  late final _TranslationsBirdSectionsHealthDe health = _TranslationsBirdSectionsHealthDe._(_root);
  @override
  late final _TranslationsBirdSectionsLifeDe life = _TranslationsBirdSectionsLifeDe._(_root);
  @override
  late final _TranslationsBirdSectionsNotesDe notes = _TranslationsBirdSectionsNotesDe._(_root);
  @override
  late final _TranslationsBirdSectionsParentDe parent = _TranslationsBirdSectionsParentDe._(_root);
  @override
  late final _TranslationsBirdSectionsChildrenDe children = _TranslationsBirdSectionsChildrenDe._(_root);
}

// Path: common.bottom_sheet
class _TranslationsCommonBottomSheetDe implements TranslationsCommonBottomSheetEn {
  _TranslationsCommonBottomSheetDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get search_empty_builder_text => 'Die Suche nach {{text}} hat leider nichts ergeben.';
}

// Path: common.life_stage
class _TranslationsCommonLifeStageDe implements TranslationsCommonLifeStageEn {
  _TranslationsCommonLifeStageDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get egg => 'Ei';
  @override
  String get chick => 'Küken';
  @override
  String get adult => 'Erwachsen';
  @override
  String get deceased => 'Verstorben';
}

// Path: common.sale_status
class _TranslationsCommonSaleStatusDe implements TranslationsCommonSaleStatusEn {
  _TranslationsCommonSaleStatusDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Kauf/Verkaufsstatus';
  @override
  String get not_for_sale => 'Nicht zum Verkauf';
  @override
  String get listed => 'Zum Verkauf angeboten';
  @override
  String get reserved => 'Reserviert';
  @override
  String get sold => 'Verkauft';
}

// Path: common.sex
class _TranslationsCommonSexDe implements TranslationsCommonSexEn {
  _TranslationsCommonSexDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Geschlecht';
  @override
  String get male => 'Hahn';
  @override
  String get female => 'Henne';
  @override
  String get unknown => 'Unbekannt';
}

// Path: common.sell
class _TranslationsCommonSellDe implements TranslationsCommonSellEn {
  _TranslationsCommonSellDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get year => 'Verkaufsjahr';
  @override
  String get bird => 'Vogel verkaufen';
  @override
  late final _TranslationsCommonSellPriceDe price = _TranslationsCommonSellPriceDe._(_root);
}

// Path: common.bought
class _TranslationsCommonBoughtDe implements TranslationsCommonBoughtEn {
  _TranslationsCommonBoughtDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get year => 'Kaufjahr';
  @override
  String get from => 'Gekauft von';
  @override
  String get at => 'Gekauft am';
  @override
  String get price => 'Kaufpreis';
}

// Path: common.sorting
class _TranslationsCommonSortingDe implements TranslationsCommonSortingEn {
  _TranslationsCommonSortingDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Sortierung';
  @override
  String get updated => 'Zuletzt aktualisiert (neu → alt)';
  @override
  String get age => 'Alter (jung → alt)';
  @override
  String get ringnumber => 'Ringnummer (A → Z)';
}

// Path: common.sold
class _TranslationsCommonSoldDe implements TranslationsCommonSoldEn {
  _TranslationsCommonSoldDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get to => 'Verkauft an';
  @override
  String get at => 'Verkauft am';
}

// Path: common.unit
class _TranslationsCommonUnitDe implements TranslationsCommonUnitEn {
  _TranslationsCommonUnitDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get m => 'm';
  @override
  String get cm => 'cm';
}

// Path: common.hint
class _TranslationsCommonHintDe implements TranslationsCommonHintEn {
  _TranslationsCommonHintDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get select => 'Auswählen';
  @override
  String get text => 'Eingabe';
}

// Path: login.welcome
class _TranslationsLoginWelcomeDe implements TranslationsLoginWelcomeEn {
  _TranslationsLoginWelcomeDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get text => 'Willkommen bei ';
  @override
  String get subText => 'Geben Sie Ihre E-Mail und Ihr Passwort ein, um auf Ihr Konto zuzugreifen';
}

// Path: login.field
class _TranslationsLoginFieldDe implements TranslationsLoginFieldEn {
  _TranslationsLoginFieldDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsLoginFieldEmailDe email = _TranslationsLoginFieldEmailDe._(_root);
  @override
  late final _TranslationsLoginFieldPasswordDe password = _TranslationsLoginFieldPasswordDe._(_root);
}

// Path: menu.name
class _TranslationsMenuNameDe implements TranslationsMenuNameEn {
  _TranslationsMenuNameDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get birds => 'Vögel';
  @override
  String get contacts => 'Kontakte';
  @override
  String get resources => 'Ressourcen';
  @override
  String get breedings => 'Züchtungen';
  @override
  String get finances => 'Finanzen';
  @override
  String get account => 'Konto';
}

// Path: dialog.discard_changes
class _TranslationsDialogDiscardChangesDe implements TranslationsDialogDiscardChangesEn {
  _TranslationsDialogDiscardChangesDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Änderungen verwerfen?';
  @override
  String get content => 'Deine Änderungen werden verworfen, bist du sicher?';
}

// Path: dialog.delete_entry
class _TranslationsDialogDeleteEntryDe implements TranslationsDialogDeleteEntryEn {
  _TranslationsDialogDeleteEntryDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get content => 'Möchten Sie diesen Eintrag wirklich löschen?';
}

// Path: pop_up_menu.bird
class _TranslationsPopUpMenuBirdDe implements TranslationsPopUpMenuBirdEn {
  _TranslationsPopUpMenuBirdDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get edit => 'Bearbeiten';
  @override
  String get show => 'Anzeigen';
  @override
  String get duplicate => 'Duplizieren';
  @override
  String get delete => 'Löschen';
}

// Path: snackbars.general
class _TranslationsSnackbarsGeneralDe implements TranslationsSnackbarsGeneralEn {
  _TranslationsSnackbarsGeneralDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get create_failed => 'Konnte nicht erstellt werden';
  @override
  String get update_failed => 'Konnte nicht aktualisiert werden';
  @override
  String get delete_failed => 'Konnte nicht gelöscht werden';
  @override
  String get failed => 'Konnte nicht gelöscht werden';
}

// Path: snackbars.contacts
class _TranslationsSnackbarsContactsDe implements TranslationsSnackbarsContactsEn {
  _TranslationsSnackbarsContactsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get create_failed => 'Kontakt konnte nicht erstellt werden';
  @override
  String get update_failed => 'Kontakt konnte nicht aktualisiert werden';
  @override
  String get delete_failed => 'Kontakt konnte nicht gelöscht werden';
}

// Path: snackbars.error
class _TranslationsSnackbarsErrorDe implements TranslationsSnackbarsErrorEn {
  _TranslationsSnackbarsErrorDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsSnackbarsErrorDataDe data = _TranslationsSnackbarsErrorDataDe._(_root);
  @override
  String get login => 'Email oder Passwort ist falsch!';
}

// Path: bird.sections.identification
class _TranslationsBirdSectionsIdentificationDe implements TranslationsBirdSectionsIdentificationEn {
  _TranslationsBirdSectionsIdentificationDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Identifikation';
  @override
  String get subTitle => 'Informationen zur Identifikation des Vogels';
}

// Path: bird.sections.keeping
class _TranslationsBirdSectionsKeepingDe implements TranslationsBirdSectionsKeepingEn {
  _TranslationsBirdSectionsKeepingDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Haltung';
  @override
  String get subTitle => 'Informationen zur Haltung des Vogels';
}

// Path: bird.sections.status
class _TranslationsBirdSectionsStatusDe implements TranslationsBirdSectionsStatusEn {
  _TranslationsBirdSectionsStatusDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Status';
  @override
  String get subTitle => 'Informationen zum Status des Vogels';
}

// Path: bird.sections.sale
class _TranslationsBirdSectionsSaleDe implements TranslationsBirdSectionsSaleEn {
  _TranslationsBirdSectionsSaleDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Verkauf';
  @override
  String get subTitle => 'Informationen zum Verkauf des Vogels';
}

// Path: bird.sections.purchase
class _TranslationsBirdSectionsPurchaseDe implements TranslationsBirdSectionsPurchaseEn {
  _TranslationsBirdSectionsPurchaseDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Kauf';
  @override
  String get subTitle => 'Informationen zum Kauf des Vogels';
}

// Path: bird.sections.health
class _TranslationsBirdSectionsHealthDe implements TranslationsBirdSectionsHealthEn {
  _TranslationsBirdSectionsHealthDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Gesundheit';
  @override
  String get subTitle => 'Informationen zur Gesundheit des Vogels';
}

// Path: bird.sections.life
class _TranslationsBirdSectionsLifeDe implements TranslationsBirdSectionsLifeEn {
  _TranslationsBirdSectionsLifeDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Lebensphase';
  @override
  String get subTitle => 'Informationen zur Lebensphase des Vogels';
}

// Path: bird.sections.notes
class _TranslationsBirdSectionsNotesDe implements TranslationsBirdSectionsNotesEn {
  _TranslationsBirdSectionsNotesDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Notizen';
  @override
  String get subTitle => 'Informationen zu den Notizen des Vogels';
}

// Path: bird.sections.parent
class _TranslationsBirdSectionsParentDe implements TranslationsBirdSectionsParentEn {
  _TranslationsBirdSectionsParentDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Eltern';
  @override
  String get subTitle => 'Informationen zu den Eltern des Vogels';
}

// Path: bird.sections.children
class _TranslationsBirdSectionsChildrenDe implements TranslationsBirdSectionsChildrenEn {
  _TranslationsBirdSectionsChildrenDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Nachkommen';
  @override
  String get subTitle => 'Informationen zu den Nachkommen des Vogels';
}

// Path: common.sell.price
class _TranslationsCommonSellPriceDe implements TranslationsCommonSellPriceEn {
  _TranslationsCommonSellPriceDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get kFinal => 'Tatsächlicher Verkaufspreis';
  @override
  String get asking => 'Gewünschter Verkaufspreis';
}

// Path: login.field.email
class _TranslationsLoginFieldEmailDe implements TranslationsLoginFieldEmailEn {
  _TranslationsLoginFieldEmailDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Geben Sie Ihre E-Mail ein';
  @override
  late final _TranslationsLoginFieldEmailValidationDe validation = _TranslationsLoginFieldEmailValidationDe._(_root);
}

// Path: login.field.password
class _TranslationsLoginFieldPasswordDe implements TranslationsLoginFieldPasswordEn {
  _TranslationsLoginFieldPasswordDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Geben Sie Ihr Passwort ein';
  @override
  late final _TranslationsLoginFieldPasswordValidationDe validation = _TranslationsLoginFieldPasswordValidationDe._(_root);
}

// Path: snackbars.error.data
class _TranslationsSnackbarsErrorDataDe implements TranslationsSnackbarsErrorDataEn {
  _TranslationsSnackbarsErrorDataDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get fetch => 'Fehler beim Abrufen der Daten';
  @override
  String get save => 'Fehler beim Speichern der Daten';
  @override
  String get delete => 'Fehler beim Löschen der Daten';
}

// Path: login.field.email.validation
class _TranslationsLoginFieldEmailValidationDe implements TranslationsLoginFieldEmailValidationEn {
  _TranslationsLoginFieldEmailValidationDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get error => 'Bitte geben Sie Ihre E-Mail ein';
}

// Path: login.field.password.validation
class _TranslationsLoginFieldPasswordValidationDe implements TranslationsLoginFieldPasswordValidationEn {
  _TranslationsLoginFieldPasswordValidationDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get error => 'Bitte geben Sie Ihr Passwort ein';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsDe {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'app.title':
        return 'birdbreeder';
      case 'finances.title':
        return 'Finanzen';
      case 'account.title':
        return 'Konto';
      case 'breedings.title':
        return 'Züchtungen';
      case 'colors.title':
        return 'Farben';
      case 'colors.add':
        return 'Farbe hinzufügen';
      case 'colors.delete':
        return 'Farbe löschen?';
      case 'colors.color':
        return 'Farbe';
      case 'cages.title':
        return 'Volieren';
      case 'cages.add':
        return 'Voliere hinzufügen';
      case 'cages.delete':
        return 'Voliere löschen?';
      case 'cages.name':
        return 'Name des Volieres';
      case 'cages.description':
        return 'Beschreibung';
      case 'cages.height':
        return 'Höhe';
      case 'cages.width':
        return 'Breite';
      case 'cages.depth':
        return 'Tiefe';
      case 'species.title':
        return 'Arten';
      case 'species.add':
        return 'Art hinzufügen';
      case 'species.delete':
        return 'Art löschen?';
      case 'species.name':
        return 'Name der Art';
      case 'species.latin_name':
        return 'Lateinischer Name';
      case 'contacts.title':
        return 'Kontakte ({{count}})';
      case 'contacts.edit':
        return 'Kontakt bearbeiten';
      case 'contacts.create':
        return 'Kontakt erstellen';
      case 'contacts.deleted':
        return 'Kontakt gelöscht';
      case 'contacts.saved':
        return 'Kontakt gespeichert';
      case 'contacts.fields.first_name':
        return 'Vorname';
      case 'contacts.fields.last_name':
        return 'Nachname';
      case 'contacts.fields.email':
        return 'E-Mail';
      case 'contacts.fields.number':
        return 'Züchternummer';
      case 'contacts.fields.phone':
        return 'Telefonnummer';
      case 'contacts.fields.address':
        return 'Adresse';
      case 'contacts.fields.city':
        return 'Stadt';
      case 'contacts.fields.country':
        return 'Land';
      case 'contacts.fields.postal':
        return 'Postleitzahl';
      case 'contacts.fields.website':
        return 'Webseite';
      case 'contacts.contact':
        return 'Kontakt löschen?';
      case 'contacts.add':
        return 'Kontakt hinzufügen?';
      case 'contacts.sections.personal':
        return 'Persönliche Informationen';
      case 'contacts.sections.breeder':
        return 'Züchterinformationen';
      case 'contacts.sections.contact':
        return 'Kontaktinformationen';
      case 'contacts.sections.address':
        return 'Adresse';
      case 'contacts.sections.meta':
        return 'Metadaten';
      case 'contacts.actionButton.open_website_tooltipp':
        return 'Webseite öffnen';
      case 'contacts.actionButton.send_email_tooltipp':
        return 'E-Mail schreiben';
      case 'contacts.actionButton.call_tooltipp':
        return 'Anrufen';
      case 'breeding_pairs.title':
        return 'Zuchtpaar';
      case 'breeding_pairs.add':
        return 'Zuchtpaar hinzufügen';
      case 'breeding_pairs.delete':
        return 'Zuchtpaar löschen?';
      case 'resources.title':
        return 'Ressourcen';
      case 'resources.usage_count':
        return ({required num count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(
              count,
              zero: 'In keinem Vogel verwendet',
              one: 'Verwendet in einem Vogel',
              other: 'Verwendet in {{n}} Vögel',
            );
      case 'birds.title':
        return 'Vögel';
      case 'bird.title':
        return 'Vogel';
      case 'bird.edit':
        return 'Vogel bearbeiten';
      case 'bird.deleted':
        return 'Vogel gelöscht';
      case 'bird.saved':
        return 'Vogel gespeichert';
      case 'bird.delete':
        return 'Vogel löschen?';
      case 'bird.duplicate':
        return 'Vogel duplizieren';
      case 'bird.add':
        return 'Vogel hinzufügen';
      case 'bird.select_color_label':
        return 'Farbe auswählen';
      case 'bird.select_species_label':
        return 'Art auswählen';
      case 'bird.select_cage_label':
        return 'Voliere auswählen';
      case 'bird.select_owner_label':
        return 'Besitzer auswählen';
      case 'bird.select_sold_to_label':
        return 'Verkauft an auswählen';
      case 'bird.select_bought_from_label':
        return 'Gekauft von auswählen';
      case 'bird.created_information':
        return 'Erstellt am {{DateTime date}} um {{time}}';
      case 'bird.tabs.general':
        return 'Allgemein';
      case 'bird.tabs.state_and_life':
        return 'Zustand';
      case 'bird.tabs.breeding':
        return 'Zucht';
      case 'bird.tabs.purchase_and_sale':
        return 'Finanzen';
      case 'bird.sections.identification.title':
        return 'Identifikation';
      case 'bird.sections.identification.subTitle':
        return 'Informationen zur Identifikation des Vogels';
      case 'bird.sections.keeping.title':
        return 'Haltung';
      case 'bird.sections.keeping.subTitle':
        return 'Informationen zur Haltung des Vogels';
      case 'bird.sections.status.title':
        return 'Status';
      case 'bird.sections.status.subTitle':
        return 'Informationen zum Status des Vogels';
      case 'bird.sections.sale.title':
        return 'Verkauf';
      case 'bird.sections.sale.subTitle':
        return 'Informationen zum Verkauf des Vogels';
      case 'bird.sections.purchase.title':
        return 'Kauf';
      case 'bird.sections.purchase.subTitle':
        return 'Informationen zum Kauf des Vogels';
      case 'bird.sections.health.title':
        return 'Gesundheit';
      case 'bird.sections.health.subTitle':
        return 'Informationen zur Gesundheit des Vogels';
      case 'bird.sections.life.title':
        return 'Lebensphase';
      case 'bird.sections.life.subTitle':
        return 'Informationen zur Lebensphase des Vogels';
      case 'bird.sections.notes.title':
        return 'Notizen';
      case 'bird.sections.notes.subTitle':
        return 'Informationen zu den Notizen des Vogels';
      case 'bird.sections.parent.title':
        return 'Eltern';
      case 'bird.sections.parent.subTitle':
        return 'Informationen zu den Eltern des Vogels';
      case 'bird.sections.children.title':
        return 'Nachkommen';
      case 'bird.sections.children.subTitle':
        return 'Informationen zu den Nachkommen des Vogels';
      case 'common.bottom_sheet.search_empty_builder_text':
        return 'Die Suche nach {{text}} hat leider nichts ergeben.';
      case 'common.life_stage.egg':
        return 'Ei';
      case 'common.life_stage.chick':
        return 'Küken';
      case 'common.life_stage.adult':
        return 'Erwachsen';
      case 'common.life_stage.deceased':
        return 'Verstorben';
      case 'common.sale_status.name':
        return 'Kauf/Verkaufsstatus';
      case 'common.sale_status.not_for_sale':
        return 'Nicht zum Verkauf';
      case 'common.sale_status.listed':
        return 'Zum Verkauf angeboten';
      case 'common.sale_status.reserved':
        return 'Reserviert';
      case 'common.sale_status.sold':
        return 'Verkauft';
      case 'common.all_label':
        return 'Alle';
      case 'common.more_label':
        return 'Mehr';
      case 'common.less_label':
        return 'Weniger';
      case 'common.search':
        return 'Suchen';
      case 'common.countbird':
        return ({required num count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(
              count,
              zero: 'Keine Vögel',
              one: '1 Vogel',
              other: '{count} Vögel',
            );
      case 'common.optional':
        return 'Optional';
      case 'common.apply':
        return 'Übernehmen';
      case 'common.reset':
        return 'Zurücksetzen';
      case 'common.add':
        return 'Hinzufügen';
      case 'common.close':
        return 'Schließen';
      case 'common.cancel':
        return 'Abbrechen';
      case 'common.ok':
        return 'Ok';
      case 'common.sex.name':
        return 'Geschlecht';
      case 'common.sex.male':
        return 'Hahn';
      case 'common.sex.female':
        return 'Henne';
      case 'common.sex.unknown':
        return 'Unbekannt';
      case 'common.sell.year':
        return 'Verkaufsjahr';
      case 'common.sell.bird':
        return 'Vogel verkaufen';
      case 'common.sell.price.kFinal':
        return 'Tatsächlicher Verkaufspreis';
      case 'common.sell.price.asking':
        return 'Gewünschter Verkaufspreis';
      case 'common.bought.year':
        return 'Kaufjahr';
      case 'common.bought.from':
        return 'Gekauft von';
      case 'common.bought.at':
        return 'Gekauft am';
      case 'common.bought.price':
        return 'Kaufpreis';
      case 'common.sorting.name':
        return 'Sortierung';
      case 'common.sorting.updated':
        return 'Zuletzt aktualisiert (neu → alt)';
      case 'common.sorting.age':
        return 'Alter (jung → alt)';
      case 'common.sorting.ringnumber':
        return 'Ringnummer (A → Z)';
      case 'common.something_went_wrong':
        return 'Hoppla, etwas ist schiefgelaufen.';
      case 'common.save':
        return 'Speichern';
      case 'common.general':
        return 'Allgemein';
      case 'common.ringnumber':
        return 'Ringnummer';
      case 'common.notes':
        return 'Notizen';
      case 'common.clutches':
        return 'Gelege';
      case 'common.laid':
        return 'Gelegt';
      case 'common.fertilzed':
        return 'Befruchtet';
      case 'common.hatched':
        return 'Geschlüpft';
      case 'common.fledged':
        return 'Ausgeflogen';
      case 'common.origin':
        return 'Herkunft';
      case 'common.species':
        return 'Art';
      case 'common.color':
        return 'Farbe';
      case 'common.cage':
        return 'Voliere';
      case 'common.owner':
        return 'Besitzer';
      case 'common.sold.to':
        return 'Verkauft an';
      case 'common.sold.at':
        return 'Verkauft am';
      case 'common.gender':
        return 'Geschlecht';
      case 'common.diedAt':
        return 'Sterbedatum';
      case 'common.father':
        return 'Vater';
      case 'common.mother':
        return 'Mutter';
      case 'common.partner':
        return 'Partner';
      case 'common.is_for_sale':
        return 'Zum Verkauf';
      case 'common.yes':
        return 'Ja';
      case 'common.no':
        return 'Nein';
      case 'common.unit.m':
        return 'm';
      case 'common.unit.cm':
        return 'cm';
      case 'common.email':
        return 'E-Mail';
      case 'common.password':
        return 'Passwort';
      case 'common.hint.select':
        return 'Auswählen';
      case 'common.hint.text':
        return 'Eingabe';
      case 'common.required':
        return 'Dieses Feld muss ausgefüllt werden';
      case 'login.signIn':
        return 'Anmelden';
      case 'login.welcome.text':
        return 'Willkommen bei ';
      case 'login.welcome.subText':
        return 'Geben Sie Ihre E-Mail und Ihr Passwort ein, um auf Ihr Konto zuzugreifen';
      case 'login.field.email.hint':
        return 'Geben Sie Ihre E-Mail ein';
      case 'login.field.email.validation.error':
        return 'Bitte geben Sie Ihre E-Mail ein';
      case 'login.field.password.hint':
        return 'Geben Sie Ihr Passwort ein';
      case 'login.field.password.validation.error':
        return 'Bitte geben Sie Ihr Passwort ein';
      case 'menu.name.birds':
        return 'Vögel';
      case 'menu.name.contacts':
        return 'Kontakte';
      case 'menu.name.resources':
        return 'Ressourcen';
      case 'menu.name.breedings':
        return 'Züchtungen';
      case 'menu.name.finances':
        return 'Finanzen';
      case 'menu.name.account':
        return 'Konto';
      case 'menu.addBird':
        return 'Vogel hinzufügen';
      case 'error.message':
        return 'Entschuldigung, es ist ein Fehler aufgetreten';
      case 'dialog.discard_changes.title':
        return 'Änderungen verwerfen?';
      case 'dialog.discard_changes.content':
        return 'Deine Änderungen werden verworfen, bist du sicher?';
      case 'dialog.delete_entry.content':
        return 'Möchten Sie diesen Eintrag wirklich löschen?';
      case 'pop_up_menu.bird.edit':
        return 'Bearbeiten';
      case 'pop_up_menu.bird.show':
        return 'Anzeigen';
      case 'pop_up_menu.bird.duplicate':
        return 'Duplizieren';
      case 'pop_up_menu.bird.delete':
        return 'Löschen';
      case 'snackbars.general.create_failed':
        return 'Konnte nicht erstellt werden';
      case 'snackbars.general.update_failed':
        return 'Konnte nicht aktualisiert werden';
      case 'snackbars.general.delete_failed':
        return 'Konnte nicht gelöscht werden';
      case 'snackbars.general.failed':
        return 'Konnte nicht gelöscht werden';
      case 'snackbars.contacts.create_failed':
        return 'Kontakt konnte nicht erstellt werden';
      case 'snackbars.contacts.update_failed':
        return 'Kontakt konnte nicht aktualisiert werden';
      case 'snackbars.contacts.delete_failed':
        return 'Kontakt konnte nicht gelöscht werden';
      case 'snackbars.error.data.fetch':
        return 'Fehler beim Abrufen der Daten';
      case 'snackbars.error.data.save':
        return 'Fehler beim Speichern der Daten';
      case 'snackbars.error.data.delete':
        return 'Fehler beim Löschen der Daten';
      case 'snackbars.error.login':
        return 'Email oder Passwort ist falsch!';
      default:
        return null;
    }
  }
}
