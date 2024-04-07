mixin Timestamp {
  DateTime? lastUpdated;

  void setLastUpdated() {
    lastUpdated = DateTime.now();
  }
}
