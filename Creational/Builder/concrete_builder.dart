import 'builder_interface.dart';
import 'object.dart';

class ConcreteBuilder implements ObjectBuilder {
  int? _memoryStorage;
  int? _ramProcessor;
  int? _cameraPxls;
  int? _batterymA;
  String? _name;

  @override
  ObjectBuilder setSmartphoneName(String name) {
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
  ObjectBuilder setSmartphoneBatterymA(int mA) {
    _batterymA = mA;
    return this;
  }

  @override
  ObjectBuilder setSmartphoneCameraPxls(int pixels) {
    _cameraPxls = pixels;
    return this;
  }

  @override
  ObjectBuilder setSmartphoneMemoryStorage(int memoryStorage) {
    _memoryStorage = memoryStorage;
    return this;
  }

  @override
  ObjectBuilder setSmartphoneRamProcessor(int ramProcessor) {
    _ramProcessor = ramProcessor;
    return this;
  }
}
