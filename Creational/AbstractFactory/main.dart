import 'concreteProducts/veiculo_concrete_product.dart';
import 'abstractProducts/veiculo.dart';
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
