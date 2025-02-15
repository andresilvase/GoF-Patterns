import '../interfaces/product.dart';

class Car extends Product {
  String model;
  int year;
  int? price;
  int? color;
  int? doors;
  int? seats;
  double? engine;
  int? transmission;
  int? fuel;
  int? mileage;

  Car({
    this.color = 0xff000000,
    required this.model,
    required this.year,
    this.price,
    this.doors,
    this.seats,
    this.engine,
    this.transmission,
    this.fuel,
    this.mileage,
  });

  Car copyWith({
    String? name,
    String? model,
    int? year,
    int? price,
    int? color,
    int? doors,
    int? seats,
    double? engine,
    int? transmission,
    int? fuel,
    int? mileage,
  }) {
    return Car(
      color: color ?? this.color,
      model: model ?? this.model,
      year: year ?? this.year,
      price: price ?? this.price,
      doors: doors ?? this.doors,
      seats: seats ?? this.seats,
      engine: engine ?? this.engine,
      transmission: transmission ?? this.transmission,
      fuel: fuel ?? this.fuel,
      mileage: mileage ?? this.mileage,
    );
  }

  @override
  String toString() {
    final properties = <String>[];

    properties.add("Car Model: $model");
    properties.add("Year: $year");
    if (color != null) properties.add("Color: $color");
    if (price != null) properties.add("Price: $price");
    if (doors != null) properties.add("Doors: $doors");
    if (seats != null) properties.add("Seats: $seats");
    if (engine != null) properties.add("Engine: $engine");
    if (transmission != null) properties.add("Transmission: $transmission");
    if (fuel != null) properties.add("Fuel: $fuel");
    if (mileage != null) properties.add("Mileage: $mileage");

    return properties.join('\n');
  }
}
