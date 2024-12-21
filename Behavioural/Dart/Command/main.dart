import 'dart:math';

import 'interfaces/command.dart';
import 'commands/delete_digit.dart';
import 'commands/press_button.dart';
import 'invoker.dart';
import 'interfaces/receiver.dart';
import 'receivers/receivers.dart';

void main() {
  CommandInvoker commandInvoker = CommandInvoker();

  final targetTumber = "329871234560";
  List<String> typedNumber = [];

  // Objective: Iterate over random numbers until it prints the target number.
  // Meanwhile, we can see the command pattern in action by sending commands
  // to be executed in another object class.

  int iterations = 0;
  while (typedNumber.join("") != targetTumber) {
    int n = Random().nextInt(10);
    final digit = n.toString();

    Button button = ButtonWithDigit(digit);
    Command command = PressButton(button);

    commandInvoker.addCommand(command);
    commandInvoker.executeCommands();
    typedNumber.add(digit);

    int typedNumberLength = typedNumber.length;
    if (typedNumber[typedNumberLength - 1] != targetTumber[typedNumberLength - 1]) {
      Command command = DeleteDigit(button);
      commandInvoker.addCommand(command);
      commandInvoker.executeCommands();

      typedNumber.removeLast();
    }

    iterations++;
  }

  print("\nNumber ${typedNumber.join("")} found after $iterations iterations.\n");

  print("Execution Log...");
  commandInvoker.showExecutionLog();
}
