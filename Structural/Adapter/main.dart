import 'client.dart';

void runAdapter() {
  print('\n##Adapter running example:');

  HandHeldCalculator calculator = HandHeldCalculator();
  calculator.performOperation(5, 5, "+");
  calculator.performOperation(5, 5, "*");
  calculator.performOperation(5, 5, "/");
  calculator.performOperation(5, 5, "-");
}
