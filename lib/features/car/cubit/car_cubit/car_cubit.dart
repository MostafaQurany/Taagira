import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:taggira/features/car/models/car_model.dart';
import 'package:taggira/features/car/repo/car_repo.dart';
import 'package:taggira/features/user/model/user_model.dart';

part 'car_state.dart';
part 'car_cubit.freezed.dart';

class CarCubit extends Cubit<CarState> {
  final CarRepo carRepo;

  CarCubit(this.carRepo) : super(const CarState.initial());

  // ───── All cars logic ───── //
  List<CarModel> allCars = [];

  Future<void> fetchingCar(String userId) async {
    emit(const CarState.getAllCarsLoading());
    try {
      final res = await carRepo.getAllCars();
      allCars = res;
      final carFavoretsId = await carRepo.getAllFavoriteCarsIds(userId: userId);
      for (var carId in carFavoretsId) {
        final index = allCars.indexWhere((element) => element.id == carId);
        allCars[index] = allCars[index].copyWith(isFavorite: true);
      }
      emit(CarState.getAllCarsSuccess(allCars));
    } catch (e) {
      emit(CarState.getAllCarsError(e.toString()));
    }
  }

  void searchCars(String query) {
    if (state is GetAllCarsSuccess) {
      final filtered =
          query.isEmpty
              ? allCars
              : allCars.where((car) {
                final q = query.toLowerCase();
                return car.brand.toLowerCase().contains(q) ||
                    car.model.toLowerCase().contains(q) ||
                    car.year.toString().contains(q);
              }).toList();
      emit(GetAllCarsSuccess(filtered));
    }
  }

  // ───── Favorite ───── //

  Stream<List<String>> getStreamCarFavorites({required String userId}) {
    return carRepo.getStreamCarFavorites(userId: userId);
  }

  Future<void> addCarToFavorites({
    required String userId,
    required String carId,
  }) async {
    try {
      await carRepo.addCarToFavorites(userId: userId, carId: carId);
      final index = allCars.indexWhere((element) => element.id == carId);
      allCars[index] = allCars[index].copyWith(isFavorite: true);
      emit(const CarState.addFavoriteCarsSuccess());
      emit(CarState.getAllCarsSuccess(allCars));
    } catch (e) {
      emit(CarState.favoriteCarsError(e.toString()));
    }
    // }
    // Future<void> removeFavorite({required String userId, required String carId});
    // Future<List<String>> getAllFavoriteCarsIds({required String userId});
  }

  Future<void> removeFavorite({
    required String userId,
    required String carId,
  }) async {
    try {
      await carRepo.removeFavorite(userId: userId, carId: carId);
      final index = allCars.indexWhere((element) => element.id == carId);
      allCars[index] = allCars[index].copyWith(isFavorite: false);
      emit(const CarState.removeFavoriteCarsSuccess());
      emit(CarState.getAllCarsSuccess(allCars));
    } catch (e) {
      emit(CarState.favoriteCarsError(e.toString()));
    }
    // }
    // Future<void> removeFavorite({required String userId, required String carId});
    // Future<List<String>> getAllFavoriteCarsIds({required String userId});
  }
}
