import '../interfaces/receiver.dart';

class ButtonWithDigit extends Button {
  final String digit;

  ButtonWithDigit(this.digit);

  @override
  String delete() {
    return "";
  }

  @override
  String printNumber() {
    return digit;
  }
}
