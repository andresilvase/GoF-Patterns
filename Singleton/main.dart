import '../Singleton/database_singleton.dart';

void runSingleton() {
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
