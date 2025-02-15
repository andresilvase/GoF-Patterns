import '../../interfaces/builders/car_builder.dart';
import '../../products/car.dart';

class ConcreteCarBuilder implements CarBuilder {
  String? _model;
  int? _year;
  int? _color;
  int? _price;
  int? doors;
  int? seats;
  double? engine;
  int? transmission;
  int? fuel;
  int? mileage;

  @override
  Car build() {
    return Car(
      model: _model ?? "Fuscation",
      year: _year ?? 2021,
      color: _color,
      price: _price,
      doors: doors,
      seats: seats,
      engine: engine,
      transmission: transmission,
      fuel: fuel,
      mileage: mileage,
    );
  }

  @override
  CarBuilder setCarColor(String color) {
    _color = int.parse(color);
    return this;
  }

  @override
  CarBuilder setCarModel(String model) {
    _model = model;
    return this;
  }

  @override
  CarBuilder setCarPrice(double price) {
    _price = price.toInt();
    return this;
  }

  @override
  CarBuilder setCarYear(int year) {
    _year = year;
    return this;
  }

  CarBuilder setCarDoors(int doors) {
    this.doors = doors;
    return this;
  }

  CarBuilder setCarSeats(int seats) {
    this.seats = seats;
    return this;
  }

  CarBuilder setCarEngine(double engine) {
    this.engine = engine;
    return this;
  }

  CarBuilder setCarTransmission(int transmission) {
    this.transmission = transmission;
    return this;
  }

  CarBuilder setCarFuel(int fuel) {
    this.fuel = fuel;
    return this;
  }

  CarBuilder setCarMileage(int mileage) {
    this.mileage = mileage;
    return this;
  }
}
