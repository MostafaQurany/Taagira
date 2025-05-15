import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:taggira/features/requests/models/request_model.dart';
import 'package:taggira/features/requests/repo/requests_repo.dart';
import 'package:uuid/uuid.dart';

part 'request_state.dart';
part 'request_cubit.freezed.dart';

class RequestCubit extends Cubit<RequestState> {
  RequestsRepo reqRepo;
  RequestCubit(this.reqRepo) : super(const RequestState.initial());

  createRequest(
    String userId,
    String carId,
    DateTime pickUpDate,
    DateTime returnDate,
  ) async {
    try {
      emit(const RequestState.createRequestLoading());
      RequestModel requestModel = RequestModel(
        requestId: const Uuid().v4(),
        carId: carId,
        userId: userId,
        pickUpDate: pickUpDate,
        returnDate: returnDate,
        createdAt: Timestamp.now(),
      );
      await reqRepo.createRentRequest(requestModel: requestModel);
      emit(const RequestState.createRequestSuccess());
    } catch (e) {
      emit(RequestState.createRequestError(e.toString()));
    }
  }

  Stream<List<RequestModel>> getRequestModel(
    String userId,
    RequestModelState selectedFilter,
  ) {
    return reqRepo.getRequestsStream(userId: userId, state: selectedFilter);
  }
}
