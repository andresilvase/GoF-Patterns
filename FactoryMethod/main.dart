import 'abstract/abstract_creator.dart';
import 'concrete/concrete_creator.dart';
import 'sport_descriptor.dart';

void runFactoryMethod() {
  List<SportCreator> sportList = [
    BasketBallCreator(),
    VoleyBallCreator(),
    SoccerCreator(),
  ];

  print('\n##FactoryMethod running example:');
  for (var sport in sportList) {
    ExcecutionMethod.excecute(sport.generateSport());
  }
}
