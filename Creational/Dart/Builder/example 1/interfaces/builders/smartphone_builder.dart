import '../builder.dart';
import '../../products/smartphone.dart';

abstract class SmartphoneBuilder implements Builder {
  SmartphoneBuilder setSmartphoneMemoryStorage(int memoryStorage);
  SmartphoneBuilder setSmartphoneRamProcessor(int ramProcessor);
  SmartphoneBuilder setSmartphoneCameraPxls(int pixels);
  SmartphoneBuilder setSmartphoneBatterymA(int mA);
  SmartphoneBuilder setSmartphoneName(String name);

  @override
  Smartphone build();
}
