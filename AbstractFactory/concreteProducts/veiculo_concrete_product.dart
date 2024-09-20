// ignore_for_file: overridden_fields

import '../abstractProducts/veiculo.dart';
import '../utils/enum_veiculo_porte.dart';

class Fusion implements Veiculo {
  Fusion({
    this.porte = Porte.grande,
    this.modelo = "Fusion",
  });

  @override
  final String modelo;

  @override
  final Porte porte;
}

class Celta implements Veiculo {
  Celta({
    this.porte = Porte.pequeno,
    this.modelo = "Celta",
  });

  @override
  final String modelo;

  @override
  final Porte porte;
}

class Jetta implements Veiculo {
  Jetta({
    this.porte = Porte.medio,
    this.modelo = "Jetta",
  });

  @override
  final String modelo;

  @override
  final Porte porte;
}

class VeiculoCreator {
  static Veiculo fusion() => Fusion();
  static Veiculo jetta() => Jetta();
  static Veiculo celta() => Celta();
}
