import '../interfaces/command.dart';
import '../interfaces/receiver.dart';

class DeleteDigit extends Command {
  final Button button;

  DeleteDigit(this.button);

  @override
  String getName() {
    return "DeleteDigit ${button.printNumber()}";
  }

  @override
  String execute() {
    return "";
  }

  @override
  String undo() {
    return "";
  }
}
