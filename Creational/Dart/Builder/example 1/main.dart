import 'builders/smaprtphone/concrete_smartphone_builder.dart';
import 'director.dart';
import 'product.dart';

/// In case a [SmartphoneDirector] was not created, is it possible to
// build kinda 'manually'; however, it is not recommended.
void runBuilder() {
  SmartphoneDirector director = SmartphoneDirector(smartphoneBuilder: ConcreteSmartphoneBuilder());

  // Creating smartphones by the director
  List<Product> xiaomiPhoneCreatedByDirector = [
    director.basicSmartphone(),
    director.mediumSmartphone(),
    director.topSmartphone(),
  ];

  // Manually creating a smartphone
  ConcreteSmartphoneBuilder builder = ConcreteSmartphoneBuilder();
  Product smartphoneCreatedManually = builder.setSmartphoneName("Xing Ling").setSmartphoneBatterymA(2500).build();

  // Printing all smartphones
  print('\n##Builder running example:');
  List<Product> allSmartphones = [
    ...xiaomiPhoneCreatedByDirector,
    smartphoneCreatedManually,
  ];

  print('\nAll smartphones:');
  for (final phone in allSmartphones) {
    print(phone);
  }
}

void main() {
  runBuilder();
}
