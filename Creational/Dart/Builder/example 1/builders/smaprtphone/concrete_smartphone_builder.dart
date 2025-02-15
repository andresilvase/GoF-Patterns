import '../../products/smartphone.dart';
import 'smartphone_builder.dart';

class ConcreteSmartphoneBuilder implements SmartphoneBuilder {
  int? _memoryStorage;
  int? _ramProcessor;
  int? _cameraPxls;
  int? _batterymA;
  String? _name;

  @override
  SmartphoneBuilder setSmartphoneName(String name) {
    _name = name;
    return this;
  }

  @override
  Smartphone build() {
    return Smartphone(
      memoryStorage: _memoryStorage,
      ramProcessor: _ramProcessor,
      cameraPxls: _cameraPxls,
      batterymA: _batterymA,
      name: _name!,
    );
  }

  @override
  SmartphoneBuilder setSmartphoneBatterymA(int mA) {
    _batterymA = mA;
    return this;
  }

  @override
  SmartphoneBuilder setSmartphoneCameraPxls(int pixels) {
    _cameraPxls = pixels;
    return this;
  }

  @override
  SmartphoneBuilder setSmartphoneMemoryStorage(int memoryStorage) {
    _memoryStorage = memoryStorage;
    return this;
  }

  @override
  SmartphoneBuilder setSmartphoneRamProcessor(int ramProcessor) {
    _ramProcessor = ramProcessor;
    return this;
  }
}
