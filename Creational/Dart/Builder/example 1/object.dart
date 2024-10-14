import 'dart:convert';

enum SmartphoneEnum { memoryStorage, ramProcessor, cameraPxls, batterymA, name }

class Smartphone {
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

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      SmartphoneEnum.memoryStorage.name: memoryStorage,
      SmartphoneEnum.ramProcessor.name: ramProcessor,
      SmartphoneEnum.cameraPxls.name: cameraPxls,
      SmartphoneEnum.batterymA.name: batterymA,
      SmartphoneEnum.name.name: name,
    };
  }

  factory Smartphone.fromMap(Map<String, dynamic> map) {
    return Smartphone(
      memoryStorage: map[SmartphoneEnum.memoryStorage.name] as int,
      ramProcessor: map[SmartphoneEnum.ramProcessor.name] as int,
      cameraPxls: map[SmartphoneEnum.cameraPxls.name] as int,
      batterymA: map[SmartphoneEnum.batterymA.name] as int,
      name: map[SmartphoneEnum.name.name] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Smartphone.fromJson(String source) =>
      Smartphone.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Smartphone $name with $cameraPxls pixels in Camera Storage of $memoryStorage GB, $ramProcessor GB RAM and battery $batterymA mA.';
  }

  @override
  bool operator ==(covariant Smartphone other) {
    if (identical(this, other)) return true;

    return other.memoryStorage == memoryStorage &&
        other.ramProcessor == ramProcessor &&
        other.cameraPxls == cameraPxls &&
        other.batterymA == batterymA &&
        other.name == name;
  }

  @override
  int get hashCode {
    return memoryStorage.hashCode ^
        ramProcessor.hashCode ^
        cameraPxls.hashCode ^
        batterymA.hashCode ^
        name.hashCode;
  }
}
