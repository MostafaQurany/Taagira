import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:taggira/features/car/data/car_data_source.dart';
import 'package:taggira/features/car/data/user_favorite_car_data_source.dart';
import 'package:taggira/features/car/models/car_model.dart';

abstract class CarRepo {
  // ** Car methods **/
  Future<void> addCar(CarModel carModel);
  Future<void> updateCar(CarModel carModel);
  Future<void> deleteCar(String carId);
  Future<List<CarModel>> getAllCars();
  Future<CarModel?> getCarById(String carId);
  Future<List<CarModel>> searchCars(String query);

  // ** Favorite methods **/

  Stream<List<String>> getStreamCarFavorites({required String userId});
  Future<void> addCarToFavorites({
    required String userId,
    required String carId,
  });
  Future<void> removeFavorite({required String userId, required String carId});
  Future<List<String>> getAllFavoriteCarsIds({required String userId});

  // Future<List<CarModel>> getFavoriteCars({
  //   required String userId,
  //   int limit,
  //   String sortBy,
  //   bool descending,
  //   DocumentSnapshot? startAfter,
  // });
}

class CarRepoImpl implements CarRepo {
  final CarDataSource _carDataSource;
  final UserFavoriteCarDataSource _favoriteDataSource;

  CarRepoImpl(this._carDataSource, this._favoriteDataSource);

  // ----------------------- Car ----------------------- //

  @override
  Future<void> addCar(CarModel carModel) async {
    try {
      await _carDataSource.addCar(carModel);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> updateCar(CarModel carModel) async {
    try {
      await _carDataSource.updateCar(carModel);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> deleteCar(String carId) async {
    try {
      await _carDataSource.deleteCar(carId);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CarModel>> getAllCars() async {
    try {
      return await _carDataSource.getAllCars();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<CarModel?> getCarById(String carId) async {
    try {
      return await _carDataSource.getCarById(carId);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CarModel>> searchCars(String query) async {
    try {
      return await _carDataSource.searchCars(query);
    } catch (e) {
      rethrow;
    }
  }

  // ------------------- Favorite ------------------- //

  // @override
  // Future<bool> isCarInFavoite({
  //   required String userId,
  //   required String carId,
  // }) async {
  //   try {
  //     return await _favoriteDataSource.isCarInFavoite(
  //       userId: userId,
  //       carId: carId,
  //     );
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // @override
  // Future<List<CarModel>> getFavoriteCars({
  //   required String userId,
  //   int limit = 10,
  //   String sortBy = 'addedAt',
  //   bool descending = true,
  //   DocumentSnapshot? startAfter,
  // }) async {
  //   try {
  //     return await _favoriteDataSource.fetchFavorites(
  //       userId: userId,
  //       limit: limit,
  //       sortBy: sortBy,
  //       descending: descending,
  //       startAfter: startAfter,
  //     );
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
  @override
  Future<void> addCarToFavorites({
    required String userId,
    required String carId,
  }) async {
    try {
      await _favoriteDataSource.addCarToFavorite(userId: userId, carId: carId);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> removeFavorite({
    required String userId,
    required String carId,
  }) async {
    try {
      await _favoriteDataSource.removeFavorite(userId: userId, carId: carId);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<String>> getAllFavoriteCarsIds({required String userId}) async {
    try {
      return await _favoriteDataSource.getAllFavoriteCarsIds(userId: userId);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Stream<List<String>> getStreamCarFavorites({required String userId}) {
    return _favoriteDataSource.getStreamCarFavorites(userId: userId);
  }
}
