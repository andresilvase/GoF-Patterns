import 'example 1/concreteProducts/veiculo_concrete_product.dart';
import 'example 1/abstractProducts/veiculo.dart';
import 'auto_socorro.dart';

void runAbstractFactory() {
  List<Veiculo> veiculoList = [
    VeiculoCreator.fusion(),
    VeiculoCreator.jetta(),
    VeiculoCreator.celta(),
  ];

  print('\n##AbstractFactory running example:');
  for (var veiculo in veiculoList) {
    AutoSocorro.criarAutoSocorro(veiculo).realizarAtendimento();
  }
}
