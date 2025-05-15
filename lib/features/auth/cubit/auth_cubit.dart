import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:taggira/core/utils/server/server_result.dart';
import 'package:taggira/features/auth/repo/auth_repo.dart';
import 'package:taggira/features/user/cubit/user_cubit.dart';
import 'package:taggira/features/user/model/user_model.dart';
import 'package:taggira/features/user/repo/user_repo.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepo _authRepo;
  final UserRepo _userRepo;

  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phnController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController otpEditingController = TextEditingController();

  final GlobalKey<FormState> globalKey = GlobalKey();

  bool isTermEnabled = false;
  String country = "20";
  final UserCubit _userCubit;

  AuthCubit(this._authRepo, this._userRepo, this._userCubit)
    : super(const AuthState.initial());

  Future<void> getOtp() async {
    emit(const AuthState.loadingGetOtp());

    final res = await _authRepo.getOTPMessage(
      "+$country${phoneController.text}",
    );

    switch (res) {
      case ServerSuccess():
        await Future.delayed(const Duration(milliseconds: 500));
        emit(const AuthState.successGetOtp());
        break;

      case ServerError(:final message):
        emit(AuthState.errorGetOtp(message));
        break;
    }
  }

  Future<void> verifyOtp(String otp) async {
    emit(const AuthState.loadingVerifyOtp());

    final res = await _authRepo.verifyOTP(otp);

    switch (res) {
      case ServerSuccess(:final data):
        emit(
          AuthState.successVerifyOtp(
            UserModel(id: data, phone: "+$country${phoneController.text}"),
          ),
        );
        break;

      case ServerError(:final message):
        emit(AuthState.errorVerifyOtp(message));
        break;
    }
  }

  Future<void> checkUser(UserModel user) async {
    final res = await _userRepo.isUserExit(user.id);

    switch (res) {
      case ServerSuccess(:final data):
        emit(AuthState.userExitState(data, user));
        break;

      case ServerError(:final message):
        emit(AuthState.errorVerifyOtp(message));
        break;
    }
  }

  Future<void> createNewUser(UserModel user) async {
    final res = await _userRepo.createNewUser(user);

    switch (res) {
      case ServerSuccess(:final data):
        emit(AuthState.successCreateUserGoToProfile(data));
        break;

      case ServerError(:final message):
        emit(AuthState.errorVerifyOtp(message));
        break;
    }
  }

  Future<void> getUser(UserModel user) async {
    final res = await _userRepo.getUser(user.id);

    switch (res) {
      case ServerSuccess(:final data):
        _userCubit.updateUser(data);
        emit(AuthState.successGetUserGoToHome(data));
        break;

      case ServerError(:final message):
        emit(AuthState.errorVerifyOtp(message));
        break;
    }
  }

  Future<void> logOutUser() async {
    emit(const AuthState.loadingLogOut());

    final res = await _authRepo.logOut();

    switch (res) {
      case ServerSuccess():
        emit(const AuthState.successLogOut());
        break;

      case ServerError(:final message):
        emit(AuthState.errorLogOut(message));
        break;
    }
  }
}
