import 'observer.dart';

class RH {
  List<Observer> listerners = List.empty(growable: true);

  void addEmployee(Observer observer) {
    listerners.add(observer);
  }

  void announcePaycheck() {
    _notifyListeners();
  }

  void removeEmployee(Observer observer) {
    listerners.remove(observer);
  }

  void _notifyListeners() {
    for (final listerner in listerners) {
      listerner.update("The paycheck is available!");
    }
  }
}
