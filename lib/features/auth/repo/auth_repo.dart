import 'package:taggira/features/auth/data/auth_data_source.dart';
import 'package:taggira/features/user/model/user_model.dart';

import '../../../core/utils/server/server_result.dart';

abstract class AuthRepo {
  Future<ServerResult> getOTPMessage(String phoneNumber);
  Future<ServerResult<String>> verifyOTP(String otp);
}

class AuthRepoImpl extends AuthRepo {
  AuthDataSource signUpDataSource;
  AuthRepoImpl(this.signUpDataSource);

  @override
  Future<ServerResult> getOTPMessage(String phoneNumber) async {
    try {
      final res = await signUpDataSource.getOTPMessage(phoneNumber);
      return ServerResult<void>.success(res);
    } catch (e) {
      return ServerResult.error(e.toString());
    }
  }

  @override
  Future<ServerResult<String>> verifyOTP(String otp) async {
    try {
      final res = await signUpDataSource.verifyOTP(otp);
      return ServerResult<String>.success(res);
    } catch (e) {
      return ServerResult.error(e.toString());
    }
  }
}
