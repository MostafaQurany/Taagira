import 'package:taggira/features/requests/data/requests_data_source.dart';
import 'package:taggira/features/requests/models/request_model.dart';

abstract class RequestsRepo {
  Future<void> createRentRequest({required RequestModel requestModel});
  Stream<List<RequestModel>> getRequestsStream({
    required String userId,
    RequestModelState state = RequestModelState.all,
    DateTime? date,
  });
  Future<void> cancelRequest(String requestId);
}

class RequestsRepoImpl implements RequestsRepo {
  RequestsDataSource requestsDataSource;
  RequestsRepoImpl(this.requestsDataSource);
  @override
  Future<void> cancelRequest(String requestId) async {
    try {
      await requestsDataSource.cancelRequest(requestId);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> createRentRequest({required RequestModel requestModel}) async {
    try {
      await requestsDataSource.createRentRequest(requestModel: requestModel);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Stream<List<RequestModel>> getRequestsStream({
    required String userId,
    RequestModelState state = RequestModelState.all,
    DateTime? date,
  }) {
    return requestsDataSource.getRequestsStream(
      userId: userId,
      date: date,
      state: state,
    );
  }
}
