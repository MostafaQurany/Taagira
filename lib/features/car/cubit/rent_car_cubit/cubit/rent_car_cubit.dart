import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rent_car_state.dart';
part 'rent_car_cubit.freezed.dart';

class RentCarCubit extends Cubit<RentCarState> {
  RentCarCubit() : super(RentCarState.initial());
}
