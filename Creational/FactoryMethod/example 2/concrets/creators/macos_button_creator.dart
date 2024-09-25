import '../../abstracts/button.dart';
import '../../abstracts/button_creator.dart';
import '../buttons/macos_button.dart';

class MacOSButtonCreator implements ButtonCreator {
  @override
  Button create() {
    return MacOSButton();
  }
}
