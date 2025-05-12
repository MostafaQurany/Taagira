import 'package:taggira/core/utils/server/server_result.dart';
import 'package:taggira/features/user/data/user_data_scourse.dart';
import 'package:taggira/features/user/model/user_model.dart';

abstract class UserRepo {
  Future<ServerResult<bool>> isUserExit(String userId);
  Future<ServerResult<UserModel>> createNewUser(UserModel userModel);
  Future<ServerResult<UserModel>> getUser(String userId);
  Future<ServerResult<UserModel>> updateUser(UserModel userModel);
}

class UserRepoImple implements UserRepo {
  final UserDataScourse userDataScourse;
  UserRepoImple(this.userDataScourse);
  @override
  Future<ServerResult<bool>> isUserExit(String userId) async {
    try {
      final data = await userDataScourse.isUserExit(userId);
      return ServerResult.success(data);
    } catch (e) {
      return ServerResult.error(e.toString());
    }
  }

  @override
  Future<ServerResult<UserModel>> createNewUser(UserModel userModel) async {
    try {
      final data = await userDataScourse.createNewUser(userModel);
      return ServerResult.success(data);
    } catch (e) {
      return ServerResult.error(e.toString());
    }
  }

  @override
  Future<ServerResult<UserModel>> getUser(String userId) async {
    try {
      final data = await userDataScourse.getUser(userId);
      return ServerResult.success(data);
    } catch (e) {
      return ServerResult.error(e.toString());
    }
  }

  @override
  Future<ServerResult<UserModel>> updateUser(UserModel userModel) async {
    try {
      final data = await userDataScourse.updateUser(userModel);
      return ServerResult.success(data);
    } catch (e) {
      return ServerResult.error(e.toString());
    }
  }
}
