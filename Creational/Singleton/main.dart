import 'database_singleton.dart';
import 'logger.dart';

void runSingletonDatabase() {
  print('\n##Singleton running example:');
  for (int i = 0; i < 10; i++) {
    Database db = Database.initialize(
      name: "Intialized With $i",
      version: DateTime.now().microsecondsSinceEpoch.toString(),
    );

    // Database db2 = Database.initialize2(
    //   name: "Intialized With $i",
    //   version: DateTime.now().microsecondsSinceEpoch.toString(),
    // );

    print('Instance $i: ${db.name} ${db.version}');
    // print('Instance $i: ${db2.name} ${db2.version}');
  }
}

void runSingletonLogger() {
  print('\n##Singleton Logger running example:');
  AppLogger.initialize("Tiutiu:");
  final tiutiuLoger = AppLogger.instance;

  // Call just to be assure that this new message will not be used.
  AppLogger.initialize("VeraLucia:");

  tiutiuLoger.log("Unexpected error occured - Server Error 500!");
}
