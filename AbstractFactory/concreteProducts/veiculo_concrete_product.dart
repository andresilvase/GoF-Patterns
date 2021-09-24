// ignore_for_file: overridden_fields

import '../abstractProducts/veiculo.dart';
import '../utils/enum_veiculo_porte.dart';

class Veiculo extends VeiculoAbstract {
  Veiculo(this.modelo, this.porte) : super(modelo, porte);

  @override
  final String modelo;

  @override
  final Porte porte;
}

class VeiculoCreator {
  static Veiculo criar(String modelo, Porte porte) {
    return Veiculo(modelo, porte);
  }
}
