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
  const factory AuthState.successVerifyOtp(UserModel userModel) =
      SuccessVerifyOtp;
  const factory AuthState.errorVerifyOtp(String message) = ErrorVerifyOtp;
  const factory AuthState.successCreateUser(UserModel user) = SuccessCreateUser;

  //* user
  const factory AuthState.userExitState(bool isUserExsit , UserModel user) = UserExitState;
  const factory AuthState.successCreateUserGoToProfile(UserModel userModel) =
      SuccessCreateUserGoToProfile;
  const factory AuthState.successGetUserGoToHome(UserModel userModel) =
      SuccessGetUserGoToHome;
}
