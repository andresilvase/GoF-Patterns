import '../utils/enum_veiculo_porte.dart';

abstract class VeiculoAbstract {
  VeiculoAbstract(this.modelo, this.porte);

  final String modelo;
  final Porte porte;
}
