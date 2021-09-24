import '../concreteProducts/guincho_concrete_product.dart';
import '../concreteProducts/veiculo_concrete_product.dart';
import '../utils/enum_veiculo_porte.dart';

// AbstractFactory abstract class
abstract class AutoSocorroAbstractFactory {
  Guincho criarGuincho();
  Veiculo criarVeiculo(String modelo, Porte porte);
}
