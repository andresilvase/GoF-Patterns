import 'example 1/concreteFactories/socorro_veiculo_pequeno.dart';
import 'example 1/abstractFactory/auto_socorro_abstract_factory.dart';
import 'example 1/concreteFactories/socorro_veiculo_grande.dart';
import 'example 1/concreteFactories/socorro_veiculo_medio.dart';
import 'example 1/abstractProducts/guincho.dart';
import 'example 1/abstractProducts/veiculo.dart';
import 'utils/enum_veiculo_porte.dart';

class AutoSocorro {
  AutoSocorro(AutoSocorroAbstractFactory factory, Veiculo veiculo) {
    _veiculo = factory.criarVeiculo(veiculo.modelo, veiculo.porte);
    _guincho = factory.criarGuincho();
  }

  late GuinchoAbstract _guincho;
  late Veiculo _veiculo;

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
    }
  }
}
