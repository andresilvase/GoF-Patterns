import '../abstract/abstract_creator.dart';
import '../abstract/abstract_product.dart';
import 'concrete_product.dart';

enum PlayWith { hands, foot }

class SoccerCreator implements SportCreator {
  @override
  Sport generateSport() {
    return Soccer('Soccer', PlayWith.foot.name);
  }
}

class VoleyBallCreator implements SportCreator {
  @override
  Sport generateSport() {
    return VoleyBall('VoleyBall', PlayWith.hands.name);
  }
}

class BasketBallCreator implements SportCreator {
  @override
  Sport generateSport() {
    return BasketBall('BasketBall', PlayWith.hands.name);
  }
}
