abstract class ObjectBuilder {
  ObjectBuilder setSmartphoneMemoryStorage(int memoryStorage);
  ObjectBuilder setSmartphoneRamProcessor(int ramProcessor);
  ObjectBuilder setSmartphoneCameraPxls(int pixels);
  ObjectBuilder setSmartphoneBatterymA(int mA);
  ObjectBuilder setSmartphoneName(String name);

  build();
}
