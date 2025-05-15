/// -- class RentCarDataSource -- //
/// 1- create rentRequest with (carID , userId, timestamp , pickupdate , returndate , requestId , requestState(waiting , done , reject , booked, cancelled )) in requests Collections
/// 2- get stream to see all changes that happen to the request where can be filter with (state , date )
/// 3- cancel request but the state shouild be waiting to be apple cancel
/// NOTE:- if there any function can i add to be a better preformance and useable for the user u can sugest
library;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:taggira/core/utils/helper/app_constance.dart';
import 'package:taggira/features/requests/models/request_model.dart';
import 'package:taggira/features/requests/repo/requests_repo.dart';

abstract class RequestsDataSource {
  Future<void> createRentRequest({required RequestModel requestModel});
  Stream<List<RequestModel>> getRequestsStream({
    required String userId,
    RequestModelState state = RequestModelState.all,
    DateTime? date,
  });
  Future<void> cancelRequest(String requestId);
}

class RequestsDataSourceImpl implements RequestsDataSource {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // 1. Create Request
  @override
  Future<void> createRentRequest({required RequestModel requestModel}) async {
    final docRef =
        _firestore.collection(AppCollections.requestsCollection).doc();
    final now = Timestamp.now();

    await docRef.set(requestModel.toJson());
  }

  // 2. Stream Requests (optionally filtered by state or date)
  @override
  Stream<List<RequestModel>> getRequestsStream({
    required String userId,
    RequestModelState state = RequestModelState.all,
    DateTime? date,
  }) {
    Query<Map<String, dynamic>> query = _firestore
        .collection(AppCollections.requestsCollection)
        .where("userId", isEqualTo: userId);

    if (state != RequestModelState.all) {
      query = query.where("requestState", isEqualTo: state.name);
    }

    if (date != null) {
      final start = Timestamp.fromDate(
        DateTime(date.year, date.month, date.day),
      );
      final end = Timestamp.fromDate(
        DateTime(date.year, date.month, date.day + 1),
      );
      query = query
          .where("pickUpDate", isGreaterThanOrEqualTo: start)
          .where("pickUpDate", isLessThan: end);
    }

    return query
        .orderBy("createdAt", descending: true)
        .snapshots()
        .map(
          (snapshot) =>
              snapshot.docs
                  .map((doc) => RequestModel.fromJson(doc.data()))
                  .toList(),
        );
  }

  // 3. Cancel Request (only if it's in 'waiting' state)
  @override
  Future<void> cancelRequest(String requestId) async {
    final docRef = _firestore
        .collection(AppCollections.requestsCollection)
        .doc(requestId);
    final snapshot = await docRef.get();

    if (!snapshot.exists) {
      throw Exception("Request not found.");
    }

    final currentState = snapshot.data()?['requestState'];
    if (currentState != RequestModelState.waiting.name) {
      throw Exception("Only waiting requests can be cancelled.");
    }

    await docRef.update({"requestState": RequestModelState.cancelled.name});
  }
}
