import '../abstractProducts/guincho.dart';
import '../abstractProducts/veiculo.dart';
import '../utils/enum_veiculo_porte.dart';

// AbstractFactory abstract class
abstract class AutoSocorroAbstractFactory {
  Veiculo criarVeiculo(String modelo, Porte porte);
  GuinchoAbstract criarGuincho();
}
