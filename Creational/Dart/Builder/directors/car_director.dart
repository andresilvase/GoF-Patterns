import '../interfaces/builders/car_builder.dart';
import '../products/car.dart';

class CarDirector {
  CarBuilder builder;

  CarDirector({required this.builder});

  // Celta 2005
  Car basicCar() {
    builder.setCarModel("Celta");
    builder.setCarYear(2009);
    builder.setCarColor("0xffFF0000"); // Red
    builder.setCarPrice(10000.0);
    builder.setCarDoors(4);
    builder.setCarSeats(5);
    builder.setCarEngine(1.0);
    builder.setCarTransmission(1);
    builder.setCarFuel(1);
    builder.setCarMileage(10);

    return builder.build();
  }

  // Gol G5 2012
  Car mediumCar() {
    builder.setCarModel("Gol G5");
    builder.setCarYear(2012);
    builder.setCarColor("0xff4169E1"); // Royal Blue
    builder.setCarPrice(20000.0);
    builder.setCarDoors(4);
    builder.setCarSeats(5);
    builder.setCarEngine(1.0);
    builder.setCarTransmission(1);
    builder.setCarFuel(1);
    builder.setCarMileage(10);
    return builder.build();
  }

  // Onix 2021
  Car intermediateCar() {
    builder.setCarModel("Onix");
    builder.setCarYear(2021);
    builder.setCarColor("0xff808080"); // Gray
    builder.setCarPrice(100000.0);
    builder.setCarDoors(4);
    builder.setCarSeats(5);
    builder.setCarEngine(1.0);
    builder.setCarTransmission(1);
    builder.setCarFuel(1);
    builder.setCarMileage(10);
    return builder.build();
  }

  // Fusion 2024
  Car topCar() {
    builder.setCarModel("Fusion");
    builder.setCarYear(2024);
    builder.setCarColor("0xff000000"); // Black (unchanged)
    builder.setCarPrice(1000000.0);
    builder.setCarDoors(4);
    builder.setCarSeats(5);
    builder.setCarEngine(2.0);
    builder.setCarTransmission(1);
    builder.setCarFuel(1);
    builder.setCarMileage(10);
    return builder.build();
  }
}
