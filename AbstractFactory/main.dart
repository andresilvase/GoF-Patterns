import 'concreteProducts/veiculo_concrete_product.dart';
import 'utils/enum_veiculo_porte.dart';
import 'auto_socorro.dart';

void runAbstractFactory() {
  List<Veiculo> veiculoList = [
    VeiculoCreator.criar('BMW X6', Porte.grande),
    VeiculoCreator.criar('Celta', Porte.pequeno),
    VeiculoCreator.criar('Jetta', Porte.medio),
  ];

  print('\n##AbstractFactory running example:');
  for (var veiculo in veiculoList) {
    AutoSocorro.criarAutoSocorro(veiculo).realizarAtendimento();
  }
}
