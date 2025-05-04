part of 'car_cubit.dart';

@freezed
class CarState with _$CarState {
  const factory CarState.initial() = _Initial;
  const factory CarState.getAllCarsLoading() = GetAllCarsLoading;
  const factory CarState.getAllCarsSuccess(List<CarModel> cars) =
      GetAllCarsSuccess;
  const factory CarState.getAllCarsError(String error) = GetAllCarsError;
}
