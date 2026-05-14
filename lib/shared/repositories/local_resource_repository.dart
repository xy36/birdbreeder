import 'package:async/async.dart';
import 'package:birdbreeder/services/database/app_database.dart';
import 'package:birdbreeder/services/logging_service.dart';
import 'package:birdbreeder/shared/repositories/i_crud_repository.dart';
import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';

const _uuid = Uuid();

class LocalResourceRepository<TModel, TDto>
    implements ICrudRepository<TModel> {
  LocalResourceRepository({
    required this.database,
    required this.tableName,
    required this.loggingService,
    required this.toJson,
    required this.fromJson,
    required this.toDto,
    required this.fromDto,
    this.boolColumns = const {},
  });

  final AppDatabase database;
  final String tableName;
  final LoggingService loggingService;

  final Map<String, dynamic> Function(TDto obj) toJson;
  final TDto Function(Map<String, dynamic> json) fromJson;

  final TDto Function(TModel obj) toDto;
  final TModel Function(TDto dto) fromDto;

  /// Snake_case column names that store booleans (SQLite uses 0/1).
  final Set<String> boolColumns;

  // --------------------------
  // Helpers
  // --------------------------

  /// Convert camelCase to snake_case to match Drift column names.
  String _toSnakeCase(String input) {
    return input.replaceAllMapped(
      RegExp('[A-Z]'),
      (match) => '_${match.group(0)!.toLowerCase()}',
    );
  }

  /// Convert snake_case back to camelCase to match DTO field names.
  String _toCamelCase(String input) {
    return input.replaceAllMapped(
      RegExp('_([a-z])'),
      (match) => match.group(1)!.toUpperCase(),
    );
  }

  Map<String, dynamic> _snakeToCamelJson(Map<String, dynamic> json) {
    return json.map((key, value) {
      final camelKey = _toCamelCase(key);
      // SQLite stores booleans as 0/1 — convert back for Dart DTOs.
      if (boolColumns.contains(key) && value is int) {
        return MapEntry(camelKey, value == 1);
      }
      return MapEntry(camelKey, value);
    });
  }

  Map<String, dynamic> _cleanJson(Map<String, dynamic> json) {
    // Remove PocketBase-specific fields and convert keys to snake_case
    final cleaned = <String, dynamic>{};
    for (final entry in json.entries) {
      if (entry.key == 'collectionId' || entry.key == 'collectionName') {
        continue;
      }
      cleaned[_toSnakeCase(entry.key)] = entry.value;
    }
    return cleaned;
  }

  String _buildInsertSql(Map<String, dynamic> data) {
    final columns = data.keys.join(', ');
    final placeholders = data.keys.map((k) => '?').join(', ');
    return 'INSERT INTO $tableName ($columns) VALUES ($placeholders)';
  }

  String _buildUpdateSql(Map<String, dynamic> data, String id) {
    final sets = data.keys.where((k) => k != 'id').map((k) => '$k = ?').join(', ');
    return 'UPDATE $tableName SET $sets WHERE id = ?';
  }

  List<Variable<Object>> _buildVariables(Map<String, dynamic> data) {
    return data.values.map((v) {
      if (v == null) return const Variable<Object>(null);
      if (v is DateTime) return Variable<Object>(v.millisecondsSinceEpoch ~/ 1000);
      if (v is bool) return Variable<Object>(v ? 1 : 0);
      return Variable<Object>(v);
    }).toList();
  }

  List<Variable<Object>> _buildUpdateVariables(Map<String, dynamic> data) {
    final vars = <Variable<Object>>[];
    for (final entry in data.entries) {
      if (entry.key == 'id') continue;
      final v = entry.value;
      if (v == null) {
        vars.add(const Variable<Object>(null));
      } else if (v is DateTime) {
        vars.add(Variable<Object>(v.millisecondsSinceEpoch ~/ 1000));
      } else if (v is bool) {
        vars.add(Variable<Object>(v ? 1 : 0));
      } else {
        vars.add(Variable<Object>(v));
      }
    }
    // Add the id for the WHERE clause
    vars.add(Variable<Object>(data['id']));
    return vars;
  }

  // --------------------------
  // CRUD
  // --------------------------

  @override
  Future<Result<TModel>> create(TModel obj) async {
    try {
      final dto = toDto(obj);
      final json = _cleanJson(toJson(dto));

      // Generate UUID if id is empty
      if (json['id'] == null || json['id'] == '') {
        json['id'] = _uuid.v4().replaceAll('-', '').substring(0, 15);
      }

      // Set timestamps only if not already present
      final now = DateTime.now().toUtc().toIso8601String();
      json['created'] ??= now;
      json['updated'] ??= now;

      final sql = _buildInsertSql(json);
      final vars = _buildVariables(json);

      await database.customInsert(sql, variables: vars);

      // Read back the created record
      return getById(json['id'] as String);
    } on Exception catch (e, s) {
      loggingService.logger.e('Create failed', error: e, stackTrace: s);
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<TModel>> update(String id, TModel obj) async {
    try {
      final dto = toDto(obj);
      final json = _cleanJson(toJson(dto));
      json['id'] = id;
      json['updated'] = DateTime.now().toUtc().toIso8601String();

      final sql = _buildUpdateSql(json, id);
      final vars = _buildUpdateVariables(json);

      await database.customUpdate(sql, variables: vars);

      return getById(id);
    } on Exception catch (e, s) {
      loggingService.logger.e('Update failed', error: e, stackTrace: s);
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<void>> delete(String id) async {
    try {
      await database.customUpdate(
        'DELETE FROM $tableName WHERE id = ?',
        variables: [Variable<String>(id)],
      );
      return Result.value(null);
    } on Exception catch (e, s) {
      loggingService.logger.e('Delete failed', error: e, stackTrace: s);
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<TModel>> getById(String id) async {
    try {
      final rows = await database.customSelect(
        'SELECT * FROM $tableName WHERE id = ?',
        variables: [Variable<String>(id)],
      ).get();

      if (rows.isEmpty) {
        return Result.error('Not found');
      }

      final row = rows.first;
      final map = _snakeToCamelJson(row.data);
      final model = fromDto(fromJson(map));
      return Result.value(model);
    } on Exception catch (e, s) {
      loggingService.logger.e('GetById failed', error: e, stackTrace: s);
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<List<TModel>>> getAll() async {
    try {
      final rows = await database.customSelect(
        'SELECT * FROM $tableName',
      ).get();

      final list = rows.map((QueryRow row) {
        return fromDto(fromJson(_snakeToCamelJson(row.data)));
      }).toList();

      return Result.value(list);
    } on Exception catch (e, s) {
      loggingService.logger.e('GetAll failed', error: e, stackTrace: s);
      return Result.error(e.toString());
    }
  }
}
