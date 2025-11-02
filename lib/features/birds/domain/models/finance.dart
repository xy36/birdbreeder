// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'finance.freezed.dart';
part 'finance.g.dart';

@freezed
class Finance with _$Finance {
  const factory Finance({
    required String id,
    required String categoryId,
    String? birdId,
    DateTime? date,
    required double amount,
    required String title,
    String? notes,
  }) = _Finance;

  factory Finance.fromJson(Map<String, dynamic> json) =>
      _$FinanceFromJson(json);

  factory Finance.create({
    String? birdId,
    required String categoryId,
    required double amount,
    required String title,
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
}
