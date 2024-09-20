import '../abstract/abstract_product.dart';

class Soccer implements Sport {
  Soccer(this.sportName, this.playWith);

  final String sportName;
  final String playWith;

  @override
  String describe() {
    return 'I\'m the $sportName. A sport that plays with $playWith';
  }
}

class VoleyBall implements Sport {
  VoleyBall(this.sportName, this.playWith);

  final String sportName;
  final String playWith;

  @override
  String describe() {
    return 'I\'m the $sportName. A sport that plays with $playWith';
  }
}

class BasketBall implements Sport {
  BasketBall(this.sportName, this.playWith);

  final String sportName;
  final String playWith;

  @override
  String describe() {
    return 'I\'m the $sportName. A sport that plays with $playWith';
  }
}
