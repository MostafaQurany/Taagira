// c:\Users\qmost\production projects\taggira\lib\features\car\cubit\add_car_state.dart
part of 'add_car_cubit.dart';

@freezed
class AddCarState with _$AddCarState {
  const factory AddCarState.initial() = _Initial;
  const factory AddCarState.addCarloading() =
      _AddCarLoading; // State during submission
  const factory AddCarState.addCarSuccess(String message) =
      _AddCarSuccess; // State on successful submission
  const factory AddCarState.addCarError(String message) =
      _AddCarError; // State on validation or submission error
}
