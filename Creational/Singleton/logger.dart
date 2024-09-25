class AppLogger {
  const AppLogger._(this._breadcrumbMessage);

  final String _breadcrumbMessage;

  static AppLogger? _instance;

  static void initialize([String? breadcrumbMessage]) {
    if (_instance == null) {
      breadcrumbMessage ??= "AppName:";
      _instance = AppLogger._(breadcrumbMessage);
    }
  }

  static AppLogger get instance {
    if (_instance == null) {
      initialize();
    }

    return _instance!;
  }

  void log(Object item) {
    print("$_breadcrumbMessage $item");
  }
}
