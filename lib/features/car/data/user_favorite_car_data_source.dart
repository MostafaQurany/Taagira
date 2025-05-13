import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:taggira/core/utils/helper/app_constance.dart';
import 'package:taggira/features/car/models/car_model.dart';

abstract class UserFavoriteCarDataSource {
  Stream<List<String>> getStreamCarFavorites({required String userId});
  Future<bool> isCarInFavoite({required String userId, required String carId});
  Future<void> addCarToFavorite({
    required String userId,
    required String carId,
  });
  Future<void> removeFavorite({required String userId, required String carId});
  Future<List<String>> getAllFavoriteCarsIds({required String userId});
}

class UserFavoriteCarDataSourceImpl implements UserFavoriteCarDataSource {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<void> addCarToFavorite({
    required String userId,
    required String carId,
  }) async {
    await _firestore
        .collection(AppCollections.usersCollection)
        .doc(userId)
        .collection(AppCollections.favoritesCollection)
        .doc(carId)
        .set({'carId': carId, 'addedAt': FieldValue.serverTimestamp()});
  }

  @override
  Future<void> removeFavorite({
    required String userId,
    required String carId,
  }) async {
    await _firestore
        .collection(AppCollections.usersCollection)
        .doc(userId)
        .collection(AppCollections.favoritesCollection)
        .doc(carId)
        .delete();
  }

  // @override
  // Future<List<CarModel>> fetchFavorites({
  //   required String userId,
  //   int limit = 200,
  //   DocumentSnapshot? startAfter,
  //   String sortBy = 'addedAt', // or model or year
  //   bool descending = true,
  // }) async {
  //   Query query = _firestore
  //       .collection(AppCollections.usersCollection)
  //       .doc(userId)
  //       .collection(AppCollections.favoritesCollection)
  //       .orderBy(sortBy, descending: descending)
  //   //.limit(limit);
  //   ;
  //   //? remove comment if u want to put a limit
  //   // if (startAfter != null) {
  //   //   query = query.startAfterDocument(startAfter);
  //   // }

  //   final favoriteDocs = await query.get();
  //   final List<String> carIds =
  //       favoriteDocs.docs.map((doc) => doc['carId'] as String).toList();

  //   if (carIds.isEmpty) return [];

  //   final carsQuery =
  //       await _firestore
  //           .collection(AppCollections.carsCollection)
  //           .where(FieldPath.documentId, whereIn: carIds)
  //           .get();

  //   return carsQuery.docs.map((doc) => CarModel.fromJson(doc.data())).toList();
  // }

  @override
  Future<bool> isCarInFavoite({
    required String userId,
    required String carId,
  }) async {
    try {
      final query =
          await _firestore
              .collection(AppCollections.usersCollection)
              .doc(userId)
              .collection(AppCollections.favoritesCollection)
              .doc(carId)
              .get();
      return query.exists;
    } catch (e) {
      throw "cant find car in the favorite";
    }
  }

  @override
  Future<List<String>> getAllFavoriteCarsIds({required String userId}) async {
    try {
      final favoriteDocs =
          await _firestore
              .collection(AppCollections.usersCollection)
              .doc(userId)
              .collection(AppCollections.favoritesCollection)
              .get();
      if (favoriteDocs.docs.isEmpty) {
        return [];
      }
      final List<String> carIds =
          favoriteDocs.docs.map((doc) => doc['carId'] as String).toList();
      return carIds;
    } catch (e) {
      throw "cant get cars in the favorite";
    }
  }

  @override
  Stream<List<String>> getStreamCarFavorites({required String userId}) {
    return _firestore
        .collection(AppCollections.usersCollection)
        .doc(userId)
        .collection(AppCollections.favoritesCollection)
        .snapshots()
        .map((snapshot) {
          return snapshot.docs.map((doc) => doc['carId'] as String).toList();
        });
  }
}
