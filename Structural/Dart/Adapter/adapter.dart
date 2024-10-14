import 'adaptee.dart';
import 'target_interface.dart';

class CalculatorAdpter implements Calculator {
  late PerformSumAndSubtraction _sumAndSubtraction;

  CalculatorAdpter() {
    _sumAndSubtraction = PerformSumAndSubtraction();
  }

  @override
  num performOperation(int a, int b, String operation) {
    if (operation == "+") return _sumAndSubtraction.sum(a, b);
    if (operation == "-") return _sumAndSubtraction.subtraction(a, b);

    throw Exception("Operation not supported!");
  }
}
