import 'concrete_builder.dart';
import 'object.dart';

// Optional class: the object construction can be made directly
class SmartphoneDirector {
  final ConcreteBuilder smartphoneConcreteBuilder;

  SmartphoneDirector({
    required this.smartphoneConcreteBuilder,
  });

  Smartphone basicSmartphone() {
    smartphoneConcreteBuilder.setSmartphoneName("Xiaomi Redmi 5");
    smartphoneConcreteBuilder.setSmartphoneMemoryStorage(64);
    smartphoneConcreteBuilder.setSmartphoneRamProcessor(2);
    smartphoneConcreteBuilder.setSmartphoneBatterymA(3000);
    smartphoneConcreteBuilder.setSmartphoneCameraPxls(4);

    return smartphoneConcreteBuilder.build();
  }

  Smartphone mediumSmartphone() {
    smartphoneConcreteBuilder.setSmartphoneName("Xiaomi Redmi Note 8 PRO");
    smartphoneConcreteBuilder.setSmartphoneMemoryStorage(128);
    smartphoneConcreteBuilder.setSmartphoneRamProcessor(8);
    smartphoneConcreteBuilder.setSmartphoneBatterymA(4500);
    smartphoneConcreteBuilder.setSmartphoneCameraPxls(12);

    return smartphoneConcreteBuilder.build();
  }

  Smartphone topSmartphone() {
    smartphoneConcreteBuilder.setSmartphoneName("Xiaomi Redmi Note 12 PRO 5G+");
    smartphoneConcreteBuilder.setSmartphoneMemoryStorage(256);
    smartphoneConcreteBuilder.setSmartphoneRamProcessor(8);
    smartphoneConcreteBuilder.setSmartphoneBatterymA(4500);
    smartphoneConcreteBuilder.setSmartphoneCameraPxls(200);

    return smartphoneConcreteBuilder.build();
  }
}
