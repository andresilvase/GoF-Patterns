class DatabaseSingleton {
  DatabaseSingleton._();
  static final DatabaseSingleton db = DatabaseSingleton._();

  Database? _db;

  // Singleton: Every request returns the same instance.
  Database? database() {
    _db ??= _init();
    return _db;
  }

  // Not a singleton, so every request will return a different instance.
  Database? database2() {
    return _init();
  }

  Database _init() {
    return Database(
      version: DateTime.now().microsecondsSinceEpoch.toString(),
      name: 'MariaDB',
    );
  }
}

class Database {
  Database({
    required this.version,
    required this.name,
  });

  final String version;
  final String name;
}
