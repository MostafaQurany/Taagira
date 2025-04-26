part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;

  //* Login & Sign Up
  const factory AuthState.loadingGetOtp() = LoadingGetOtp;
  const factory AuthState.successGetOtp() = SuccessGetOtp;
  const factory AuthState.errorGetOtp(String message) = ErrorGetOtp;

  //* Otp
  const factory AuthState.loadingVerifyOtp() = LoadingVerifyOtp;
  const factory AuthState.successVerifyOtp(String userID) = SuccessVerifyOtp;
  const factory AuthState.successCreateUser(/*UserModel user*/) =
      SuccessCreateUser;
}
