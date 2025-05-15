part of 'request_cubit.dart';

@freezed
class RequestState with _$RequestState {
  const factory RequestState.initial() = _Initial;

  // --- Create Request ---//
  const factory RequestState.createRequestLoading() = CreateRequestLoading;
  const factory RequestState.createRequestError(String message) =
      CreateRequestError;
  const factory RequestState.createRequestSuccess() = CreateRequestSuccess;

  // --- Cancel Request ---//
  const factory RequestState.cancelRequestLoading() = CancelRequestLoading;
  const factory RequestState.cancelRequestError(String message) =
      CancelRequestError;
  const factory RequestState.cancelRequestSuccess() = CancelRequestSuccess;
}
