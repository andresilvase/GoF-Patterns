import '../../abstracts/button.dart';
import '../../abstracts/button_creator.dart';
import '../buttons/android_button.dart';

class AndroidButtonCreator implements ButtonCreator {
  @override
  Button create() {
    return AndroidButton();
  }
}
