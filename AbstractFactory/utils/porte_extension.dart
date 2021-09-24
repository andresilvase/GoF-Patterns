import 'enum_veiculo_porte.dart';

extension PorteExtension on Porte {
  String tostring() {
    return toString().split('.').last;
  }
}
