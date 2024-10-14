import '../abstractFactory/auto_socorro_abstract_factory.dart';
import '../concreteProducts/guincho_concrete_product.dart';
import '../concreteProducts/veiculo_concrete_product.dart';
import '../abstractProducts/guincho.dart';
import '../abstractProducts/veiculo.dart';
import '../../utils/enum_veiculo_porte.dart';

class SocorroVeiculoMedioFactory extends AutoSocorroAbstractFactory {
  @override
  GuinchoAbstract criarGuincho() {
    return GuinchoCreator.criar(Porte.medio);
  }

  @override
  Veiculo criarVeiculo(String modelo, Porte porte) {
    return VeiculoCreator.jetta();
  }
}
