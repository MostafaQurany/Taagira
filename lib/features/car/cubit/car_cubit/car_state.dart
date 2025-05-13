part of 'car_cubit.dart';

@freezed
class CarState with _$CarState {
  const factory CarState.initial() = _Initial;

  // All cars
  const factory CarState.getAllCarsLoading() = GetAllCarsLoading;
  const factory CarState.getAllCarsSuccess(List<CarModel> cars) =
      GetAllCarsSuccess;
  const factory CarState.getAllCarsError(String error) = GetAllCarsError;

  // Favorite cars
  const factory CarState.getFavoriteCarsLoading() = GetFavoriteCarsLoading;
  const factory CarState.getFavoriteCarsSuccess(List<CarModel> cars) =
      GetFavoriteCarsSuccess;
  const factory CarState.getFavoriteCarsError(String error) =
      GetFavoriteCarsError;

  const factory CarState.addFavoriteCarsSuccess() = AddFavoriteCarsSuccess;
  const factory CarState.removeFavoriteCarsSuccess() = RemoveFavoriteCarsSuccess;
  const factory CarState.favoriteCarsError(String message) =
      FavoriteCarsError;
}
