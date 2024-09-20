import '../utils/enum_veiculo_porte.dart';
import 'veiculo.dart';

abstract class GuinchoAbstract {
  GuinchoAbstract(this.porte);

  final Porte porte;

  void socorrer(Veiculo veiculo);
}
