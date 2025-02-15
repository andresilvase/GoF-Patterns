import '../interfaces/product.dart';

enum SmartphoneEnum { memoryStorage, ramProcessor, cameraPxls, batterymA, name }

class Smartphone extends Product {
  int? memoryStorage;
  int? ramProcessor;
  int? cameraPxls;
  int? batterymA;
  String name;

  Smartphone({
    this.memoryStorage,
    required this.name,
    this.ramProcessor,
    this.cameraPxls,
    this.batterymA,
  });

  Smartphone copyWith({
    int? memoryStorage,
    int? ramProcessor,
    int? cameraPxls,
    int? batterymA,
    String? name,
  }) {
    return Smartphone(
      memoryStorage: memoryStorage ?? this.memoryStorage,
      ramProcessor: ramProcessor ?? this.ramProcessor,
      cameraPxls: cameraPxls ?? this.cameraPxls,
      batterymA: batterymA ?? this.batterymA,
      name: name ?? this.name,
    );
  }

  @override
  String toString() {
    final properties = <String>[];

    properties.add("Smartphone: $name");
    if (memoryStorage != null) properties.add("Memory Storage: $memoryStorage GB");
    if (ramProcessor != null) properties.add("RAM Processor: $ramProcessor GB");
    if (cameraPxls != null) properties.add("Camera Pixels: $cameraPxls MP");
    if (batterymA != null) properties.add("Battery: $batterymA mAh");

    return properties.join('\n');
  }
}
