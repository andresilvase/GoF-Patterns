import 'builders/cars/concrete_car_builder.dart';
import 'builders/smaprtphones/concrete_smartphone_builder.dart';
import 'directors/car_director.dart';
import 'directors/smartphone_director.dart';
import 'interfaces/product.dart';

/// In case a [SmartphoneDirector] was not created, is it possible to
// build kinda 'manually'; however, it is not recommended.
void smartphoneBuilder() {
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

/// In case a [CarDirector] was not created, is it possible to
/// build kinda 'manually'; however, it is not recommended.
void carBuilder() {
  CarDirector director = CarDirector(builder: ConcreteCarBuilder());

  // Creating cars by the director
  List<Product> carsCreatedByDirector = [
    director.basicCar(),
    director.mediumCar(),
    director.intermediateCar(),
    director.topCar(),
  ];

  // Manually creating a car
  ConcreteCarBuilder builder = ConcreteCarBuilder();
  Product carCreatedManually = builder.setCarModel("Masserati").setCarYear(2025).build();

  // Printing all cars
  print('\n##Builder running example:');
  List<Product> allCars = [
    ...carsCreatedByDirector,
    carCreatedManually,
  ];

  print('\nAll cars:');
  for (final car in allCars) {
    print('$car\n');
  }
}

void runBuilder() {
  smartphoneBuilder();
  carBuilder();
}

void main() {
  smartphoneBuilder();
  carBuilder();
}
