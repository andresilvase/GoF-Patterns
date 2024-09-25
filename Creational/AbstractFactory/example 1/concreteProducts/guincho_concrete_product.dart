import '../abstractProducts/guincho.dart';
import '../abstractProducts/veiculo.dart';
import '../../utils/enum_veiculo_porte.dart';

class Guincho extends GuinchoAbstract {
  Guincho(this.porte) : super(porte);

  @override
  final Porte porte;

  @override
  void socorrer(Veiculo veiculo) {
    print(
      'Socorrendo carro ${veiculo.porte.name} - modelo ${veiculo.modelo}.',
    );
  }
}

class GuinchoCreator {
  static Guincho criar(Porte porte) {
    return Guincho(porte);
  }
}
