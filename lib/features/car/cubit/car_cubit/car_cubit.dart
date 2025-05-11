import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:taggira/features/car/models/car_model.dart';
import 'package:taggira/features/car/repo/car_repo.dart';

part 'car_state.dart';
part 'car_cubit.freezed.dart';

class CarCubit extends Cubit<CarState> {
  final CarRepo carRepo;
  CarCubit(this.carRepo) : super(const CarState.initial());
  List<CarModel> _cars = [];
  
  
  
  
  fetchingCar() async {
    emit(const CarState.getAllCarsLoading());
    try {
      final res = await carRepo.getAllCars();
      _cars = res;
      print(res.length);
      emit(CarState.getAllCarsSuccess(res));
    } catch (e) {
      emit(CarState.getAllCarsError(e.toString()));
    }
  }

  void searchCars(String query) {
    // Ensure we are in a state that has cars loaded
    if (state is GetAllCarsSuccess) {
      List<CarModel> filteredCars;

      if (query.isEmpty) {
        filteredCars = _cars;
      } else {
        final lowerCaseQuery = query.toLowerCase();
        filteredCars =
            _cars.where((car) {
              return car.brand.toLowerCase().contains(lowerCaseQuery) ||
                  car.model.toLowerCase().contains(lowerCaseQuery) ||
                  car.year.toString().contains(lowerCaseQuery);
            }).toList();
      }
      // Emit a new success state with the filtered list for display
      emit((state as GetAllCarsSuccess).copyWith(cars: filteredCars));
    }
  }


  
}
