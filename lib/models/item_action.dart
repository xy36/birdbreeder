import 'package:birdbreeder/common_imports.dart';

abstract interface class ItemAction<T> {
  Icon get icon;
  String getLabel(BuildContext context);
  Future<void> execute(BuildContext context, T item, {dynamic extra});
}
