import 'Observable.dart';
import 'observer.dart';

void main() {
  RH rh = RH();

  Employee hernandes = Employee(name: "Hernandes", id: 0);
  Employee arturo = Employee(name: "Arturo", id: 1);
  Employee nina = Employee(name: "Nina", id: 2);
  Employee ana = Employee(name: "Ana", id: 3);
  Employee maria = Employee(name: "Maria", id: 4);
  Employee angelica = Employee(name: "Angelica", id: 5);

  rh.addEmployee(hernandes);
  rh.addEmployee(arturo);
  rh.addEmployee(nina);
  rh.addEmployee(ana);
  rh.addEmployee(maria);
  rh.addEmployee(angelica);

  rh.announcePaycheck();

  rh.removeEmployee(angelica);
  rh.removeEmployee(maria);

  print("\n\n");

  rh.announcePaycheck();
}
