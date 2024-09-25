import '../../abstracts/button_creator.dart';
import '../../abstracts/button.dart';
import '../buttons/ios_button.dart';

class IOSButtonCreator implements ButtonCreator {
  @override
  Button create() {
    return IOSButton();
  }
}
