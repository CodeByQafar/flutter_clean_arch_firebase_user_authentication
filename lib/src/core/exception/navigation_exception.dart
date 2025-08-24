class NavigationException implements Exception{
  final String message;

  NavigationException(this.message);

  @override
  String toString() {
    return 'NavigationException: $message';
  }
}