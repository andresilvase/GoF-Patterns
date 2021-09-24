import '../abstractFactory/auto_socorro_abstract_factory.dart';
import '../concreteProducts/guincho_concrete_product.dart';
import '../concreteProducts/veiculo_concrete_product.dart';
import '../utils/enum_veiculo_porte.dart';

class SocorroVeiculoPequenoFactory extends AutoSocorroAbstractFactory {
  @override
  Guincho criarGuincho() {
    return GuinchoCreator.criar(Porte.pequeno);
  }

  @override
  Veiculo criarVeiculo(String modelo, Porte porte) {
    return VeiculoCreator.criar(modelo, porte);
  }
}
