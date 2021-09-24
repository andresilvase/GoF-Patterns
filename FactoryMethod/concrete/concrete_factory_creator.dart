import '../abstract/abstract_factory_creator.dart';
import '../abstract/abstract_product.dart';
import '../utils/sport_play_with.dart';
import 'concrete_product.dart';

class SoccerCreator extends SportCreator {
  @override
  Sport generateSport() {
    return Soccer('Soccer', PlayWith.foot);
  }
}

class VoleyBallCreator extends SportCreator {
  @override
  Sport generateSport() {
    return VoleyBall('VoleyBall', PlayWith.hands);
  }
}

class BasketBallCreator extends SportCreator {
  @override
  Sport generateSport() {
    return BasketBall('BasketBall', PlayWith.hands);
  }
}
