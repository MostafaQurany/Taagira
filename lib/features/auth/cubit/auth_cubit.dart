import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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

  // global key
  final GlobalKey<FormState> globalKey = GlobalKey();

  bool isTermEnabled = false;
  String country = "20";
  final UserCubit _userCubit;

  AuthCubit(this._authRepo, this._userRepo, this._userCubit)
    : super(const AuthState.initial());

  getOtp() async {
    emit(const AuthState.loadingGetOtp());

    final res = await _authRepo.getOTPMessage(
      "+$country${phoneController.text}",
    );
    res.when(
      success: (data) {
        Future.delayed(
          const Duration(milliseconds: 500),
        ).then((value) => emit(const AuthState.successGetOtp()));
      },
      error: (message) {
        emit(AuthState.errorGetOtp(message));
      },
    );
  }

  verifyOtp(String otp) async {
    emit(const AuthState.loadingVerifyOtp());
    final res = await _authRepo.verifyOTP(otp);
    res.map(
      success: (res) {
        emit(
          AuthState.successVerifyOtp(
            UserModel(id: res.data, phone: "+$country${phoneController.text}"),
          ),
        );
      },
      error: (res) {
        emit(AuthState.errorVerifyOtp(res.message));
      },
    );
  }

  checkUser(UserModel user) async {
    final res = await _userRepo.isUserExit(user.id);

    res.map(
      success: (res) {
        emit(AuthState.userExitState(res.data, user));
      },
      error: (res) {
        emit(AuthState.errorVerifyOtp(res.message));
      },
    );
  }

  createNewUser(UserModel user) async {
    final res = await _userRepo.createNewUser(user);

    res.map(
      success: (res) {
        emit(AuthState.successCreateUserGoToProfile(res.data));
      },
      error: (res) {
        emit(AuthState.errorVerifyOtp(res.message));
      },
    );
  }

  getUser(UserModel user) async {
    final res = await _userRepo.getUser(user.id);

    res.map(
      success: (res) {
        _userCubit.updateUser(res.data);
        emit(AuthState.successGetUserGoToHome(res.data));
      },
      error: (res) {
        emit(AuthState.errorVerifyOtp(res.message));
      },
    );
  }
}
