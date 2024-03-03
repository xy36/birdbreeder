/// A class that maps objects of type [T] to objects of type [U]
/// and vice versa.
abstract class IMapper<T, U> {
  /// Maps an object of type [T] to an object of type [U].
  U mapFrom(T object);

  /// Maps an object of type [U] to an object of type [T].
  T mapTo(U object);

  /// Maps a list of objects of type [T] to a list of objects of type [U].
  List<U> mapFromList(List<T> objects) {
    return objects.map(mapFrom).toList();
  }

  /// Maps a list of objects of type [U] to a list of objects of type [T].
  List<T> mapToList(List<U> objects) {
    return objects.map(mapTo).toList();
  }
}
