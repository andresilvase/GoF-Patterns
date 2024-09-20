class Database {
  Database._(this.name, this.version);

  final String version;
  final String name;

  static Database? _instance;

  factory Database.initialize({required String name, required String version}) {
    if (_instance == null) _instance = Database._(name, version);

    return _instance!;
  }

  static Database get instance {
    if (_instance == null) {
      throw Exception(
        'Database is not initialized yet. Call initialize() first.',
      );
    }

    return _instance!;
  }

  // Not a singleton, so every request will return a different instance.
  static Database initialize2({required String name, required String version}) {
    return Database._(name, version);
  }
}
