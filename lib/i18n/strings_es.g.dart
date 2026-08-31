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
class TranslationsEs extends Translations with BaseTranslations<AppLocale, Translations> {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsEs(
      {Map<String, Node>? overrides,
      PluralResolver? cardinalResolver,
      PluralResolver? ordinalResolver,
      TranslationMetadata<AppLocale, Translations>? meta})
      : assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
        $meta = meta ??
            TranslationMetadata(
              locale: AppLocale.es,
              overrides: overrides ?? {},
              cardinalResolver: cardinalResolver,
              ordinalResolver: ordinalResolver,
            ),
        super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

  /// Metadata for the translations of <es>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final TranslationsEs _root = this; // ignore: unused_field

  @override
  TranslationsEs $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEs(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsAppEs app = _TranslationsAppEs._(_root);
  @override
  late final _TranslationsOnboardingEs onboarding = _TranslationsOnboardingEs._(_root);
  @override
  late final _TranslationsFinancesEs finances = _TranslationsFinancesEs._(_root);
  @override
  late final _TranslationsAccountEs account = _TranslationsAccountEs._(_root);
  @override
  late final _TranslationsBackupEs backup = _TranslationsBackupEs._(_root);
  @override
  late final _TranslationsBreedingsEs breedings = _TranslationsBreedingsEs._(_root);
  @override
  late final _TranslationsColorsEs colors = _TranslationsColorsEs._(_root);
  @override
  late final _TranslationsCagesEs cages = _TranslationsCagesEs._(_root);
  @override
  late final _TranslationsSpeciesEs species = _TranslationsSpeciesEs._(_root);
  @override
  late final _TranslationsContactsEs contacts = _TranslationsContactsEs._(_root);
  @override
  late final _TranslationsBreedingPairsEs breeding_pairs = _TranslationsBreedingPairsEs._(_root);
  @override
  late final _TranslationsResourcesEs resources = _TranslationsResourcesEs._(_root);
  @override
  late final _TranslationsBirdsEs birds = _TranslationsBirdsEs._(_root);
  @override
  late final _TranslationsPedigreeEs pedigree = _TranslationsPedigreeEs._(_root);
  @override
  late final _TranslationsInbreedingEs inbreeding = _TranslationsInbreedingEs._(_root);
  @override
  late final _TranslationsBirdEs bird = _TranslationsBirdEs._(_root);
  @override
  late final _TranslationsPairDetailEs pair_detail = _TranslationsPairDetailEs._(_root);
  @override
  late final _TranslationsBroodEs brood = _TranslationsBroodEs._(_root);
  @override
  late final _TranslationsEggEs egg = _TranslationsEggEs._(_root);
  @override
  late final _TranslationsCommonEs common = _TranslationsCommonEs._(_root);
  @override
  late final _TranslationsAuthEs auth = _TranslationsAuthEs._(_root);
  @override
  late final _TranslationsCsvImportEs csv_import = _TranslationsCsvImportEs._(_root);
  @override
  late final _TranslationsMenuEs menu = _TranslationsMenuEs._(_root);
  @override
  late final _TranslationsErrorEs error = _TranslationsErrorEs._(_root);
  @override
  late final _TranslationsDialogEs dialog = _TranslationsDialogEs._(_root);
  @override
  late final _TranslationsPopUpMenuEs pop_up_menu = _TranslationsPopUpMenuEs._(_root);
  @override
  late final _TranslationsExportEs export = _TranslationsExportEs._(_root);
  @override
  late final _TranslationsDocumentsEs documents = _TranslationsDocumentsEs._(_root);
  @override
  late final _TranslationsSnackbarsEs snackbars = _TranslationsSnackbarsEs._(_root);
}

// Path: app
class _TranslationsAppEs extends TranslationsAppDe {
  _TranslationsAppEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Birdbreeder';
}

// Path: onboarding
class _TranslationsOnboardingEs extends TranslationsOnboardingDe {
  _TranslationsOnboardingEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Configurar perfil';
  @override
  String get subtitle => 'Crea tu propio perfil. Se usa como usuario de la aplicación, por ejemplo para marcar tus propios pájaros.';
  @override
  String get first_name => 'Nombre';
  @override
  String get last_name => 'Apellidos';
  @override
  String get last_name_required => 'Introduce unos apellidos.';
  @override
  String get breeder_number => 'Número de criador';
  @override
  String get breeder_number_required => 'Introduce un número de criador.';
  @override
  String get save => 'Guardar perfil';
  @override
  String get or => 'o';
  @override
  String get restore_backup => 'Restaurar copia de seguridad';
}

// Path: finances
class _TranslationsFinancesEs extends TranslationsFinancesDe {
  _TranslationsFinancesEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Finanzas';
  @override
  late final _TranslationsFinancesCategoriesEs categories = _TranslationsFinancesCategoriesEs._(_root);
  @override
  String get delete => '¿Eliminar el apunte?';
  @override
  late final _TranslationsFinancesAddEs add = _TranslationsFinancesAddEs._(_root);
  @override
  late final _TranslationsFinancesKindEs kind = _TranslationsFinancesKindEs._(_root);
  @override
  late final _TranslationsFinancesSummaryEs summary = _TranslationsFinancesSummaryEs._(_root);
  @override
  late final _TranslationsFinancesViewEs view = _TranslationsFinancesViewEs._(_root);
  @override
  late final _TranslationsFinancesScopeEs scope = _TranslationsFinancesScopeEs._(_root);
  @override
  late final _TranslationsFinancesFilterEs filter = _TranslationsFinancesFilterEs._(_root);
  @override
  late final _TranslationsFinancesSortingEs sorting = _TranslationsFinancesSortingEs._(_root);
}

// Path: account
class _TranslationsAccountEs extends TranslationsAccountDe {
  _TranslationsAccountEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Cuenta';
  @override
  String get logout => 'Cerrar sesión';
  @override
  String get switch_to_local => 'Cambiar a modo local';
  @override
  late final _TranslationsAccountSwitchToLocalDialogEs switch_to_local_dialog = _TranslationsAccountSwitchToLocalDialogEs._(_root);
  @override
  late final _TranslationsAccountLocalModeEs local_mode = _TranslationsAccountLocalModeEs._(_root);
  @override
  late final _TranslationsAccountAppearanceEs appearance = _TranslationsAccountAppearanceEs._(_root);
  @override
  late final _TranslationsAccountLanguageEs language = _TranslationsAccountLanguageEs._(_root);
  @override
  late final _TranslationsAccountCurrencyEs currency = _TranslationsAccountCurrencyEs._(_root);
  @override
  late final _TranslationsAccountProfileEs profile = _TranslationsAccountProfileEs._(_root);
  @override
  late final _TranslationsAccountUserEs user = _TranslationsAccountUserEs._(_root);
  @override
  late final _TranslationsAccountEventsEs events = _TranslationsAccountEventsEs._(_root);
}

// Path: backup
class _TranslationsBackupEs extends TranslationsBackupDe {
  _TranslationsBackupEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get section_title => 'Copia de seguridad';
  @override
  String get page_title => 'Copias de seguridad';
  @override
  String get empty => 'Todavía no hay copias de seguridad.';
  @override
  String get loading => 'Cargando…';
  @override
  String get no_backup_yet => 'Todavía no hay copia de seguridad';
  @override
  String last_backup({required Object Date}) => 'Última copia de seguridad: ${Date}';
  @override
  late final _TranslationsBackupExternalEs external = _TranslationsBackupExternalEs._(_root);
  @override
  late final _TranslationsBackupActionsEs actions = _TranslationsBackupActionsEs._(_root);
  @override
  String get manual_section => 'Copia de seguridad manual';
  @override
  String get last_backup_label => 'Última copia de seguridad';
  @override
  String get no_backup_size => 'Todavía no hay copia';
  @override
  String get create_hint => 'Abre el cuadro de compartir – elige Drive, Archivos, correo o similar. Las fotos están incluidas.';
  @override
  String get restore_hint => 'Por ejemplo tras cambiar de dispositivo – restaura un estado anterior.';
  @override
  late final _TranslationsBackupRestoreSheetEs restore_sheet = _TranslationsBackupRestoreSheetEs._(_root);
  @override
  late final _TranslationsBackupMenuEs menu = _TranslationsBackupMenuEs._(_root);
  @override
  late final _TranslationsBackupDeleteDialogEs delete_dialog = _TranslationsBackupDeleteDialogEs._(_root);
  @override
  late final _TranslationsBackupRestoreDialogEs restore_dialog = _TranslationsBackupRestoreDialogEs._(_root);
  @override
  late final _TranslationsBackupReminderEs reminder = _TranslationsBackupReminderEs._(_root);
  @override
  late final _TranslationsBackupEventsEs events = _TranslationsBackupEventsEs._(_root);
  @override
  late final _TranslationsBackupCloudEs cloud = _TranslationsBackupCloudEs._(_root);
}

// Path: breedings
class _TranslationsBreedingsEs extends TranslationsBreedingsDe {
  _TranslationsBreedingsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Crías';
}

// Path: colors
class _TranslationsColorsEs extends TranslationsColorsDe {
  _TranslationsColorsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Colores';
  @override
  String get add => 'Añadir color';
  @override
  String get edit => 'Editar color';
  @override
  String get select => 'Seleccionar color';
  @override
  String get pick => 'Seleccionar color';
  @override
  String get delete => '¿Eliminar el color?';
  @override
  String get color => 'Color';
  @override
  String get list_title => 'Variedades de color';
  @override
  String get value_label => 'Valor de color';
  @override
  String get genetics_section => 'Genética (opcional)';
  @override
  String get inheritance_label => 'Herencia';
  @override
  String get inheritance_hint => 'p. ej. autosómica dominante';
  @override
  String get birds_with_color => 'Pájaros con este color';
  @override
  String get no_birds_with_color => 'No hay pájaros con este color';
  @override
  String get empty => 'Sin colores';
  @override
  String get detail_title => 'Color';
  @override
  late final _TranslationsColorsStatsEs stats = _TranslationsColorsStatsEs._(_root);
}

// Path: cages
class _TranslationsCagesEs extends TranslationsCagesDe {
  _TranslationsCagesEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Pajareras';
  @override
  String get add => 'Añadir pajarera';
  @override
  String get edit => 'Editar pajarera';
  @override
  String get select => 'Seleccionar pajarera';
  @override
  String get delete => '¿Eliminar la pajarera?';
  @override
  String get name => 'Nombre de la pajarera';
  @override
  String get description => 'Descripción';
  @override
  String get height => 'Altura';
  @override
  String get width => 'Anchura';
  @override
  String get depth => 'Profundidad';
  @override
  String get list_title => 'Jaulas';
  @override
  String get detail_title => 'Pajarera';
  @override
  late final _TranslationsCagesSectionEs section = _TranslationsCagesSectionEs._(_root);
  @override
  late final _TranslationsCagesFieldEs field = _TranslationsCagesFieldEs._(_root);
  @override
  late final _TranslationsCagesUnitsEs units = _TranslationsCagesUnitsEs._(_root);
  @override
  String get occupancy => 'Ocupación';
  @override
  String get occupied_label => 'Ocupadas';
  @override
  String get free_label => 'Libres';
  @override
  String get birds_count_label => 'Pájaros';
  @override
  String capacity_hint({required Object Occupied}) => 'Actualmente ocupadas: ${Occupied}. No es posible bajar de ${Occupied}.';
  @override
  String get capacity_missing_hint => 'Capacidad no definida — introduce un valor';
  @override
  String get empty_badge => 'VACÍA';
  @override
  String places_occupied({required Object Occupied, required Object Capacity}) => '${Occupied}/${Capacity} plazas ocupadas';
  @override
  String get empty_filter => 'No hay jaulas para este filtro';
  @override
  late final _TranslationsCagesFiltersEs filters = _TranslationsCagesFiltersEs._(_root);
  @override
  late final _TranslationsCagesTypesEs types = _TranslationsCagesTypesEs._(_root);
}

// Path: species
class _TranslationsSpeciesEs extends TranslationsSpeciesDe {
  _TranslationsSpeciesEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Especies';
  @override
  String get add => 'Añadir especie';
  @override
  String get edit => 'Editar especie';
  @override
  String get select => 'Seleccionar especie';
  @override
  String get delete => '¿Eliminar la especie?';
  @override
  String get name => 'Nombre de la especie';
  @override
  String get latin_name => 'Nombre latino';
  @override
  String get detail_title => 'Especie';
  @override
  late final _TranslationsSpeciesSectionEs section = _TranslationsSpeciesSectionEs._(_root);
  @override
  String get incubation => 'Incubación';
  @override
  String get fledge => 'Vuelo';
  @override
  String get days_short => 'd';
  @override
  String lifecycle_total({required Object Days}) => '${Days}d en total';
  @override
  String get lifecycle_hint => 'Se usa automáticamente para las previsiones de eclosión y vuelo.';
  @override
  String lifecycle_label_total({required Object Total}) => '${Total} DÍAS EN TOTAL';
  @override
  String get chick_until_fledge => 'Pollo hasta el vuelo';
  @override
  String hatch_label({required Object Day}) => 'Eclosión · D${Day}';
  @override
  String fledge_label({required Object Day}) => 'Vuelo · D${Day}';
  @override
  String get latin_hint_example => 'p. ej. Melopsittacus undulatus';
  @override
  String get latin_hint => 'Nombre latino de la especie para una identificación precisa.';
  @override
  String get endangered => 'Especie amenazada';
  @override
  String get endangered_hint => 'Marca especies protegidas o consideradas amenazadas.';
  @override
  String get endangered_not => 'Especie no amenazada';
  @override
  String get reportable => 'Sujeta a declaración';
  @override
  String get reportable_hint => 'La tenencia de esta especie debe declararse a las autoridades.';
  @override
  String get reportable_not => 'Sin obligación de declarar';
  @override
  String get suggestions => 'Sugerencias';
  @override
  String get incubation_found => 'Periodo de incubación aplicado';
  @override
  String get incubation_missing => 'No se encontró el periodo de incubación: introdúcelo tú mismo.';
  @override
  String get scientific_name => 'Nombre científico';
  @override
  String get empty => 'Sin especies';
  @override
  String get birds_in_stock => 'Pájaros en plantel';
  @override
  String get no_birds => 'Sin pájaros';
  @override
  late final _TranslationsSpeciesStatsEs stats = _TranslationsSpeciesStatsEs._(_root);
  @override
  String stock_summary({required num count, required Object Count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(
        count,
        one: '${Count} ave en el plantel',
        other: '${Count} aves en el plantel',
      );
  @override
  String get already_added => 'Ya añadida';
  @override
  String get duplicate_warning => 'Ya existe una especie con este nombre.';
  @override
  String get image_remove => 'Quitar imagen';
}

// Path: contacts
class _TranslationsContactsEs extends TranslationsContactsDe {
  _TranslationsContactsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String title({required Object Count}) => 'Contactos (${Count})';
  @override
  String get edit => 'Editar contacto';
  @override
  String get create => 'Crear contacto';
  @override
  String get deleted => 'Contacto eliminado';
  @override
  String get saved => 'Contacto guardado';
  @override
  late final _TranslationsContactsFieldsEs fields = _TranslationsContactsFieldsEs._(_root);
  @override
  String get empty_list_information => 'Todavía no hay contactos. Puedes añadir contactos o importarlos desde un archivo CSV.';
  @override
  String get import_button_text => 'Importar contactos';
  @override
  String get add_contact_button_text => 'Añadir contacto';
  @override
  String get delete => '¿Eliminar el contacto?';
  @override
  String get add => '¿Añadir el contacto?';
  @override
  String get select => 'Seleccionar contacto';
  @override
  late final _TranslationsContactsSectionsEs sections = _TranslationsContactsSectionsEs._(_root);
  @override
  late final _TranslationsContactsActionButtonEs action_button = _TranslationsContactsActionButtonEs._(_root);
  @override
  late final _TranslationsContactsOverviewEs overview = _TranslationsContactsOverviewEs._(_root);
  @override
  late final _TranslationsContactsCardEs card = _TranslationsContactsCardEs._(_root);
  @override
  late final _TranslationsContactsDetailEs detail = _TranslationsContactsDetailEs._(_root);
}

// Path: breeding_pairs
class _TranslationsBreedingPairsEs extends TranslationsBreedingPairsDe {
  _TranslationsBreedingPairsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Pareja de cría';
  @override
  String get add => 'Añadir pareja';
  @override
  String get edit => 'Editar pareja';
  @override
  String get delete => '¿Eliminar la pareja?';
  @override
  late final _TranslationsBreedingPairsStatusEs status = _TranslationsBreedingPairsStatusEs._(_root);
  @override
  String get start_date => 'Fecha de inicio';
  @override
  String get end_date => 'Fecha de fin';
  @override
  String get notes => 'Notas';
  @override
  late final _TranslationsBreedingPairsYearFilterEs year_filter = _TranslationsBreedingPairsYearFilterEs._(_root);
  @override
  late final _TranslationsBreedingPairsFilterEs filter = _TranslationsBreedingPairsFilterEs._(_root);
  @override
  String get pair_one => 'Pareja';
  @override
  String get pair_other => 'Parejas';
  @override
  String cages_count({required Object Count}) => '${Count} jaulas';
  @override
  String active_broods_one({required Object Count}) => '${Count} nidada activa';
  @override
  String active_broods_other({required Object Count}) => '${Count} nidadas activas';
  @override
  String broods_total_one({required Object Count}) => '${Count} nidada';
  @override
  String broods_total_other({required Object Count}) => '${Count} nidadas';
  @override
  late final _TranslationsBreedingPairsBroodStatusEs brood_status = _TranslationsBreedingPairsBroodStatusEs._(_root);
  @override
  String get finished_tag => 'FINALIZADA';
  @override
  String get no_cage => 'Sin jaula';
  @override
  String since({required Object Date}) => 'desde el ${Date}';
  @override
  String until({required Object Date}) => 'hasta el ${Date}';
  @override
  String empty_for_year({required Object Year}) => 'No hay parejas en ${Year}.';
  @override
  String get empty => 'No hay parejas de cría.';
  @override
  String get search_hint => 'Buscar anilla, jaula …';
  @override
  late final _TranslationsBreedingPairsSortByEs sort_by = _TranslationsBreedingPairsSortByEs._(_root);
  @override
  late final _TranslationsBreedingPairsStatsEs stats = _TranslationsBreedingPairsStatsEs._(_root);
}

// Path: resources
class _TranslationsResourcesEs extends TranslationsResourcesDe {
  _TranslationsResourcesEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Recursos';
  @override
  String usage_count({required num count, required Object N}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(
        count,
        zero: 'No se usa en ningún pájaro',
        one: 'Se usa en un pájaro',
        other: 'Se usa en ${N} pájaros',
      );
  @override
  String get no_search_results => 'No se ha encontrado nada, pulsa «Añadir» para crear una nueva entrada.';
  @override
  late final _TranslationsResourcesSectionEs section = _TranslationsResourcesSectionEs._(_root);
  @override
  late final _TranslationsResourcesActionsEs actions = _TranslationsResourcesActionsEs._(_root);
  @override
  late final _TranslationsResourcesColorPickerEs color_picker = _TranslationsResourcesColorPickerEs._(_root);
  @override
  late final _TranslationsResourcesFieldEs field = _TranslationsResourcesFieldEs._(_root);
  @override
  late final _TranslationsResourcesDeleteEs delete = _TranslationsResourcesDeleteEs._(_root);
  @override
  late final _TranslationsResourcesSortEs sort = _TranslationsResourcesSortEs._(_root);
}

// Path: birds
class _TranslationsBirdsEs extends TranslationsBirdsDe {
  _TranslationsBirdsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Pájaros';
  @override
  late final _TranslationsBirdsOverviewEs overview = _TranslationsBirdsOverviewEs._(_root);
  @override
  late final _TranslationsBirdsFilterEs filter = _TranslationsBirdsFilterEs._(_root);
}

// Path: pedigree
class _TranslationsPedigreeEs extends TranslationsPedigreeDe {
  _TranslationsPedigreeEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Pedigrí';
  @override
  String get subtitle => 'Árbol genealógico';
  @override
  String get col_bird => 'Pájaro';
  @override
  String get col_parents => 'Padres';
  @override
  String get col_grandparents => 'Abuelos';
  @override
  String get col_greatgrandparents => 'Bisabuelos';
  @override
  String get col_ancestors => 'Antepasados';
  @override
  String get section_ancestors => 'Ascendientes';
  @override
  String get section_descendants => 'Descendientes';
  @override
  String get no_descendants => 'No hay descendientes registrados';
  @override
  String get unknown => 'Desconocido';
  @override
  String get assign_parent => 'Asignar progenitor';
  @override
  String get add_father => 'Añadir padre';
  @override
  String get add_mother => 'Añadir madre';
  @override
  String get common_ancestor => 'Antepasado común (consanguinidad)';
  @override
  String get sold => 'Vendido';
  @override
  String get not_own => 'No en propiedad';
  @override
  String get deceased => 'Fallecido';
  @override
  String get share => 'Compartir';
  @override
  String share_filename({required Object Ring}) => 'pedigri_${Ring}';
  @override
  String get depth => 'Profundidad';
  @override
  String get depth_all => 'Todas';
  @override
  String get inbreeding_explainer => 'Estos pájaros están emparentados tanto por la línea paterna como por la materna.';
  @override
  String get via_father => 'por el padre';
  @override
  String get via_mother => 'por la madre';
  @override
  late final _TranslationsPedigreeStatsEs stats = _TranslationsPedigreeStatsEs._(_root);
  @override
  String get swipe_hint => 'Desliza para ver mejor';
}

// Path: inbreeding
class _TranslationsInbreedingEs extends TranslationsInbreedingDe {
  _TranslationsInbreedingEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get coefficient => 'Coeficiente de consanguinidad';
  @override
  String get coefficient_short => 'F';
  @override
  String get severity_none => 'Sin consanguinidad';
  @override
  String get severity_low => 'Baja';
  @override
  String get severity_elevated => 'Elevada';
  @override
  String get severity_high => 'Alta';
  @override
  String get common_ancestors_one => '1 antepasado común';
  @override
  String common_ancestors_other({required Object Count}) => '${Count} antepasados comunes';
  @override
  String get path_contribution => 'Contribución';
  @override
  String banner_label({required Object Percent}) => 'Coeficiente de consanguinidad: ${Percent}';
  @override
  String get pair_warning_title => 'Aviso de consanguinidad';
  @override
  String pair_warning_body({required Object Percent, required Object Severity}) =>
      'El emparejamiento de estos pájaros da un coeficiente de consanguinidad de ${Percent} (${Severity}). ¿Crear de todos modos?';
  @override
  String get proceed_anyway => 'Crear de todos modos';
}

// Path: bird
class _TranslationsBirdEs extends TranslationsBirdDe {
  _TranslationsBirdEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Pájaro';
  @override
  String get edit => 'Editar pájaro';
  @override
  String get deleted => 'Pájaro eliminado';
  @override
  String get saved => 'Pájaro guardado';
  @override
  String get delete => '¿Eliminar el pájaro?';
  @override
  String get duplicate => 'Duplicar pájaro';
  @override
  String get add => 'Añadir pájaro';
  @override
  String get select_color_label => 'Seleccionar color';
  @override
  String get select_species_label => 'Seleccionar especie';
  @override
  String get select_cage_label => 'Seleccionar pajarera';
  @override
  String get select_owner_label => 'Seleccionar propietario';
  @override
  String get select_sold_to_label => 'Seleccionar comprador';
  @override
  String get select_bought_from_label => 'Seleccionar vendedor';
  @override
  String created_information({required Object DateTimeDate, required Object Time}) => 'Creado el ${DateTimeDate} a las ${Time}';
  @override
  late final _TranslationsBirdTabsEs tabs = _TranslationsBirdTabsEs._(_root);
  @override
  late final _TranslationsBirdSummaryEs summary = _TranslationsBirdSummaryEs._(_root);
  @override
  late final _TranslationsBirdSectionsEs sections = _TranslationsBirdSectionsEs._(_root);
}

// Path: pair_detail
class _TranslationsPairDetailEs extends TranslationsPairDetailDe {
  _TranslationsPairDetailEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get father_label => '♂ PADRE';
  @override
  String get mother_label => '♀ MADRE';
  @override
  String get current_brood => 'Nidada actual';
  @override
  String get history => 'Historial';
  @override
  String history_count_one({required Object Count}) => '${Count} nidada';
  @override
  String history_count_other({required Object Count}) => '${Count} nidadas';
  @override
  String get brood_short => 'NIDADA';
  @override
  String day({required Object Day}) => 'Día ${Day}';
  @override
  String start_label({required Object Date}) => 'Inicio: ${Date}';
  @override
  String get no_current_brood => 'No hay nidada activa';
  @override
  late final _TranslationsPairDetailKpiEs kpi = _TranslationsPairDetailKpiEs._(_root);
  @override
  String get new_brood => 'Nueva nidada';
  @override
  String since({required Object Date}) => 'desde el ${Date}';
}

// Path: brood
class _TranslationsBroodEs extends TranslationsBroodDe {
  _TranslationsBroodEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Puesta';
  @override
  String get overview => 'Resumen de nidadas';
  @override
  String get latest => 'Última nidada';
  @override
  String get add => 'Añadir puesta';
  @override
  String get delete => '¿Eliminar la puesta?';
  @override
  String get edit => 'Editar puesta';
  @override
  String get empty => 'Todavía no se ha añadido ninguna puesta';
  @override
  String since({required Object Date}) => 'Desde el ${Date}';
  @override
  String eggs_count({required num count, required Object Count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(
        count,
        zero: 'Sin huevos',
        one: '1 huevo',
        other: '${Count} huevos',
      );
  @override
  late final _TranslationsBroodKpiEs kpi = _TranslationsBroodKpiEs._(_root);
  @override
  String hatched_count({required num count, required Object Count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(
        count,
        zero: 'Ninguno eclosionado',
        one: '1 eclosionado',
        other: '${Count} eclosionados',
      );
  @override
  String fledged_count({required num count, required Object Count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(
        count,
        zero: 'Ninguno volado',
        one: '1 volantón',
        other: '${Count} volantones',
      );
  @override
  String get notes => 'Notas (opcional)';
  @override
  String created_information({required Object DateTimeDate, required Object Time}) => 'Creado el ${DateTimeDate} a las ${Time}';
}

// Path: egg
class _TranslationsEggEs extends TranslationsEggDe {
  _TranslationsEggEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Huevo';
  @override
  String get add => 'Añadir huevo';
  @override
  late final _TranslationsEggStatusEs status = _TranslationsEggStatusEs._(_root);
  @override
  late final _TranslationsEggActionEs action = _TranslationsEggActionEs._(_root);
  @override
  String get pick_laid_date => 'Elegir fecha de puesta';
  @override
  String get pick_fledged_date => 'Elegir fecha de vuelo';
  @override
  String get pick_hatched_date => 'Elegir fecha de eclosión';
  @override
  String get pick_fertilized_date => 'Elegir fecha de fecundación';
  @override
  String get pick_unfertilized_date => 'Elegir fecha de no fecundación';
  @override
  String get pick_died_date => 'Elegir fecha de muerte';
  @override
  String get in_stock => 'En plantel';
  @override
  late final _TranslationsEggLifecycleEs lifecycle = _TranslationsEggLifecycleEs._(_root);
}

// Path: common
class _TranslationsCommonEs extends TranslationsCommonDe {
  _TranslationsCommonEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsCommonBottomSheetEs bottom_sheet = _TranslationsCommonBottomSheetEs._(_root);
  @override
  late final _TranslationsCommonSaleStatusEs sale_status = _TranslationsCommonSaleStatusEs._(_root);
  @override
  String get all_label => 'Todos';
  @override
  String get more_label => 'Más';
  @override
  String get less_label => 'Menos';
  @override
  String get search => 'Buscar';
  @override
  String get search_hint => 'Buscar ...';
  @override
  String countbird({required num count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(
        count,
        zero: 'Sin pájaros',
        one: '1 pájaro',
        other: '{count} pájaros',
      );
  @override
  String get optional => 'Opcional';
  @override
  String get apply => 'Aplicar';
  @override
  String get reset => 'Restablecer';
  @override
  String get add => 'Añadir';
  @override
  String get close => 'Cerrar';
  @override
  String get cancel => 'Cancelar';
  @override
  String get ok => 'Ok';
  @override
  late final _TranslationsCommonSexEs sex = _TranslationsCommonSexEs._(_root);
  @override
  late final _TranslationsCommonSellEs sell = _TranslationsCommonSellEs._(_root);
  @override
  late final _TranslationsCommonBoughtEs bought = _TranslationsCommonBoughtEs._(_root);
  @override
  String eggs_short({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(
        n,
        one: 'Huevo',
        other: 'Huevos',
      );
  @override
  String get laid_short => 'pue.';
  @override
  String get fertilzed_short => 'fec.';
  @override
  String get hatched_short => 'ecl.';
  @override
  String get fledged_short => 'vol.';
  @override
  String get died_short => 'mue.';
  @override
  late final _TranslationsCommonSortingEs sorting = _TranslationsCommonSortingEs._(_root);
  @override
  String get something_went_wrong => 'Vaya, algo ha salido mal.';
  @override
  String get save => 'Guardar';
  @override
  String get general => 'General';
  @override
  String get ringnumber => 'Número de anilla';
  @override
  String get notes => 'Notas';
  @override
  String get clutches => 'Puestas';
  @override
  String get laid => 'Puesto';
  @override
  String get fertilzed => 'Fecundado';
  @override
  String get hatched => 'Eclosionado';
  @override
  String get fledged => 'Volantón';
  @override
  String get origin => 'Procedencia';
  @override
  String get species => 'Especie';
  @override
  String get color => 'Color';
  @override
  String get cage => 'Pajarera';
  @override
  String get owner => 'Propietario';
  @override
  late final _TranslationsCommonSoldEs sold = _TranslationsCommonSoldEs._(_root);
  @override
  String get gender => 'Sexo';
  @override
  String get died_at => 'Fecha de muerte';
  @override
  String get born_at => 'Fecha de nacimiento';
  @override
  String get father => 'Padre';
  @override
  String get mother => 'Madre';
  @override
  String get partner => 'Pareja';
  @override
  String get is_for_sale => 'En venta';
  @override
  String get yes => 'Sí';
  @override
  String get no => 'No';
  @override
  late final _TranslationsCommonUnitEs unit = _TranslationsCommonUnitEs._(_root);
  @override
  String get email => 'Correo electrónico';
  @override
  String get password => 'Contraseña';
  @override
  late final _TranslationsCommonHintEs hint = _TranslationsCommonHintEs._(_root);
  @override
  String get required => 'Este campo debe rellenarse';
}

// Path: auth
class _TranslationsAuthEs extends TranslationsAuthDe {
  _TranslationsAuthEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get sign_in => 'Iniciar sesión';
  @override
  String get sign_up => 'Registrarse';
  @override
  String get confirm_password => 'Confirmar contraseña';
  @override
  String get passwords_do_not_match => 'Las contraseñas no coinciden';
  @override
  String get create_account => 'Crear cuenta';
  @override
  String get first_name => 'Nombre';
  @override
  String get last_name => 'Apellidos';
  @override
  String get sign_in_text =>
      'Inicia sesión para continuar. Si todavía no tienes cuenta, puedes crear una. Cambia simplemente a la pestaña «Crear cuenta».';
  @override
  String get sign_up_text =>
      'Crea una cuenta para continuar. Si ya tienes cuenta, puedes iniciar sesión sin más. Cambia simplemente a la pestaña «Iniciar sesión».';
  @override
  late final _TranslationsAuthValidatorsEs validators = _TranslationsAuthValidatorsEs._(_root);
}

// Path: csv_import
class _TranslationsCsvImportEs extends TranslationsCsvImportDe {
  _TranslationsCsvImportEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Importación CSV';
  @override
  String get select_type => 'Elige qué quieres importar:';
  @override
  String get back => 'Atrás';
  @override
  String get select_file => 'Seleccionar archivo CSV';
  @override
  String get cancel => 'Cancelar';
  @override
  String get new_import => 'Nueva importación';
  @override
  String get retry => 'Reintentar';
  @override
  String reading({required Object FileName}) => 'Leyendo «${FileName}»...';
  @override
  String importing({required Object ItemName}) => 'Importando ${ItemName}...';
  @override
  String progress({required Object Current, required Object Total}) => '${Current} de ${Total}';
  @override
  String get completed => 'Importación finalizada';
  @override
  late final _TranslationsCsvImportBirdsEs birds = _TranslationsCsvImportBirdsEs._(_root);
  @override
  late final _TranslationsCsvImportContactsEs contacts = _TranslationsCsvImportContactsEs._(_root);
  @override
  late final _TranslationsCsvImportColumnsEs columns = _TranslationsCsvImportColumnsEs._(_root);
  @override
  late final _TranslationsCsvImportPreviewEs preview = _TranslationsCsvImportPreviewEs._(_root);
  @override
  late final _TranslationsCsvImportTableEs table = _TranslationsCsvImportTableEs._(_root);
  @override
  late final _TranslationsCsvImportStatusEs status = _TranslationsCsvImportStatusEs._(_root);
  @override
  late final _TranslationsCsvImportSummaryEs summary = _TranslationsCsvImportSummaryEs._(_root);
  @override
  late final _TranslationsCsvImportErrorsEs errors = _TranslationsCsvImportErrorsEs._(_root);
}

// Path: menu
class _TranslationsMenuEs extends TranslationsMenuDe {
  _TranslationsMenuEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsMenuSectionsEs sections = _TranslationsMenuSectionsEs._(_root);
  @override
  late final _TranslationsMenuBirdsEs birds = _TranslationsMenuBirdsEs._(_root);
  @override
  late final _TranslationsMenuContactsEs contacts = _TranslationsMenuContactsEs._(_root);
  @override
  late final _TranslationsMenuBreedingsEs breedings = _TranslationsMenuBreedingsEs._(_root);
  @override
  late final _TranslationsMenuResourcesEs resources = _TranslationsMenuResourcesEs._(_root);
  @override
  late final _TranslationsMenuFinancesEs finances = _TranslationsMenuFinancesEs._(_root);
  @override
  late final _TranslationsMenuCsvImportEs csv_import = _TranslationsMenuCsvImportEs._(_root);
  @override
  late final _TranslationsMenuAccountEs account = _TranslationsMenuAccountEs._(_root);
  @override
  late final _TranslationsMenuSpeciesEs species = _TranslationsMenuSpeciesEs._(_root);
  @override
  late final _TranslationsMenuCagesEs cages = _TranslationsMenuCagesEs._(_root);
  @override
  late final _TranslationsMenuColorsEs colors = _TranslationsMenuColorsEs._(_root);
  @override
  late final _TranslationsMenuFinanceCategoriesEs finance_categories = _TranslationsMenuFinanceCategoriesEs._(_root);
  @override
  String get add_bird => 'Añadir pájaro';
}

// Path: error
class _TranslationsErrorEs extends TranslationsErrorDe {
  _TranslationsErrorEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get message => 'Lo sentimos, se ha producido un error';
}

// Path: dialog
class _TranslationsDialogEs extends TranslationsDialogDe {
  _TranslationsDialogEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsDialogDiscardChangesEs discard_changes = _TranslationsDialogDiscardChangesEs._(_root);
  @override
  late final _TranslationsDialogDeleteEntryEs delete_entry = _TranslationsDialogDeleteEntryEs._(_root);
}

// Path: pop_up_menu
class _TranslationsPopUpMenuEs extends TranslationsPopUpMenuDe {
  _TranslationsPopUpMenuEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get open => 'Abrir';
  @override
  String get edit => 'Editar';
  @override
  String get show => 'Mostrar';
  @override
  String get pedigree => 'Pedigrí';
  @override
  String get documents => 'Documentos';
  @override
  String get set_ringnumber => 'Establecer número de anilla';
  @override
  String get set_color => 'Establecer color';
  @override
  String get add_to_stock => 'Incorporar al plantel';
  @override
  String get duplicate => 'Duplicar';
  @override
  String get delete => 'Eliminar';
}

// Path: export
class _TranslationsExportEs extends TranslationsExportDe {
  _TranslationsExportEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Exportar';
  @override
  String get action => 'Exportar';
  @override
  String get scope_hint => 'Se exporta exactamente la lista que se muestra ahora.';
  @override
  String get file_name_label => 'Nombre del archivo';
  @override
  String get empty => 'No hay nada que exportar.';
  @override
  late final _TranslationsExportEventsEs events = _TranslationsExportEventsEs._(_root);
  @override
  String get row_count_one => '1 entrada';
  @override
  String row_count_other({required Object Count}) => '${Count} entradas';
  @override
  late final _TranslationsExportFormatEs format = _TranslationsExportFormatEs._(_root);
  @override
  late final _TranslationsExportPresetEs preset = _TranslationsExportPresetEs._(_root);
  @override
  late final _TranslationsExportPdfEs pdf = _TranslationsExportPdfEs._(_root);
  @override
  late final _TranslationsExportHeaderEs header = _TranslationsExportHeaderEs._(_root);
  @override
  String get profile_label => 'Membrete';
  @override
  late final _TranslationsExportSummaryEs summary = _TranslationsExportSummaryEs._(_root);
  @override
  late final _TranslationsExportListsEs lists = _TranslationsExportListsEs._(_root);
  @override
  late final _TranslationsExportFileNamesEs file_names = _TranslationsExportFileNamesEs._(_root);
  @override
  late final _TranslationsExportPresetsEs presets = _TranslationsExportPresetsEs._(_root);
  @override
  late final _TranslationsExportColumnsEs columns = _TranslationsExportColumnsEs._(_root);
}

// Path: documents
class _TranslationsDocumentsEs extends TranslationsDocumentsDe {
  _TranslationsDocumentsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Crear documento';
  @override
  String get action => 'Crear';
  @override
  String get type_label => 'Documento';
  @override
  late final _TranslationsDocumentsTypesEs types = _TranslationsDocumentsTypesEs._(_root);
  @override
  late final _TranslationsDocumentsProfileEs profile = _TranslationsDocumentsProfileEs._(_root);
  @override
  late final _TranslationsDocumentsPedigreeEs pedigree = _TranslationsDocumentsPedigreeEs._(_root);
  @override
  late final _TranslationsDocumentsReceiptEs receipt = _TranslationsDocumentsReceiptEs._(_root);
}

// Path: snackbars
class _TranslationsSnackbarsEs extends TranslationsSnackbarsDe {
  _TranslationsSnackbarsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get sign_in_failed => 'No se ha podido iniciar sesión, comprueba tus credenciales y tu conexión a Internet.';
  @override
  String get sign_up_failed => 'No se ha podido completar el registro, comprueba tus datos y tu conexión a Internet.';
  @override
  String get sign_up_success => 'Registro correcto, se iniciará tu sesión automáticamente.';
}

// Path: finances.categories
class _TranslationsFinancesCategoriesEs extends TranslationsFinancesCategoriesDe {
  _TranslationsFinancesCategoriesEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Categorías';
  @override
  String get category => 'Categoría';
  @override
  String get add => 'Añadir categoría';
  @override
  String get edit => 'Editar categoría';
  @override
  String get select => 'Seleccionar categoría';
  @override
  String get delete => '¿Eliminar la categoría?';
  @override
  String get name => 'Nombre de la categoría';
  @override
  String get color => 'Color de la categoría';
  @override
  String get description => 'Descripción';
  @override
  String get list_title => 'Categorías';
  @override
  String get designation => 'Denominación';
  @override
  String get bookings => 'Movimientos';
  @override
  late final _TranslationsFinancesCategoriesFiltersEs filters = _TranslationsFinancesCategoriesFiltersEs._(_root);
  @override
  late final _TranslationsFinancesCategoriesGroupsEs groups = _TranslationsFinancesCategoriesGroupsEs._(_root);
  @override
  late final _TranslationsFinancesCategoriesKindSingularEs kind_singular = _TranslationsFinancesCategoriesKindSingularEs._(_root);
  @override
  late final _TranslationsFinancesCategoriesPillEs pill = _TranslationsFinancesCategoriesPillEs._(_root);
  @override
  String get empty => 'Sin categorías';
  @override
  String type_lock_hint({required Object Usage}) => 'El tipo no se puede cambiar después de crearla — ${Usage} movimientos vinculados.';
  @override
  String get type_lock_default => 'Determina el signo de cálculo de los movimientos.';
  @override
  String get detail_title => 'Categoría financiera';
  @override
  late final _TranslationsFinancesCategoriesDetailEs detail = _TranslationsFinancesCategoriesDetailEs._(_root);
  @override
  late final _TranslationsFinancesCategoriesMonthsShortEs months_short = _TranslationsFinancesCategoriesMonthsShortEs._(_root);
}

// Path: finances.add
class _TranslationsFinancesAddEs extends TranslationsFinancesAddDe {
  _TranslationsFinancesAddEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Añadir apunte';
  @override
  String get title => 'Concepto';
  @override
  String get date => 'Fecha';
  @override
  String get category => 'Seleccionar categoría';
  @override
  String get amount => 'Introducir importe';
  @override
  String get amount_invalid => 'Introduce un importe válido';
  @override
  String get notes => 'Descripción';
  @override
  String get bird => 'Pájaro relacionado';
}

// Path: finances.kind
class _TranslationsFinancesKindEs extends TranslationsFinancesKindDe {
  _TranslationsFinancesKindEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Tipo';
  @override
  String get income => 'Ingresos';
  @override
  String get expense => 'Gastos';
}

// Path: finances.summary
class _TranslationsFinancesSummaryEs extends TranslationsFinancesSummaryDe {
  _TranslationsFinancesSummaryEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get net => 'Saldo';
  @override
  String get net_label => 'NETO';
  @override
  String get today => 'HOY';
  @override
  String get income_label => 'INGRESOS';
  @override
  String get expense_label => 'GASTOS';
}

// Path: finances.view
class _TranslationsFinancesViewEs extends TranslationsFinancesViewDe {
  _TranslationsFinancesViewEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Todos';
  @override
  String get today => 'Hoy';
  @override
  String get yesterday => 'Ayer';
  @override
  String get search_hint => 'Buscar movimiento …';
  @override
  String get empty => 'Sin movimientos en el periodo';
  @override
  String get categories_filter_title => 'Filtrar por categoría';
  @override
  String get all_categories => 'Todas las categorías';
  @override
  String get filter_button => 'Filtro';
  @override
  String get filter_sheet_title => 'Filtrar categorías';
  @override
  String get filter_clear_all => 'Deseleccionar todo';
  @override
  String get filter_apply => 'Aplicar';
  @override
  String get filter_search_hint => 'Buscar categoría …';
}

// Path: finances.scope
class _TranslationsFinancesScopeEs extends TranslationsFinancesScopeDe {
  _TranslationsFinancesScopeEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get month => 'Mes';
  @override
  String get year => 'Año';
  @override
  String get all => 'Todos';
  @override
  String get custom => 'Periodo';
  @override
  String get current_year => 'ESTE AÑO';
  @override
  String get from_short => 'Desde';
  @override
  String get to_short => 'Hasta';
  @override
  String get pick_date => 'Elegir fecha';
}

// Path: finances.filter
class _TranslationsFinancesFilterEs extends TranslationsFinancesFilterDe {
  _TranslationsFinancesFilterEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get bird => 'Pájaro';
  @override
  String get date_range => 'Periodo';
  @override
  String get from => 'Desde';
  @override
  String get to => 'Hasta';
  @override
  String get all_years => 'Todos';
}

// Path: finances.sorting
class _TranslationsFinancesSortingEs extends TranslationsFinancesSortingDe {
  _TranslationsFinancesSortingEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get date_desc => 'Fecha (nuevo → antiguo)';
  @override
  String get date_asc => 'Fecha (antiguo → nuevo)';
  @override
  String get amount_desc => 'Importe (alto → bajo)';
  @override
  String get amount_asc => 'Importe (bajo → alto)';
}

// Path: account.switch_to_local_dialog
class _TranslationsAccountSwitchToLocalDialogEs extends TranslationsAccountSwitchToLocalDialogDe {
  _TranslationsAccountSwitchToLocalDialogEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Cambiar a modo local';
  @override
  String get content =>
      'Todos tus datos se copiarán del servidor a la base de datos local. Después, la aplicación se reiniciará en modo local.\n\n¿Quieres continuar?';
  @override
  String get confirm => 'Cambiar';
}

// Path: account.local_mode
class _TranslationsAccountLocalModeEs extends TranslationsAccountLocalModeDe {
  _TranslationsAccountLocalModeEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Modo local';
  @override
  String get description => 'Todos los datos se guardan localmente en este dispositivo.';
}

// Path: account.appearance
class _TranslationsAccountAppearanceEs extends TranslationsAccountAppearanceDe {
  _TranslationsAccountAppearanceEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Apariencia';
  @override
  String get system => 'Sistema';
  @override
  String get light => 'Claro';
  @override
  String get dark => 'Oscuro';
}

// Path: account.language
class _TranslationsAccountLanguageEs extends TranslationsAccountLanguageDe {
  _TranslationsAccountLanguageEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Idioma';
  @override
  String get system => 'Idioma del sistema';
  @override
  String get sheet_title => 'Elegir idioma';
}

// Path: account.currency
class _TranslationsAccountCurrencyEs extends TranslationsAccountCurrencyDe {
  _TranslationsAccountCurrencyEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Moneda';
  @override
  String get sheet_title => 'Elegir moneda';
  @override
  String get hint => 'Los importes solo se reetiquetan, no se convierten.';
}

// Path: account.profile
class _TranslationsAccountProfileEs extends TranslationsAccountProfileDe {
  _TranslationsAccountProfileEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String breeder_number({required Object Value}) => 'Número de criador ${Value}';
  @override
  String get no_contact => 'No hay contacto de perfil configurado';
  @override
  String get edit => 'Editar perfil';
}

// Path: account.user
class _TranslationsAccountUserEs extends TranslationsAccountUserDe {
  _TranslationsAccountUserEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String email({required Object Value}) => 'Correo: ${Value}';
  @override
  String first_name({required Object Value}) => 'Nombre: ${Value}';
  @override
  String last_name({required Object Value}) => 'Apellidos: ${Value}';
}

// Path: account.events
class _TranslationsAccountEventsEs extends TranslationsAccountEventsDe {
  _TranslationsAccountEventsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String switch_failed({required Object Error}) => 'El cambio ha fallado: ${Error}';
  @override
  String switched_to_local({required num count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(
        count,
        one: '1 entrada transferida. Modo local activo.',
        other: '{count} entradas transferidas. Modo local activo.',
      );
}

// Path: backup.external
class _TranslationsBackupExternalEs extends TranslationsBackupExternalDe {
  _TranslationsBackupExternalEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get never => 'Nunca guardada externamente';
  @override
  String get today => 'Última copia externa: hoy';
  @override
  String days_ago({required num count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(
        count,
        one: 'Última copia externa: hace 1 día',
        other: 'Última copia externa: hace {count} días',
      );
}

// Path: backup.actions
class _TranslationsBackupActionsEs extends TranslationsBackupActionsDe {
  _TranslationsBackupActionsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get share_latest => 'Compartir última copia';
  @override
  String get create_now => 'Crear copia ahora';
  @override
  String get create_and_save => 'Crear y guardar copia';
  @override
  String get restore => 'Restaurar copia de seguridad';
  @override
  String get manage => 'Gestionar todas las copias…';
  @override
  String get kNew => 'Nueva';
}

// Path: backup.restore_sheet
class _TranslationsBackupRestoreSheetEs extends TranslationsBackupRestoreSheetDe {
  _TranslationsBackupRestoreSheetEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Seleccionar copia de seguridad';
  @override
  String get available => 'Copias disponibles';
  @override
  String get kind_cloud => 'NUBE';
  @override
  String get kind_manual => 'MANUAL';
  @override
  String get pick_file_title => 'Elegir archivo del dispositivo';
  @override
  String get pick_file_sub => 'Seleccionar manualmente una copia .zip';
  @override
  String get empty => 'No se han encontrado copias';
  @override
  String get choose_folder_first => 'Elige primero una carpeta en la nube';
  @override
  String get confirm_title => '¿Restaurar la copia de seguridad?';
  @override
  String warning({required Object Name}) =>
      'Tus datos actuales en este dispositivo se sustituirán por este estado. Los cambios posteriores a «${Name}» se perderán.';
  @override
  String get confirm_button => 'Sí, sustituir y restaurar';
  @override
  String get restoring => 'Restaurando …';
  @override
  String get back => 'Atrás';
}

// Path: backup.menu
class _TranslationsBackupMenuEs extends TranslationsBackupMenuDe {
  _TranslationsBackupMenuEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get share => 'Compartir';
  @override
  String get restore => 'Restaurar';
  @override
  String get delete => 'Eliminar';
}

// Path: backup.delete_dialog
class _TranslationsBackupDeleteDialogEs extends TranslationsBackupDeleteDialogDe {
  _TranslationsBackupDeleteDialogEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => '¿Eliminar la copia de seguridad?';
  @override
  String get confirm => 'Eliminar';
}

// Path: backup.restore_dialog
class _TranslationsBackupRestoreDialogEs extends TranslationsBackupRestoreDialogDe {
  _TranslationsBackupRestoreDialogEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Restaurar copia de seguridad';
  @override
  String get content_picked => 'Los datos locales actuales se sobrescribirán con la copia seleccionada. ¿Continuar?';
  @override
  String content_named({required Object Name}) => 'Los datos locales actuales se sobrescribirán con la copia\n"${Name}".\n\n¿Continuar?';
  @override
  String get confirm => 'Restaurar';
}

// Path: backup.reminder
class _TranslationsBackupReminderEs extends TranslationsBackupReminderDe {
  _TranslationsBackupReminderEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Poner a salvo la copia';
  @override
  String get never => 'Todavía no has guardado ninguna copia de seguridad externa.';
  @override
  String age({required num count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(
        count,
        one: 'Tu última copia externa es de hace 1 día.',
        other: 'Tu última copia externa es de hace {count} días.',
      );
  @override
  String get body => 'Guárdala ahora en un lugar seguro (iCloud, Drive, correo) para que tus datos no se pierdan si extravías el dispositivo.';
  @override
  String get snooze => 'Recordar más tarde';
  @override
  String get already_saved => 'Ya guardada';
  @override
  String get share_now => 'Compartir ahora';
  @override
  String get cloud_hint =>
      'También puedes activar la copia de seguridad automática en la nube: así cada copia se sube a tu nube sin que tengas que hacer nada.';
  @override
  String get setup_cloud => 'Configurar la nube';
}

// Path: backup.events
class _TranslationsBackupEventsEs extends TranslationsBackupEventsDe {
  _TranslationsBackupEventsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get created => 'Copia de seguridad creada';
  @override
  String create_failed({required Object Error}) => 'La copia ha fallado: ${Error}';
  @override
  String share_failed({required Object Error}) => 'No se ha podido compartir: ${Error}';
  @override
  String delete_failed({required Object Error}) => 'No se ha podido eliminar: ${Error}';
  @override
  String restore_failed({required Object Error}) => 'No se ha podido restaurar: ${Error}';
}

// Path: backup.cloud
class _TranslationsBackupCloudEs extends TranslationsBackupCloudDe {
  _TranslationsBackupCloudEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get section_title => 'Copia en la nube';
  @override
  String get enable => 'Guardar automáticamente en la nube';
  @override
  String get choose_location => 'Elegir carpeta en la nube…';
  @override
  String get location_none => 'No se ha elegido carpeta en la nube';
  @override
  String location_set({required Object Name}) => 'Destino: ${Name}';
  @override
  String get sync_now => 'Sincronizar ahora';
  @override
  String get auto_title => 'Copia automática en la nube';
  @override
  String get auto_on => 'Activa · guarda tus datos automáticamente';
  @override
  String get auto_off => 'Desactivada';
  @override
  String get folder_label => 'Carpeta en la nube';
  @override
  String get change => 'Cambiar';
  @override
  late final _TranslationsBackupCloudChooseFolderDialogEs choose_folder_dialog = _TranslationsBackupCloudChooseFolderDialogEs._(_root);
  @override
  late final _TranslationsBackupCloudSyncAfterChangeDialogEs sync_after_change_dialog = _TranslationsBackupCloudSyncAfterChangeDialogEs._(_root);
  @override
  String get last_sync_label => 'Última sincronización';
  @override
  String get syncing => 'Sincronizando …';
  @override
  String get syncing_hint => 'Tus fotos y datos se están subiendo a la nube.';
  @override
  String get settings => 'Ajustes de sincronización';
  @override
  late final _TranslationsBackupCloudIntervalEs interval = _TranslationsBackupCloudIntervalEs._(_root);
  @override
  late final _TranslationsBackupCloudStatusEs status = _TranslationsBackupCloudStatusEs._(_root);
  @override
  late final _TranslationsBackupCloudEventsEs events = _TranslationsBackupCloudEventsEs._(_root);
}

// Path: colors.stats
class _TranslationsColorsStatsEs extends TranslationsColorsStatsDe {
  _TranslationsColorsStatsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get birds => 'Pájaros';
  @override
  String get male_roosters => 'Machos';
  @override
  String get female_hens => 'Hembras';
}

// Path: cages.section
class _TranslationsCagesSectionEs extends TranslationsCagesSectionDe {
  _TranslationsCagesSectionEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get basics => 'Datos básicos';
  @override
  String get capacity => 'Capacidad y ocupación';
}

// Path: cages.field
class _TranslationsCagesFieldEs extends TranslationsCagesFieldDe {
  _TranslationsCagesFieldEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get type => 'Tipo';
  @override
  String get location => 'Ubicación';
  @override
  String get max_capacity => 'Plazas máximas';
}

// Path: cages.units
class _TranslationsCagesUnitsEs extends TranslationsCagesUnitsDe {
  _TranslationsCagesUnitsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get birds => 'pájaros';
}

// Path: cages.filters
class _TranslationsCagesFiltersEs extends TranslationsCagesFiltersDe {
  _TranslationsCagesFiltersEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Todas';
  @override
  String get aviaries => 'Pajareras';
  @override
  String get breeding_boxes => 'Jaulas de cría';
  @override
  String get quarantine => 'Cuarentena';
  @override
  String get empty => 'Vacías';
}

// Path: cages.types
class _TranslationsCagesTypesEs extends TranslationsCagesTypesDe {
  _TranslationsCagesTypesEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get aviary => 'Pajarera';
  @override
  String get breeding_box => 'Jaula de cría';
  @override
  String get quarantine => 'Cuarentena';
}

// Path: species.section
class _TranslationsSpeciesSectionEs extends TranslationsSpeciesSectionDe {
  _TranslationsSpeciesSectionEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get identity => 'Identidad';
  @override
  String get lifecycle => 'Ciclo de vida';
  @override
  String get icon => 'Icono';
  @override
  String get notes => 'Notas';
}

// Path: species.stats
class _TranslationsSpeciesStatsEs extends TranslationsSpeciesStatsDe {
  _TranslationsSpeciesStatsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get stock => 'En plantel';
  @override
  String get male_roosters => 'Machos';
  @override
  String get female_hens => 'Hembras';
}

// Path: contacts.fields
class _TranslationsContactsFieldsEs extends TranslationsContactsFieldsDe {
  _TranslationsContactsFieldsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get first_name => 'Nombre';
  @override
  String get last_name => 'Apellidos';
  @override
  late final _TranslationsContactsFieldsTitleEs title = _TranslationsContactsFieldsTitleEs._(_root);
  @override
  late final _TranslationsContactsFieldsAppUserEs app_user = _TranslationsContactsFieldsAppUserEs._(_root);
  @override
  String get email => 'Correo electrónico';
  @override
  String get number => 'Número de criador';
  @override
  String get phone => 'Número de teléfono';
  @override
  String get cell_phone_number => 'Número de móvil';
  @override
  String get address => 'Dirección';
  @override
  String get city => 'Ciudad';
  @override
  String get country => 'País';
  @override
  String get postal => 'Código postal';
  @override
  String get website => 'Sitio web';
}

// Path: contacts.sections
class _TranslationsContactsSectionsEs extends TranslationsContactsSectionsDe {
  _TranslationsContactsSectionsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get personal => 'Datos personales';
  @override
  String get app_user => 'Usuario de la aplicación';
  @override
  String get breeder => 'Datos del criador';
  @override
  String get contact => 'Datos de contacto';
  @override
  String get address => 'Dirección';
  @override
  String get meta => 'Metadatos';
}

// Path: contacts.action_button
class _TranslationsContactsActionButtonEs extends TranslationsContactsActionButtonDe {
  _TranslationsContactsActionButtonEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get open_website_tooltipp => 'Abrir sitio web';
  @override
  String get send_email_tooltipp => 'Escribir correo';
  @override
  String get call_tooltipp => 'Llamar';
}

// Path: contacts.overview
class _TranslationsContactsOverviewEs extends TranslationsContactsOverviewDe {
  _TranslationsContactsOverviewEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get total_label => 'Contactos';
  @override
  String bought_chip({required Object Count}) => '${Count} comprados';
  @override
  String sold_chip({required Object Count}) => '${Count} vendidos';
  @override
  String get all_contacts => 'Todos los contactos';
  @override
  String get search_hint => 'Buscar nombre, ciudad …';
  @override
  String activity_sold({required Object Ring}) => 'Vendido ${Ring}';
  @override
  String activity_bought({required Object Ring}) => 'Comprado ${Ring}';
}

// Path: contacts.card
class _TranslationsContactsCardEs extends TranslationsContactsCardDe {
  _TranslationsContactsCardEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get call => 'Llamar';
  @override
  String get email => 'Correo';
  @override
  String get details => 'Detalles';
}

// Path: contacts.detail
class _TranslationsContactsDetailEs extends TranslationsContactsDetailDe {
  _TranslationsContactsDetailEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Contacto';
  @override
  String get bought => 'Comprado';
  @override
  String get sold => 'Vendido';
  @override
  String get balance => 'Saldo';
  @override
  String get contact_data => 'Datos de contacto';
  @override
  String get no_contact_data => 'No hay datos de contacto guardados';
  @override
  String get linked_birds => 'Pájaros vinculados';
  @override
  String get role_sold => 'VENDIDO';
  @override
  String get role_bought => 'COMPRADO';
  @override
  String get location => 'Ubicación';
  @override
  String get edit => 'Editar';
}

// Path: breeding_pairs.status
class _TranslationsBreedingPairsStatusEs extends TranslationsBreedingPairsStatusDe {
  _TranslationsBreedingPairsStatusEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Estado';
  @override
  String get active => 'Activa';
  @override
  String get paused => 'En pausa';
  @override
  String get finished => 'Finalizada';
}

// Path: breeding_pairs.year_filter
class _TranslationsBreedingPairsYearFilterEs extends TranslationsBreedingPairsYearFilterDe {
  _TranslationsBreedingPairsYearFilterEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'AÑO';
  @override
  String get all => 'Todos';
}

// Path: breeding_pairs.filter
class _TranslationsBreedingPairsFilterEs extends TranslationsBreedingPairsFilterDe {
  _TranslationsBreedingPairsFilterEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String show_results({required Object Count}) => 'Mostrar ${Count} parejas';
}

// Path: breeding_pairs.brood_status
class _TranslationsBreedingPairsBroodStatusEs extends TranslationsBreedingPairsBroodStatusDe {
  _TranslationsBreedingPairsBroodStatusEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get active => 'activa';
  @override
  String get inactive => 'en pausa';
  @override
  String get completed => 'finalizada';
}

// Path: breeding_pairs.sort_by
class _TranslationsBreedingPairsSortByEs extends TranslationsBreedingPairsSortByDe {
  _TranslationsBreedingPairsSortByEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get cage => 'Pajarera';
  @override
  String get updated => 'Última modificación';
  @override
  String get created => 'Creada';
}

// Path: breeding_pairs.stats
class _TranslationsBreedingPairsStatsEs extends TranslationsBreedingPairsStatsDe {
  _TranslationsBreedingPairsStatsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsBreedingPairsStatsAbbrEs abbr = _TranslationsBreedingPairsStatsAbbrEs._(_root);
  @override
  late final _TranslationsBreedingPairsStatsLabelEs label = _TranslationsBreedingPairsStatsLabelEs._(_root);
  @override
  late final _TranslationsBreedingPairsStatsLegendEs legend = _TranslationsBreedingPairsStatsLegendEs._(_root);
}

// Path: resources.section
class _TranslationsResourcesSectionEs extends TranslationsResourcesSectionDe {
  _TranslationsResourcesSectionEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get identity => 'Identidad';
  @override
  String get basics => 'Datos básicos';
  @override
  String get lifecycle => 'Ciclo de vida';
  @override
  String get icon => 'Icono';
  @override
  String get notes => 'Notas';
  @override
  String get color => 'Color';
}

// Path: resources.actions
class _TranslationsResourcesActionsEs extends TranslationsResourcesActionsDe {
  _TranslationsResourcesActionsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get edit => 'Editar';
}

// Path: resources.color_picker
class _TranslationsResourcesColorPickerEs extends TranslationsResourcesColorPickerDe {
  _TranslationsResourcesColorPickerEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Elegir color';
}

// Path: resources.field
class _TranslationsResourcesFieldEs extends TranslationsResourcesFieldDe {
  _TranslationsResourcesFieldEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Nombre';
  @override
  String get required => 'Campo obligatorio';
}

// Path: resources.delete
class _TranslationsResourcesDeleteEs extends TranslationsResourcesDeleteDe {
  _TranslationsResourcesDeleteEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String with_usage({required Object Usage}) => 'Se desharán ${Usage} vínculos. ¿Continuar de todos modos?';
}

// Path: resources.sort
class _TranslationsResourcesSortEs extends TranslationsResourcesSortDe {
  _TranslationsResourcesSortEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Ordenar';
  @override
  late final _TranslationsResourcesSortByEs by = _TranslationsResourcesSortByEs._(_root);
  @override
  String get asc => 'Ascendente';
  @override
  String get desc => 'Descendente';
}

// Path: birds.overview
class _TranslationsBirdsOverviewEs extends TranslationsBirdsOverviewDe {
  _TranslationsBirdsOverviewEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String subtitle({required Object Birds, required Object Cages}) => '${Birds} pájaros · ${Cages} jaulas';
  @override
  String for_sale({required Object Count}) => '${Count} en venta';
  @override
  String get group_by_cage => 'Agrupar: jaula';
  @override
  String get no_cage => 'Sin jaula';
  @override
  String get birds_label => 'Pájaros';
  @override
  String get sale_badge => 'En venta';
  @override
  String get empty => 'No se han encontrado pájaros';
  @override
  String get view_grouped => 'Agrupar por pajarera';
  @override
  String get view_list => 'Mostrar como lista';
}

// Path: birds.filter
class _TranslationsBirdsFilterEs extends TranslationsBirdsFilterDe {
  _TranslationsBirdsFilterEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String show_results({required Object Count}) => 'Mostrar ${Count} pájaros';
  @override
  String get sort_title => 'Ordenar';
  @override
  String get more_title => 'Más';
  @override
  String get show_deceased => 'Mostrar fallecidos';
  @override
  String get endangered_only => 'Solo especies amenazadas';
  @override
  String get reportable_only => 'Solo especies declarables';
}

// Path: pedigree.stats
class _TranslationsPedigreeStatsEs extends TranslationsPedigreeStatsDe {
  _TranslationsPedigreeStatsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get generations => 'Generaciones';
  @override
  String get ancestors => 'Ascendientes';
  @override
  String get descendants => 'Descendientes';
  @override
  String get inbreeding => 'Consanguinidad';
  @override
  String get no_inbreeding => 'Sin consanguinidad';
}

// Path: bird.tabs
class _TranslationsBirdTabsEs extends TranslationsBirdTabsDe {
  _TranslationsBirdTabsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get general => 'General';
  @override
  String get state_and_life => 'Estado';
  @override
  String get breeding => 'Cría';
  @override
  String get purchase_and_sale => 'Finanzas';
}

// Path: bird.summary
class _TranslationsBirdSummaryEs extends TranslationsBirdSummaryDe {
  _TranslationsBirdSummaryEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get sex => 'Sexo';
  @override
  String get age => 'Edad';
  @override
  String get cage => 'Jaula';
  @override
  String get offspring => 'Descendientes';
  @override
  String get unknown => '—';
}

// Path: bird.sections
class _TranslationsBirdSectionsEs extends TranslationsBirdSectionsDe {
  _TranslationsBirdSectionsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsBirdSectionsIdentificationEs identification = _TranslationsBirdSectionsIdentificationEs._(_root);
  @override
  late final _TranslationsBirdSectionsKeepingEs keeping = _TranslationsBirdSectionsKeepingEs._(_root);
  @override
  late final _TranslationsBirdSectionsStatusEs status = _TranslationsBirdSectionsStatusEs._(_root);
  @override
  late final _TranslationsBirdSectionsSaleEs sale = _TranslationsBirdSectionsSaleEs._(_root);
  @override
  late final _TranslationsBirdSectionsPurchaseEs purchase = _TranslationsBirdSectionsPurchaseEs._(_root);
  @override
  late final _TranslationsBirdSectionsHealthEs health = _TranslationsBirdSectionsHealthEs._(_root);
  @override
  late final _TranslationsBirdSectionsLifeEs life = _TranslationsBirdSectionsLifeEs._(_root);
  @override
  late final _TranslationsBirdSectionsNotesEs notes = _TranslationsBirdSectionsNotesEs._(_root);
  @override
  late final _TranslationsBirdSectionsPhotosEs photos = _TranslationsBirdSectionsPhotosEs._(_root);
  @override
  late final _TranslationsBirdSectionsParentEs parent = _TranslationsBirdSectionsParentEs._(_root);
  @override
  late final _TranslationsBirdSectionsBreederEs breeder = _TranslationsBirdSectionsBreederEs._(_root);
  @override
  late final _TranslationsBirdSectionsChildrenEs children = _TranslationsBirdSectionsChildrenEs._(_root);
}

// Path: pair_detail.kpi
class _TranslationsPairDetailKpiEs extends TranslationsPairDetailKpiDe {
  _TranslationsPairDetailKpiEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get broods => 'Nidadas';
  @override
  String get eggs => 'Huevos';
  @override
  String get hatched => 'Eclosionados';
  @override
  String get fledged => 'Volant.';
}

// Path: brood.kpi
class _TranslationsBroodKpiEs extends TranslationsBroodKpiDe {
  _TranslationsBroodKpiEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get eggs => 'Huevos';
  @override
  String get hatched => 'Eclosionados';
  @override
  String get fledged => 'Volantones';
}

// Path: egg.status
class _TranslationsEggStatusEs extends TranslationsEggStatusDe {
  _TranslationsEggStatusEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get laid => 'Puesto';
  @override
  String get fertilized => 'Fecundado';
  @override
  String get unfertilized => 'No fecundado';
  @override
  String get hatched => 'Eclosionado';
  @override
  String get dead => 'Muerto';
  @override
  String get fledged => 'Volantón';
  @override
  String get in_stock => 'En plantel';
  @override
  String get unknown => 'Desconocido';
}

// Path: egg.action
class _TranslationsEggActionEs extends TranslationsEggActionDe {
  _TranslationsEggActionEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get set_ringnumber => 'Introducir nuevo número de anilla';
}

// Path: egg.lifecycle
class _TranslationsEggLifecycleEs extends TranslationsEggLifecycleDe {
  _TranslationsEggLifecycleEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String title({required Object Number}) => 'Huevo ${Number}';
  @override
  String get section_cycle => 'Ciclo de vida';
  @override
  String get section_details => 'Detalles';
  @override
  String get set_date => 'Establecer fecha';
  @override
  String get confirm_delete => '¿Eliminar el huevo?';
}

// Path: common.bottom_sheet
class _TranslationsCommonBottomSheetEs extends TranslationsCommonBottomSheetDe {
  _TranslationsCommonBottomSheetEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String search_empty_builder_text({required Object Text}) => 'La búsqueda de ${Text} no ha dado ningún resultado.';
}

// Path: common.sale_status
class _TranslationsCommonSaleStatusEs extends TranslationsCommonSaleStatusDe {
  _TranslationsCommonSaleStatusEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Estado de compra/venta';
  @override
  String get not_for_sale => 'No está en venta';
  @override
  String get listed => 'Ofrecido en venta';
  @override
  String get reserved => 'Reservado';
  @override
  String get sold => 'Vendido';
}

// Path: common.sex
class _TranslationsCommonSexEs extends TranslationsCommonSexDe {
  _TranslationsCommonSexEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Sexo';
  @override
  String get male => 'Macho';
  @override
  String get female => 'Hembra';
  @override
  String get unknown => 'Desconocido';
}

// Path: common.sell
class _TranslationsCommonSellEs extends TranslationsCommonSellDe {
  _TranslationsCommonSellEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get year => 'Año de venta';
  @override
  String get bird => 'Vender pájaro';
  @override
  late final _TranslationsCommonSellPriceEs price = _TranslationsCommonSellPriceEs._(_root);
}

// Path: common.bought
class _TranslationsCommonBoughtEs extends TranslationsCommonBoughtDe {
  _TranslationsCommonBoughtEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get year => 'Año de compra';
  @override
  String get from => 'Comprado a';
  @override
  String get at => 'Comprado el';
  @override
  String get price => 'Precio de compra';
}

// Path: common.sorting
class _TranslationsCommonSortingEs extends TranslationsCommonSortingDe {
  _TranslationsCommonSortingEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Orden';
  @override
  String get updated => 'Última actualización';
  @override
  String get age => 'Edad';
  @override
  String get ringnumber => 'Número de anilla';
}

// Path: common.sold
class _TranslationsCommonSoldEs extends TranslationsCommonSoldDe {
  _TranslationsCommonSoldEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get to => 'Vendido a';
  @override
  String get at => 'Vendido el';
}

// Path: common.unit
class _TranslationsCommonUnitEs extends TranslationsCommonUnitDe {
  _TranslationsCommonUnitEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get m => 'm';
  @override
  String get cm => 'cm';
}

// Path: common.hint
class _TranslationsCommonHintEs extends TranslationsCommonHintDe {
  _TranslationsCommonHintEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get select => 'Seleccionar';
  @override
  String get text => 'Introducir';
}

// Path: auth.validators
class _TranslationsAuthValidatorsEs extends TranslationsAuthValidatorsDe {
  _TranslationsAuthValidatorsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get email => 'Introduce una dirección de correo válida';
  @override
  String get email_format => 'Introduce una dirección de correo válida';
  @override
  String get password => 'Introduce una contraseña';
  @override
  String get password_length => 'La contraseña debe tener al menos 6 caracteres';
  @override
  String get first_name => 'Introduce tu nombre';
  @override
  String get first_name_length => 'El nombre debe tener al menos 3 caracteres';
  @override
  String get last_name => 'Introduce tus apellidos';
}

// Path: csv_import.birds
class _TranslationsCsvImportBirdsEs extends TranslationsCsvImportBirdsDe {
  _TranslationsCsvImportBirdsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Pájaros';
  @override
  String get description => 'Importa pájaros con especie,\ncolor y pajarera';
  @override
  String get import_title => 'Importar pájaros desde CSV';
  @override
  String get import_description =>
      'Elige un archivo CSV con los datos de tus pájaros.\nLas especies, colores y pajareras se crean automáticamente si todavía no existen. Como separador en el archivo CSV se espera el punto y coma (;). El formato de fecha debe ser yyyy-MM-dd, dd.MM.yyyy o dd/MM/yyyy.';
  @override
  String import_button({required Object Count}) => 'Importar ${Count} pájaros';
  @override
  String get item_name => 'pájaros';
}

// Path: csv_import.contacts
class _TranslationsCsvImportContactsEs extends TranslationsCsvImportContactsDe {
  _TranslationsCsvImportContactsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Contactos';
  @override
  String get description => 'Importa datos de contacto\ncomo criadores o compradores';
  @override
  String get import_title => 'Importar contactos desde CSV';
  @override
  String get import_description => 'Elige un archivo CSV con tus datos de contacto. Como separador en el archivo CSV se espera el punto y coma (;).';
  @override
  String import_button({required Object Count}) => 'Importar ${Count} contactos';
  @override
  String get item_name => 'contactos';
}

// Path: csv_import.columns
class _TranslationsCsvImportColumnsEs extends TranslationsCsvImportColumnsDe {
  _TranslationsCsvImportColumnsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Columnas admitidas:';
  @override
  String get date_formats => 'Formatos de fecha: yyyy-MM-dd, dd.MM.yyyy, dd/MM/yyyy';
  @override
  String get bird_columns =>
      '• ringnumber / ring / ringnummer - Número de anilla (obligatorio)\n• species / art / vogelart - Especie\n• color / farbe / colour - Color\n• cage / voliere / käfig - Pajarera\n• sex / geschlecht - Sexo (male/female/männlich/weiblich)\n• born_at / geboren / geburtsdatum - Fecha de nacimiento\n• father / vater - Número de anilla del padre\n• mother / mutter - Número de anilla de la madre\n• notes / notizen / bemerkungen - Notas';
  @override
  String get contact_columns =>
      '• firstname / vorname - Nombre\n• name / nachname / lastname - Apellidos (se requiere al menos nombre o apellidos)\n• number / nummer / kundennummer - Número de contacto\n• phone / telefon / mobil - Número de teléfono\n• email / e-mail / mail - Dirección de correo\n• address / adresse / strasse - Calle\n• city / stadt / ort - Ciudad\n• postalcode / plz / zip - Código postal\n• country / land - País\n• website / homepage / url - Sitio web';
}

// Path: csv_import.preview
class _TranslationsCsvImportPreviewEs extends TranslationsCsvImportPreviewDe {
  _TranslationsCsvImportPreviewEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String valid({required Object Count}) => '${Count} válidos';
  @override
  String invalid({required Object Count}) => '${Count} no válidos';
}

// Path: csv_import.table
class _TranslationsCsvImportTableEs extends TranslationsCsvImportTableDe {
  _TranslationsCsvImportTableEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get row => '#';
  @override
  String get ring_number => 'Número de anilla';
  @override
  String get species => 'Especie';
  @override
  String get color => 'Color';
  @override
  String get cage => 'Pajarera';
  @override
  String get sex => 'Sexo';
  @override
  String get birth_date => 'Nacimiento';
  @override
  String get death_date => 'Fallecido';
  @override
  String get father => 'Padre';
  @override
  String get mother => 'Madre';
  @override
  String get breeder => 'Criador';
  @override
  String get owner => 'Propietario';
  @override
  String get status => 'Estado';
  @override
  String get number => 'Número';
  @override
  String get first_name => 'Nombre';
  @override
  String get last_name => 'Apellidos';
  @override
  String get phone => 'Teléfono';
  @override
  String get cell_phone => 'Móvil';
  @override
  String get email => 'Correo';
  @override
  String get city => 'Ciudad';
}

// Path: csv_import.status
class _TranslationsCsvImportStatusEs extends TranslationsCsvImportStatusDe {
  _TranslationsCsvImportStatusEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get error => 'Error';
  @override
  String get missing_ring_number => 'Falta el número de anilla';
  @override
  String get missing_name => 'Falta el nombre';
  @override
  String get no_ring_number => 'Sin número de anilla';
}

// Path: csv_import.summary
class _TranslationsCsvImportSummaryEs extends TranslationsCsvImportSummaryDe {
  _TranslationsCsvImportSummaryEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get successful => 'Importados correctamente';
  @override
  String get failed => 'Fallidos';
  @override
  String get skipped_duplicates => 'Omitidos (duplicados)';
  @override
  String get skipped_invalid => 'Omitidos (no válidos)';
  @override
  String get species_created => 'Nuevas especies creadas';
  @override
  String get colors_created => 'Nuevos colores creados';
  @override
  String get cages_created => 'Nuevas pajareras creadas';
  @override
  String get failed_imports => 'Importaciones fallidas';
  @override
  String get skipped_entries => 'Entradas omitidas (duplicados)';
}

// Path: csv_import.errors
class _TranslationsCsvImportErrorsEs extends TranslationsCsvImportErrorsDe {
  _TranslationsCsvImportErrorsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get select_csv_file => 'Elige un archivo CSV';
  @override
  String get not_csv_file => 'El archivo seleccionado no es un archivo CSV.';
  @override
  String get could_not_read_file => 'No se ha podido leer el archivo';
  @override
  String get error_reading_file => 'Error al leer el archivo';
  @override
  String get ring_number_exists => 'El número de anilla ya existe';
  @override
  String get could_not_create_bird => 'No se ha podido crear el pájaro';
  @override
  String contact_number_exists({required Object Number}) => 'El número de contacto «${Number}» ya existe';
  @override
  String get could_not_create_contact => 'No se ha podido crear el contacto';
}

// Path: menu.sections
class _TranslationsMenuSectionsEs extends TranslationsMenuSectionsDe {
  _TranslationsMenuSectionsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get main => 'Secciones principales';
  @override
  String get data => 'Datos maestros';
  @override
  String get settings => 'Ajustes';
}

// Path: menu.birds
class _TranslationsMenuBirdsEs extends TranslationsMenuBirdsDe {
  _TranslationsMenuBirdsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Pájaros';
  @override
  String get description => 'Gestiona tus pájaros';
}

// Path: menu.contacts
class _TranslationsMenuContactsEs extends TranslationsMenuContactsDe {
  _TranslationsMenuContactsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Contactos';
  @override
  String get description => 'Gestiona tus contactos';
}

// Path: menu.breedings
class _TranslationsMenuBreedingsEs extends TranslationsMenuBreedingsDe {
  _TranslationsMenuBreedingsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Crías';
  @override
  String get description => 'Parejas activas y pasadas';
}

// Path: menu.resources
class _TranslationsMenuResourcesEs extends TranslationsMenuResourcesDe {
  _TranslationsMenuResourcesEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Recursos';
  @override
  String get description => 'Colores, especies, pajareras';
}

// Path: menu.finances
class _TranslationsMenuFinancesEs extends TranslationsMenuFinancesDe {
  _TranslationsMenuFinancesEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Finanzas';
  @override
  String get description => 'Libro de caja';
}

// Path: menu.csv_import
class _TranslationsMenuCsvImportEs extends TranslationsMenuCsvImportDe {
  _TranslationsMenuCsvImportEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Importación CSV';
  @override
  String get description => 'Importa datos desde CSV';
}

// Path: menu.account
class _TranslationsMenuAccountEs extends TranslationsMenuAccountDe {
  _TranslationsMenuAccountEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Cuenta';
  @override
  String get description => 'Tu cuenta';
}

// Path: menu.species
class _TranslationsMenuSpeciesEs extends TranslationsMenuSpeciesDe {
  _TranslationsMenuSpeciesEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Especies';
  @override
  String get description => 'Gestionar especies de pájaros';
}

// Path: menu.cages
class _TranslationsMenuCagesEs extends TranslationsMenuCagesDe {
  _TranslationsMenuCagesEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Pajareras';
  @override
  String get description => 'Pajareras y jaulas';
}

// Path: menu.colors
class _TranslationsMenuColorsEs extends TranslationsMenuColorsDe {
  _TranslationsMenuColorsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Colores';
  @override
  String get description => 'Variedades de color';
}

// Path: menu.finance_categories
class _TranslationsMenuFinanceCategoriesEs extends TranslationsMenuFinanceCategoriesDe {
  _TranslationsMenuFinanceCategoriesEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Categorías financieras';
  @override
  String get description => 'Categorías de ingresos y gastos';
}

// Path: dialog.discard_changes
class _TranslationsDialogDiscardChangesEs extends TranslationsDialogDiscardChangesDe {
  _TranslationsDialogDiscardChangesEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => '¿Descartar los cambios?';
  @override
  String get content => 'Tus cambios se descartarán, ¿estás seguro?';
}

// Path: dialog.delete_entry
class _TranslationsDialogDeleteEntryEs extends TranslationsDialogDeleteEntryDe {
  _TranslationsDialogDeleteEntryEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get content => '¿Seguro que quieres eliminar esta entrada?';
}

// Path: export.events
class _TranslationsExportEventsEs extends TranslationsExportEventsDe {
  _TranslationsExportEventsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String succeeded({required Object FileName}) => '«${FileName}» creado.';
  @override
  String failed({required Object Error}) => 'La exportación ha fallado: ${Error}';
}

// Path: export.format
class _TranslationsExportFormatEs extends TranslationsExportFormatDe {
  _TranslationsExportFormatEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Formato';
  @override
  late final _TranslationsExportFormatCsvEs csv = _TranslationsExportFormatCsvEs._(_root);
  @override
  late final _TranslationsExportFormatPdfEs pdf = _TranslationsExportFormatPdfEs._(_root);
}

// Path: export.preset
class _TranslationsExportPresetEs extends TranslationsExportPresetDe {
  _TranslationsExportPresetEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Alcance';
}

// Path: export.pdf
class _TranslationsExportPdfEs extends TranslationsExportPdfDe {
  _TranslationsExportPdfEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String page({required Object Page, required Object Total}) => 'Página ${Page} de ${Total}';
}

// Path: export.header
class _TranslationsExportHeaderEs extends TranslationsExportHeaderDe {
  _TranslationsExportHeaderEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Membrete PDF';
  @override
  String get subtitle => 'Encabezado para los PDF exportados';
  @override
  String get list_empty => 'Todavía no has creado ningún membrete. Sin perfil, la exportación usa el nombre de la lista y los datos de tu perfil.';
  @override
  String get add => 'Crear membrete';
  @override
  String get new_name => 'Nuevo membrete';
  @override
  String get none => 'Sin membrete';
  @override
  String get default_badge => 'Predeterminado';
  @override
  String get set_default => 'Usar como predeterminado';
  @override
  String get delete_title => '¿Eliminar el membrete?';
  @override
  String delete_content({required Object Name}) => '«${Name}» se eliminará definitivamente.';
  @override
  String get deleted => 'Membrete eliminado.';
  @override
  String get saved => 'Membrete guardado.';
  @override
  String get name_label => 'Nombre del perfil';
  @override
  String get name_hint => 'p. ej. asociación o venta';
  @override
  String get section_layout => 'Disposición';
  @override
  String get section_logo => 'Logotipo';
  @override
  String get section_text => 'Textos';
  @override
  String get section_meta => 'Indicaciones';
  @override
  String get section_footer => 'Pie de página';
  @override
  late final _TranslationsExportHeaderLayoutEs layout = _TranslationsExportHeaderLayoutEs._(_root);
  @override
  late final _TranslationsExportHeaderLogoSizeEs logo_size = _TranslationsExportHeaderLogoSizeEs._(_root);
  @override
  String get logo_pick => 'Elegir logotipo';
  @override
  String get logo_replace => 'Sustituir logotipo';
  @override
  String get logo_remove => 'Quitar logotipo';
  @override
  String get title_label => 'Línea de título';
  @override
  String get subtitle_label => 'Subtítulo';
  @override
  String get footer_label => 'Texto del pie de página';
  @override
  String get address_show => 'Mostrar bloque de dirección';
  @override
  String get address_override_label => 'Bloque de dirección propio';
  @override
  String get address_override_hint => 'Déjalo vacío para usar la dirección de tu perfil';
  @override
  String get address_from_profile => 'Tomar del perfil';
  @override
  String get show_date => 'Mostrar fecha';
  @override
  String get show_count => 'Mostrar cantidad';
  @override
  String get show_filter => 'Mostrar filtros activos';
  @override
  String get show_breeder_number => 'Mostrar número de criador';
  @override
  String get show_divider => 'Mostrar línea divisoria';
  @override
  String get show_page_numbers => 'Mostrar números de página';
  @override
  String get placeholders_hint => 'Toca un marcador para insertarlo';
  @override
  String get preview_title => 'Vista previa';
  @override
  String get preview_list => 'Inventario';
  @override
  String get preview_filter => 'Especie: Periquito común';
}

// Path: export.summary
class _TranslationsExportSummaryEs extends TranslationsExportSummaryDe {
  _TranslationsExportSummaryEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get birds => 'Pájaros';
  @override
  String get pairs => 'Parejas';
  @override
  String get hatch_rate => 'Tasa de eclosión';
  @override
  String get income => 'Ingresos';
  @override
  String get expense => 'Gastos';
  @override
  String get net => 'Saldo';
}

// Path: export.lists
class _TranslationsExportListsEs extends TranslationsExportListsDe {
  _TranslationsExportListsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get birds => 'Inventario';
  @override
  String get breeding_pairs => 'Parejas de cría';
  @override
  String get finances => 'Libro de caja';
}

// Path: export.file_names
class _TranslationsExportFileNamesEs extends TranslationsExportFileNamesDe {
  _TranslationsExportFileNamesEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get birds => 'inventario';
  @override
  String get breeding_pairs => 'parejas_cria';
  @override
  String get finances => 'libro_caja';
}

// Path: export.presets
class _TranslationsExportPresetsEs extends TranslationsExportPresetsDe {
  _TranslationsExportPresetsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsExportPresetsBirdsEs birds = _TranslationsExportPresetsBirdsEs._(_root);
  @override
  late final _TranslationsExportPresetsBreedingPairsEs breeding_pairs = _TranslationsExportPresetsBreedingPairsEs._(_root);
  @override
  late final _TranslationsExportPresetsFinancesEs finances = _TranslationsExportPresetsFinancesEs._(_root);
}

// Path: export.columns
class _TranslationsExportColumnsEs extends TranslationsExportColumnsDe {
  _TranslationsExportColumnsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsExportColumnsBirdEs bird = _TranslationsExportColumnsBirdEs._(_root);
  @override
  late final _TranslationsExportColumnsBreedingPairEs breeding_pair = _TranslationsExportColumnsBreedingPairEs._(_root);
  @override
  late final _TranslationsExportColumnsFinanceEs finance = _TranslationsExportColumnsFinanceEs._(_root);
}

// Path: documents.types
class _TranslationsDocumentsTypesEs extends TranslationsDocumentsTypesDe {
  _TranslationsDocumentsTypesEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsDocumentsTypesProfileEs profile = _TranslationsDocumentsTypesProfileEs._(_root);
  @override
  late final _TranslationsDocumentsTypesPedigreeEs pedigree = _TranslationsDocumentsTypesPedigreeEs._(_root);
  @override
  late final _TranslationsDocumentsTypesSaleReceiptEs sale_receipt = _TranslationsDocumentsTypesSaleReceiptEs._(_root);
}

// Path: documents.profile
class _TranslationsDocumentsProfileEs extends TranslationsDocumentsProfileDe {
  _TranslationsDocumentsProfileEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get section_general => 'General';
  @override
  String get section_lifecycle => 'Datos vitales';
  @override
  String get section_origin => 'Origen y cría';
  @override
  String get section_commerce => 'Compra y venta';
  @override
  String get section_notes => 'Notas';
}

// Path: documents.pedigree
class _TranslationsDocumentsPedigreeEs extends TranslationsDocumentsPedigreeDe {
  _TranslationsDocumentsPedigreeEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get statement =>
      'Por la presente se confirma que la ascendencia del ave arriba indicada se refleja correctamente según nuestro leal saber y entender.';
  @override
  String get breeder => 'Criador';
  @override
  String get breeder_number => 'Número de criador';
  @override
  String get signature => 'Lugar, fecha y firma del criador';
}

// Path: documents.receipt
class _TranslationsDocumentsReceiptEs extends TranslationsDocumentsReceiptDe {
  _TranslationsDocumentsReceiptEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get seller => 'Parte cedente';
  @override
  String get buyer => 'Parte receptora';
  @override
  String get bird_data => 'Datos del ave';
  @override
  String get price => 'Precio';
  @override
  String get date => 'Fecha de la cesión';
  @override
  String get statement =>
      'El ave descrita arriba se cede a la parte receptora por el precio indicado. El ave se encuentra en buen estado de salud en el momento de la cesión.';
  @override
  String get signature_seller => 'Lugar, fecha y firma de la parte cedente';
  @override
  String get signature_buyer => 'Lugar, fecha y firma de la parte receptora';
}

// Path: finances.categories.filters
class _TranslationsFinancesCategoriesFiltersEs extends TranslationsFinancesCategoriesFiltersDe {
  _TranslationsFinancesCategoriesFiltersEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Todas';
  @override
  String get income => 'Ingresos';
  @override
  String get expense => 'Gastos';
}

// Path: finances.categories.groups
class _TranslationsFinancesCategoriesGroupsEs extends TranslationsFinancesCategoriesGroupsDe {
  _TranslationsFinancesCategoriesGroupsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get income => 'Ingresos';
  @override
  String get expense => 'Gastos';
}

// Path: finances.categories.kind_singular
class _TranslationsFinancesCategoriesKindSingularEs extends TranslationsFinancesCategoriesKindSingularDe {
  _TranslationsFinancesCategoriesKindSingularEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get income => 'Ingreso';
  @override
  String get expense => 'Gasto';
}

// Path: finances.categories.pill
class _TranslationsFinancesCategoriesPillEs extends TranslationsFinancesCategoriesPillDe {
  _TranslationsFinancesCategoriesPillEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get income => '↑ INGRESO';
  @override
  String get expense => '↓ GASTO';
}

// Path: finances.categories.detail
class _TranslationsFinancesCategoriesDetailEs extends TranslationsFinancesCategoriesDetailDe {
  _TranslationsFinancesCategoriesDetailEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get bookings_label => 'Movimientos';
  @override
  String get six_months => '6 meses';
  @override
  String get avg_per_month => 'Ø al mes';
  @override
  String get recent_bookings => 'Últimos movimientos';
  @override
  String get no_bookings => 'Sin movimientos';
  @override
  String get last_six_months_label => 'últimos 6 meses';
  @override
  String get course_six_months => 'Evolución · 6 meses';
}

// Path: finances.categories.months_short
class _TranslationsFinancesCategoriesMonthsShortEs extends TranslationsFinancesCategoriesMonthsShortDe {
  _TranslationsFinancesCategoriesMonthsShortEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get dec => 'dic';
  @override
  String get jan => 'ene';
  @override
  String get feb => 'feb';
  @override
  String get mar => 'mar';
  @override
  String get apr => 'abr';
  @override
  String get may => 'may';
}

// Path: backup.cloud.choose_folder_dialog
class _TranslationsBackupCloudChooseFolderDialogEs extends TranslationsBackupCloudChooseFolderDialogDe {
  _TranslationsBackupCloudChooseFolderDialogEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => '¿Elegir carpeta en la nube?';
  @override
  String get content => 'Para poder guardar copias automáticas, elige ahora una carpeta en tu nube (por ejemplo Google Drive).';
  @override
  String get confirm => 'Elegir carpeta';
}

// Path: backup.cloud.sync_after_change_dialog
class _TranslationsBackupCloudSyncAfterChangeDialogEs extends TranslationsBackupCloudSyncAfterChangeDialogDe {
  _TranslationsBackupCloudSyncAfterChangeDialogEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => '¿Sincronizar ahora?';
  @override
  String get content => 'La carpeta en la nube ha cambiado. ¿Quieres guardar allí tus datos actuales ahora?';
  @override
  String get confirm => 'Sincronizar';
}

// Path: backup.cloud.interval
class _TranslationsBackupCloudIntervalEs extends TranslationsBackupCloudIntervalDe {
  _TranslationsBackupCloudIntervalEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Intervalo de copia automática';
  @override
  String get sub => 'Con qué frecuencia se guarda automáticamente al iniciar la aplicación';
  @override
  String get sheet_title => 'Elegir intervalo';
  @override
  String get every_launch => 'En cada inicio';
  @override
  String get daily => 'Diario';
  @override
  String get weekly => 'Semanal';
  @override
  String get off => 'Manual';
}

// Path: backup.cloud.status
class _TranslationsBackupCloudStatusEs extends TranslationsBackupCloudStatusDe {
  _TranslationsBackupCloudStatusEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get synced_today => 'Última sincronización: hoy';
  @override
  String synced_days_ago({required num count}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(
        count,
        one: 'Última sincronización: hace 1 día',
        other: 'Última sincronización: hace {count} días',
      );
  @override
  String get never => 'Todavía sin sincronizar';
  @override
  String get unavailable_icloud => 'No has iniciado sesión en iCloud';
  @override
  String get unavailable_folder => 'Sin acceso a la carpeta – vuelve a elegirla';
}

// Path: backup.cloud.events
class _TranslationsBackupCloudEventsEs extends TranslationsBackupCloudEventsDe {
  _TranslationsBackupCloudEventsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String location_chosen({required Object Name}) => 'Carpeta en la nube establecida: ${Name}';
  @override
  String get location_failed => 'No se ha elegido ninguna carpeta';
  @override
  String get sync_succeeded => 'Guardado en la nube';
  @override
  String sync_failed({required Object Error}) => 'La sincronización con la nube ha fallado: ${Error}';
  @override
  String get unavailable_icloud => 'No has iniciado sesión en iCloud';
  @override
  String get unavailable_folder => 'Sin acceso a la carpeta en la nube. Vuelve a elegirla.';
}

// Path: contacts.fields.title
class _TranslationsContactsFieldsTitleEs extends TranslationsContactsFieldsTitleDe {
  _TranslationsContactsFieldsTitleEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Tratamiento';
  @override
  String get none => 'Ninguno';
  @override
  String get mr => 'Sr.';
  @override
  String get ms => 'Sra.';
}

// Path: contacts.fields.app_user
class _TranslationsContactsFieldsAppUserEs extends TranslationsContactsFieldsAppUserDe {
  _TranslationsContactsFieldsAppUserEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Este contacto soy yo';
  @override
  String get sub_title => 'Marca el contacto como usuario de la aplicación.';
}

// Path: breeding_pairs.stats.abbr
class _TranslationsBreedingPairsStatsAbbrEs extends TranslationsBreedingPairsStatsAbbrDe {
  _TranslationsBreedingPairsStatsAbbrEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get laid => 'PU';
  @override
  String get fertilized => 'FE';
  @override
  String get hatched => 'EC';
  @override
  String get fledged => 'VO';
}

// Path: breeding_pairs.stats.label
class _TranslationsBreedingPairsStatsLabelEs extends TranslationsBreedingPairsStatsLabelDe {
  _TranslationsBreedingPairsStatsLabelEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get laid => 'Huevos puestos';
  @override
  String get fertilized => 'Fecundados';
  @override
  String get hatched => 'Eclosionados';
  @override
  String get fledged => 'Volantones';
}

// Path: breeding_pairs.stats.legend
class _TranslationsBreedingPairsStatsLegendEs extends TranslationsBreedingPairsStatsLegendDe {
  _TranslationsBreedingPairsStatsLegendEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Leyenda';
}

// Path: resources.sort.by
class _TranslationsResourcesSortByEs extends TranslationsResourcesSortByDe {
  _TranslationsResourcesSortByEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Nombre';
  @override
  String get created => 'Creado';
  @override
  String get capacity => 'Capacidad';
  @override
  String get kind => 'Tipo';
  @override
  String get lat_name => 'Nombre lat.';
  @override
  String get hex => 'Código de color';
  @override
  String get stock => 'Plantel';
}

// Path: bird.sections.identification
class _TranslationsBirdSectionsIdentificationEs extends TranslationsBirdSectionsIdentificationDe {
  _TranslationsBirdSectionsIdentificationEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Identificación';
  @override
  String get sub_title => 'Datos para identificar al pájaro';
}

// Path: bird.sections.keeping
class _TranslationsBirdSectionsKeepingEs extends TranslationsBirdSectionsKeepingDe {
  _TranslationsBirdSectionsKeepingEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Alojamiento';
  @override
  String get sub_title => 'Datos sobre el alojamiento del pájaro';
}

// Path: bird.sections.status
class _TranslationsBirdSectionsStatusEs extends TranslationsBirdSectionsStatusDe {
  _TranslationsBirdSectionsStatusEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Estado';
  @override
  String get sub_title => 'Datos sobre el estado del pájaro';
}

// Path: bird.sections.sale
class _TranslationsBirdSectionsSaleEs extends TranslationsBirdSectionsSaleDe {
  _TranslationsBirdSectionsSaleEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Venta';
  @override
  String get sub_title => 'Datos sobre la venta del pájaro';
}

// Path: bird.sections.purchase
class _TranslationsBirdSectionsPurchaseEs extends TranslationsBirdSectionsPurchaseDe {
  _TranslationsBirdSectionsPurchaseEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Compra';
  @override
  String get sub_title => 'Datos sobre la compra del pájaro';
}

// Path: bird.sections.health
class _TranslationsBirdSectionsHealthEs extends TranslationsBirdSectionsHealthDe {
  _TranslationsBirdSectionsHealthEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Salud';
  @override
  String get sub_title => 'Datos sobre la salud del pájaro';
}

// Path: bird.sections.life
class _TranslationsBirdSectionsLifeEs extends TranslationsBirdSectionsLifeDe {
  _TranslationsBirdSectionsLifeEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Etapa vital';
  @override
  String get sub_title => 'Datos sobre la etapa vital del pájaro';
  @override
  String get unknown_lifecycle_title => '¿Datos del ciclo de vida desconocidos?';
  @override
  String get unknown_lifecycle_sub_title => 'Activa esta opción si los datos del ciclo de vida no se conocen.';
  @override
  String get unknown_lifecycle_description =>
      'Si hay una fecha de nacimiento, el pájaro se considera adulto. Si hay una fecha de muerte, el pájaro se considera fallecido.';
}

// Path: bird.sections.notes
class _TranslationsBirdSectionsNotesEs extends TranslationsBirdSectionsNotesDe {
  _TranslationsBirdSectionsNotesEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Notas';
  @override
  String get sub_title => 'Datos sobre las notas del pájaro';
}

// Path: bird.sections.photos
class _TranslationsBirdSectionsPhotosEs extends TranslationsBirdSectionsPhotosDe {
  _TranslationsBirdSectionsPhotosEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Fotos';
  @override
  String get sub_title => 'Gestionar las fotos de este pájaro';
  @override
  String get add_camera => 'Cámara';
  @override
  String get add_gallery => 'Galería';
  @override
  String get save_first => 'Guarda primero el pájaro para añadir fotos.';
  @override
  String get empty => 'Todavía no hay fotos';
  @override
  String get delete_title => '¿Eliminar la foto?';
  @override
  String get delete_confirm => 'Eliminar';
  @override
  String get manage => 'Gestionar fotos';
  @override
  String get capture => 'Hacer foto';
  @override
  String get capture_sub => 'o elegir de la galería · varias posibles';
  @override
  String get section_label => 'Fotos de este pájaro';
  @override
  String get add_tile => 'Añadir';
  @override
  String get cover_badge => 'Portada';
  @override
  String get set_cover => 'Establecer como foto de portada';
  @override
  String get remove => 'Quitar';
  @override
  String get source_camera => 'Cámara';
  @override
  String get source_gallery => 'Galería';
  @override
  String get hint =>
      'Toca una foto para verla en grande. Mantén pulsada una foto y arrástrala a otra posición – la primera foto es la de portada y aparece en las listas y en la página de detalle del pájaro.';
  @override
  String get done => 'Listo';
  @override
  String count_preview_one({required Object Count}) => '${Count} foto';
  @override
  String count_preview_other({required Object Count}) => '${Count} fotos';
}

// Path: bird.sections.parent
class _TranslationsBirdSectionsParentEs extends TranslationsBirdSectionsParentDe {
  _TranslationsBirdSectionsParentEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Padres';
  @override
  String get sub_title => 'Datos sobre los padres del pájaro';
}

// Path: bird.sections.breeder
class _TranslationsBirdSectionsBreederEs extends TranslationsBirdSectionsBreederDe {
  _TranslationsBirdSectionsBreederEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Criador';
  @override
  String get sub_title => 'Datos sobre el criador del pájaro';
}

// Path: bird.sections.children
class _TranslationsBirdSectionsChildrenEs extends TranslationsBirdSectionsChildrenDe {
  _TranslationsBirdSectionsChildrenEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Descendientes';
  @override
  String get sub_title => 'Datos sobre los descendientes del pájaro';
}

// Path: common.sell.price
class _TranslationsCommonSellPriceEs extends TranslationsCommonSellPriceDe {
  _TranslationsCommonSellPriceEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get kFinal => 'Precio de venta real';
  @override
  String get asking => 'Precio de venta deseado';
}

// Path: export.format.csv
class _TranslationsExportFormatCsvEs extends TranslationsExportFormatCsvDe {
  _TranslationsExportFormatCsvEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'CSV';
  @override
  String get description => 'Para Excel y hojas de cálculo';
}

// Path: export.format.pdf
class _TranslationsExportFormatPdfEs extends TranslationsExportFormatPdfDe {
  _TranslationsExportFormatPdfEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'PDF';
  @override
  String get description => 'Para imprimir y compartir';
}

// Path: export.header.layout
class _TranslationsExportHeaderLayoutEs extends TranslationsExportHeaderLayoutDe {
  _TranslationsExportHeaderLayoutEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get logo_left => 'Logotipo a la izquierda';
  @override
  String get centered => 'Centrado';
  @override
  String get address_left_logo_right => 'Dirección a la izquierda, logotipo a la derecha';
}

// Path: export.header.logo_size
class _TranslationsExportHeaderLogoSizeEs extends TranslationsExportHeaderLogoSizeDe {
  _TranslationsExportHeaderLogoSizeEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Tamaño';
  @override
  String get small => 'Pequeño';
  @override
  String get medium => 'Mediano';
  @override
  String get large => 'Grande';
}

// Path: export.presets.birds
class _TranslationsExportPresetsBirdsEs extends TranslationsExportPresetsBirdsDe {
  _TranslationsExportPresetsBirdsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get overview => 'Resumen';
  @override
  String get full => 'Completo';
}

// Path: export.presets.breeding_pairs
class _TranslationsExportPresetsBreedingPairsEs extends TranslationsExportPresetsBreedingPairsDe {
  _TranslationsExportPresetsBreedingPairsEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get overview => 'Resumen';
  @override
  String get full => 'Completo';
}

// Path: export.presets.finances
class _TranslationsExportPresetsFinancesEs extends TranslationsExportPresetsFinancesDe {
  _TranslationsExportPresetsFinancesEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get bookings => 'Movimientos';
  @override
  String get full => 'Completo';
}

// Path: export.columns.bird
class _TranslationsExportColumnsBirdEs extends TranslationsExportColumnsBirdDe {
  _TranslationsExportColumnsBirdEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get ring_number => 'Número de anilla';
  @override
  String get species => 'Especie';
  @override
  String get color => 'Color';
  @override
  String get cage => 'Pajarera';
  @override
  String get sex => 'Sexo';
  @override
  String get laid_at => 'Puesto el';
  @override
  String get hatched_at => 'Eclosionado el';
  @override
  String get fledged_at => 'Volado el';
  @override
  String get born_at => 'Nacido el';
  @override
  String get died_at => 'Fallecido el';
  @override
  String get father => 'Padre';
  @override
  String get mother => 'Madre';
  @override
  String get breeder => 'Criador';
  @override
  String get breeder_number => 'Número de criador';
  @override
  String get owner => 'Propietario';
  @override
  String get owner_number => 'Número del propietario';
  @override
  String get bought_at => 'Comprado el';
  @override
  String get bought_price => 'Precio de compra';
  @override
  String get bought_from => 'Comprado a';
  @override
  String get sale_status => 'Estado de venta';
  @override
  String get asking_price => 'Precio solicitado';
  @override
  String get final_price => 'Precio final';
  @override
  String get sold_at => 'Vendido el';
  @override
  String get sold_to => 'Vendido a';
  @override
  String get notes => 'Notas';
}

// Path: export.columns.breeding_pair
class _TranslationsExportColumnsBreedingPairEs extends TranslationsExportColumnsBreedingPairDe {
  _TranslationsExportColumnsBreedingPairEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get father_ring => 'Padre (anilla)';
  @override
  String get father_species => 'Padre (especie)';
  @override
  String get mother_ring => 'Madre (anilla)';
  @override
  String get mother_species => 'Madre (especie)';
  @override
  String get cage => 'Pajarera';
  @override
  String get status => 'Estado';
  @override
  String get start => 'Inicio';
  @override
  String get end => 'Fin';
  @override
  String get broods => 'Nidadas';
  @override
  String get laid => 'Puestos';
  @override
  String get fertilized => 'Fecundados';
  @override
  String get hatched => 'Eclosionados';
  @override
  String get fledged => 'Volantones';
  @override
  String get notes => 'Notas';
}

// Path: export.columns.finance
class _TranslationsExportColumnsFinanceEs extends TranslationsExportColumnsFinanceDe {
  _TranslationsExportColumnsFinanceEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get date => 'Fecha';
  @override
  String get title => 'Título';
  @override
  String get category => 'Categoría';
  @override
  String get kind => 'Tipo';
  @override
  String get amount => 'Importe';
  @override
  String get bird => 'Pájaro';
  @override
  String get notes => 'Notas';
}

// Path: documents.types.profile
class _TranslationsDocumentsTypesProfileEs extends TranslationsDocumentsTypesProfileDe {
  _TranslationsDocumentsTypesProfileEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Ficha';
  @override
  String get description => 'Todos los datos maestros en una página';
  @override
  String get file_name => 'ficha';
}

// Path: documents.types.pedigree
class _TranslationsDocumentsTypesPedigreeEs extends TranslationsDocumentsTypesPedigreeDe {
  _TranslationsDocumentsTypesPedigreeEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Certificado de pedigrí';
  @override
  String get description => 'Árbol genealógico de tres generaciones';
  @override
  String get file_name => 'certificado_pedigri';
}

// Path: documents.types.sale_receipt
class _TranslationsDocumentsTypesSaleReceiptEs extends TranslationsDocumentsTypesSaleReceiptDe {
  _TranslationsDocumentsTypesSaleReceiptEs._(TranslationsEs root)
      : this._root = root,
        super.internal(root);

  final TranslationsEs _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Recibo de cesión';
  @override
  String get description => 'Recibo de venta o cesión';
  @override
  String get file_name => 'recibo_cesion';
}
