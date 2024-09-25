import '../../utils/enum_veiculo_porte.dart';

abstract class Veiculo {
  Veiculo(this.modelo, this.porte);

  final String modelo;
  final Porte porte;
}
