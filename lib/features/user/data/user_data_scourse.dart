import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:taggira/core/utils/helper/app_constance.dart';
import 'package:taggira/features/user/model/user_model.dart';

abstract class UserDataScourse {
  Future<bool> isUserExit(String userId);
  Future<UserModel> createNewUser(UserModel userModel);
  Future<UserModel> getUser(String userId);
  Future<UserModel> updateUser(UserModel userModel);
}

class UserDataScourseImple implements UserDataScourse {
  final fireStore = FirebaseFirestore.instance;

  @override
  Future<bool> isUserExit(String userId) async {
    return fireStore
        .collection(AppCollections.usersCollection)
        .doc(userId)
        .get()
        .then((value) => value.exists);
  }

  @override
  Future<UserModel> createNewUser(UserModel userModel) async {
    try {
      await fireStore
          .collection(AppCollections.usersCollection)
          .doc(userModel.id)
          .set(userModel.toJson());
      return userModel;
    } on FirebaseException catch (e) {
      throw e.message ?? "Sometheing went wrong in the create user.";
    } catch (e) {
      throw "Sometheing went wrong in the create user.";
    }
  }

  @override
  Future<UserModel> getUser(String userId) async {
    try {
      final dataMap =
          await fireStore
              .collection(AppCollections.usersCollection)
              .doc(userId)
              .get();
      return UserModel.fromJson(dataMap.data()!);
    } on FirebaseException catch (e) {
      throw e.message ?? "Sometheing went wrong in the get user.";
    } catch (e) {
      throw "Sometheing went wrong in the get user.";
    }
  }

  @override
  Future<UserModel> updateUser(UserModel userModel) async {
    try {
      await fireStore
          .collection(AppCollections.usersCollection)
          .doc(userModel.id)
          .update(userModel.toJson());
      return userModel;
    } on FirebaseException catch (e) {
      throw e.message ?? "Sometheing went wrong in the update user.";
    } catch (e) {
      throw "Sometheing went wrong in the get user.";
    }
  }
}
