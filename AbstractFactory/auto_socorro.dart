import 'abstractFactory/auto_socorro_abstract_factory.dart';
import 'concreteFactories/socorro_veiculo_grande.dart';
import 'concreteFactories/socorro_veiculo_medio.dart';
import 'concreteFactories/socorro_veiculo_pequeno_factory.dart';
import 'concreteProducts/guincho_concrete_product.dart';
import 'concreteProducts/veiculo_concrete_product.dart';
import 'utils/enum_veiculo_porte.dart';

class AutoSocorro {
  AutoSocorro(AutoSocorroAbstractFactory factory, Veiculo veiculo) {
    _veiculo = factory.criarVeiculo(veiculo.modelo, veiculo.porte);
    _guincho = factory.criarGuincho();
  }

  late Veiculo _veiculo;
  late Guincho _guincho;

  void realizarAtendimento() {
    _guincho.socorrer(_veiculo);
  }

  static AutoSocorro criarAutoSocorro(Veiculo veiculo) {
    switch (veiculo.porte) {
      case Porte.pequeno:
        return AutoSocorro(SocorroVeiculoPequenoFactory(), veiculo);
      case Porte.medio:
        return AutoSocorro(SocorroVeiculoMedioFactory(), veiculo);
      case Porte.grande:
        return AutoSocorro(SocorroVeiculoGrandeFactory(), veiculo);
      default:
        throw Exception('Não foi possível identificar o veículo');
    }
  }
}
