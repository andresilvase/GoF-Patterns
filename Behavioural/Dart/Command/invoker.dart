import 'dart:collection';
import 'interfaces/command.dart';

class CommandInvoker {
  Queue<Command> commands = Queue();
  List<String> commandLogging = [];

  void addCommand(Command command) {
    commands.add(command);
  }

  void executeCommands() {
    while (commands.isNotEmpty) {
      final command = commands.removeFirst();
      command.execute();
      commandLogging.add("Command ${command.getName()} executed");
    }
  }

  void showExecutionLog() {
    for (final log in commandLogging) {
      print("$log");
    }
  }
}
