extension IsListenerExtension on Object {
  bool get isListener => this is IsBlocListenerState;
  bool get isNotListerner => !isListener;
}

abstract class IsBlocListenerState {}
