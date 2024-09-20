import 'adapter.dart';
import 'target_interface.dart';

class HandHeldCalculator extends Calculator {
  late CalculatorAdpter calculatorAdpter;

  @override
  num performOperation(int a, int b, String operation) {
    if (operation == "*") {
      final result = a * b;
      print("Operation: $operation - Using class own abilities... $result");
      return result;
    } else if (operation == "/") {
      final result = a / b;

      print("Operation: $operation - Using class own abilities... $result");

      return result;
    } else if (operation == "+" || operation == "-") {
      calculatorAdpter = CalculatorAdpter();
      final result = calculatorAdpter.performOperation(a, b, operation);

      print("Operation: $operation - Using adpteed class abilities... $result");

      return result;
    }

    throw UnimplementedError();
  }
}
