import 'sport_play_with.dart';

extension SportPlayWithExtension on PlayWith {
  String tostring() {
    return toString().split('.').last;
  }
}
