import 'package:birdbreeder/core/extensions/finances_extension.dart';
import 'package:birdbreeder/models/searchable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'finance.freezed.dart';
part 'finance.g.dart';

@freezed
abstract class Finance with _$Finance, Searchable {
  const factory Finance({
    required String id,
    required String categoryId,
    required double amount,
    required String title,
    String? birdId,
    DateTime? date,
    String? notes,
    DateTime? created,
    DateTime? updated,
  }) = _Finance;

  const Finance._();

  factory Finance.fromJson(Map<String, dynamic> json) =>
      _$FinanceFromJson(json);

  factory Finance.create({
    required String categoryId,
    required double amount,
    required String title,
    String? birdId,
    String? notes,
    DateTime? date,
  }) {
    return Finance(
      id: '',
      birdId: birdId,
      categoryId: categoryId,
      amount: amount,
      title: title,
      notes: notes,
      date: date,
    );
  }

  @override
  String get searchIndex => [
        categoryResolved?.name,
        birdResolved?.ringNumber,
        title,
        notes,
      ]
          .where((e) => e != null && e.trim().isNotEmpty)
          .map((e) => e!.toLowerCase())
          .join(' ');
}
