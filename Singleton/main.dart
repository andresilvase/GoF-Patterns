import '../Singleton/database_singleton.dart';

void runSingleton() {
  print('\n##Singleton running example:');
  for (int i = 0; i < 10; i++) {
    Database? db = DatabaseSingleton.db.database();
    print('Iteração $i: ${db?.name} ${db?.version}');
  }
}
