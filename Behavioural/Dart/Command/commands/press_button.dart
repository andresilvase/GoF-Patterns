import '../interfaces/command.dart';
import '../interfaces/receiver.dart';

class PressButton extends Command {
  final Button button;

  PressButton(this.button);

  @override
  String getName() {
    return "PressButton ${button.printNumber()}";
  }

  @override
  String execute() {
    return button.printNumber();
  }

  @override
  String undo() {
    return button.delete();
  }
}
