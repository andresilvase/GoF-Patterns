import '../interfaces/builders/smartphone_builder.dart';
import '../products/smartphone.dart';

// Optional class: the object construction can be made directly
class SmartphoneDirector {
  final SmartphoneBuilder smartphoneBuilder;

  SmartphoneDirector({
    required this.smartphoneBuilder,
  });

  Smartphone basicSmartphone() {
    smartphoneBuilder.setSmartphoneName("Xiaomi Redmi 5");
    smartphoneBuilder.setSmartphoneMemoryStorage(64);
    smartphoneBuilder.setSmartphoneRamProcessor(2);
    smartphoneBuilder.setSmartphoneBatterymA(3000);
    smartphoneBuilder.setSmartphoneCameraPxls(4);

    return smartphoneBuilder.build();
  }

  Smartphone mediumSmartphone() {
    smartphoneBuilder.setSmartphoneName("Xiaomi Redmi Note 8 PRO");
    smartphoneBuilder.setSmartphoneMemoryStorage(128);
    smartphoneBuilder.setSmartphoneRamProcessor(8);
    smartphoneBuilder.setSmartphoneBatterymA(4500);
    smartphoneBuilder.setSmartphoneCameraPxls(12);

    return smartphoneBuilder.build();
  }

  Smartphone topSmartphone() {
    smartphoneBuilder.setSmartphoneName("Xiaomi Redmi Note 12 PRO 5G+");
    smartphoneBuilder.setSmartphoneMemoryStorage(256);
    smartphoneBuilder.setSmartphoneRamProcessor(8);
    smartphoneBuilder.setSmartphoneBatterymA(4500);
    smartphoneBuilder.setSmartphoneCameraPxls(200);

    return smartphoneBuilder.build();
  }
}
