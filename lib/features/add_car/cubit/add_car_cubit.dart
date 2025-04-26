import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'add_car_state.dart';
part 'add_car_cubit.freezed.dart';

class AddCarCubit extends Cubit<AddCarState> {
  AddCarCubit() : super(AddCarState.initial());

  //* add the images to the car
  final List<XFile?> selectedImages = List.filled(6, null);
  final ImagePicker picker = ImagePicker();
  final CarouselSliderController carouselController =
      CarouselSliderController();
  int currentCarouselIndex = 0;

  
}
