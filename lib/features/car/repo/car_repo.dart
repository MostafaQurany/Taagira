import 'package:taggira/features/car/data/car_data_source.dart';
import 'package:taggira/features/car/models/car_model.dart';

abstract class CarRepo {
  Future<void> addCar(CarModel carModel);
  Future<void> updateCar(CarModel carModel);
  Future<void> deleteCar(String carId);
  Future<List<CarModel>> getAllCars();
  Future<CarModel?> getCarById(String carId);
  Future<List<CarModel>> searchCars(String query);

  Future<void> addCarToFavorites(String carId);
  Future<void> removeCarFromFavorites(String carId);
  Future<List<CarModel>> getFavoriteCars();
}

class CarRepoImpl implements CarRepo {
  final CarDataSource _carDataSource;
  CarRepoImpl(this._carDataSource);
  @override
  Future<void> addCar(CarModel carModel) {
    // TODO: implement addCar
    throw UnimplementedError();
  }

  @override
  Future<void> addCarToFavorites(String carId) {
    // TODO: implement addCarToFavorites
    throw UnimplementedError();
  }

  @override
  Future<void> deleteCar(String carId) {
    // TODO: implement deleteCar
    throw UnimplementedError();
  }

  @override
  Future<List<CarModel>> getAllCars() {
    // TODO: implement getAllCars
    throw UnimplementedError();
  }

  @override
  Future<CarModel?> getCarById(String carId) {
    // TODO: implement getCarById
    throw UnimplementedError();
  }

  @override
  Future<List<CarModel>> getFavoriteCars() {
    // TODO: implement getFavoriteCars
    throw UnimplementedError();
  }

  @override
  Future<void> removeCarFromFavorites(String carId) {
    // TODO: implement removeCarFromFavorites
    throw UnimplementedError();
  }

  @override
  Future<List<CarModel>> searchCars(String query) {
    // TODO: implement searchCars
    throw UnimplementedError();
  }

  @override
  Future<void> updateCar(CarModel carModel) {
    // TODO: implement updateCar
    throw UnimplementedError();
  }
}
