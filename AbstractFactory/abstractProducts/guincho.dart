import '../concreteProducts/veiculo_concrete_product.dart';
import '../utils/enum_veiculo_porte.dart';

abstract class GuinchoAbstract {
  GuinchoAbstract(this.porte);

  final Porte porte;

  void socorrer(Veiculo veiculo);
}
