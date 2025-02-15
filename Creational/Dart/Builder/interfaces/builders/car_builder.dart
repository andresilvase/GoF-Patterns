import '../../products/car.dart';
import '../builder.dart';

abstract class CarBuilder implements Builder {
  CarBuilder setCarModel(String model);
  CarBuilder setCarYear(int year);
  CarBuilder setCarColor(String color);
  CarBuilder setCarPrice(double price);
  CarBuilder setCarDoors(int doors);
  CarBuilder setCarSeats(int seats);
  CarBuilder setCarEngine(double engine);
  CarBuilder setCarTransmission(int transmission);
  CarBuilder setCarFuel(int fuel);
  CarBuilder setCarMileage(int mileage);

  @override
  Car build();
}
