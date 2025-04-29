import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:taggira/features/auth/repo/auth_repo.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepo _authRepo;

  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phnController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController otpEditingController = TextEditingController();

  // global key
  final GlobalKey<FormState> globalKey = GlobalKey();

  bool isTermEnabled = false;
  String country = "20";
  AuthCubit(this._authRepo) : super(AuthState.initial());

  getOtp() async {
    emit(const AuthState.loadingGetOtp());

    final res = await _authRepo.getOTPMessage(
      "+$country${phoneController.text}",
    );
    res.when(
      success: (data) {
        emit(AuthState.successGetOtp());
      },
      error: (message) {
        emit(AuthState.errorGetOtp(message));
      },
    );
  }

  verifyOtp(String otp) async {
    emit(const AuthState.loadingVerifyOtp());
    final res = await _authRepo.verifyOTP(otp);
    res.when(
      success: (data) {
        emit(AuthState.successVerifyOtp(data));
      },
      error: (String message) {},
    );
  }
}
