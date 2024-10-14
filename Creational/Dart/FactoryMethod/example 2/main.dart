import 'concrets/creators/android_button_creator.dart';
import 'concrets/creators/macos_button_creator.dart';
import 'concrets/creators/ios_button_creator.dart';
import 'abstracts/button_creator.dart';
import 'abstracts/button.dart';

void runFactoryMethod2() {
  print('\n##FactoryMethod2 running example:');

  final ButtonCreator androidButtonCreator = AndroidButtonCreator();
  final Button androidButton = androidButtonCreator.create();
  androidButton.render();

  final ButtonCreator iosButtonCreator = IOSButtonCreator();
  final Button iOSButton = iosButtonCreator.create();
  iOSButton.render();

  final ButtonCreator macOSButtonCreator = MacOSButtonCreator();
  final Button macOSButton = macOSButtonCreator.create();
  macOSButton.render();
}
