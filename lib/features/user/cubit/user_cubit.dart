import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:taggira/features/user/model/user_model.dart';

part 'user_state.dart';
part 'user_cubit.freezed.dart';

class UserCubit extends Cubit<UserState> {
  UserModel? user;
  UserCubit() : super(const UserState.initial());

  void updateUser(UserModel? userModel) {
    if (userModel != null) {
      user = userModel;
      emit(const UserState.userUpdate());
    } else {
      user = userModel;
      emit(const UserState.initial());
    }
  }
}
