import 'package:taggira/core/utils/server/server_result.dart';
import 'package:taggira/features/car/models/car_model.dart';

abstract class CarRepo {
  Future<void> addCar(CarModel carModel);
  Future<void> updateCar(CarModel carModel);
  Future<void> deleteCar(String carId);
  Future<List<CarModel>> getAllCars();
  Future<CarModel?> getCarById(String carId);
  Future<List<CarModel>> searchCars(String query);
}
