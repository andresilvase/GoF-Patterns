import '../abstractProducts/guincho.dart';
import '../utils/enum_veiculo_porte.dart';
import 'veiculo_concrete_product.dart';
import '../utils/porte_extension.dart';

class Guincho extends GuinchoAbstract {
  Guincho(this.porte) : super(porte);

  @override
  final Porte porte;

  @override
  void socorrer(Veiculo veiculo) {
    print(
      'Socorrendo carro ${veiculo.porte.tostring()} - modelo ${veiculo.modelo}.',
    );
  }
}

class GuinchoCreator {
  static Guincho criar(Porte porte) {
    return Guincho(porte);
  }
}
