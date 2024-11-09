import 'concrete_builder.dart';
import 'director.dart';
import 'object.dart';

void runBuilder() {
  SmartphoneDirector director = SmartphoneDirector(
    smartphoneConcreteBuilder: ConcreteBuilder(),
  );

  List<Smartphone> xiaomiPhoneCreatedByDirector = [
    director.basicSmartphone(),
    director.mediumSmartphone(),
    director.topSmartphone(),
  ];

  // In case a director was not created, is it possible to
  // build kinda 'manually';
  ConcreteBuilder builder = ConcreteBuilder();
  Smartphone createdManually = builder.setSmartphoneName("Xing Ling").setSmartphoneBatterymA(2500).build();

  print('\n##Builder running example:');
  List<Smartphone> allSmartphones = [...xiaomiPhoneCreatedByDirector, createdManually];

  for (final phone in allSmartphones) {
    print(phone);
  }
}
