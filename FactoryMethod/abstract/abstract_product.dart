import '../utils/sport_play_with_extension.dart';
import '../utils/sport_play_with.dart';

abstract class Sport {
  Sport(this._sportName, this._playWith);

  String describe() {
    return 'I\'m the $_sportName. A sport that plays with ${_playWith.tostring()}';
  }

  final String _sportName;
  final PlayWith _playWith;
}
