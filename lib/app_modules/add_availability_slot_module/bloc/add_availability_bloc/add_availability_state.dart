part of 'add_availability_bloc.dart';

@freezed
class AddAvailabilityState with _$AddAvailabilityState {
  const factory AddAvailabilityState.initial() = _Initial;
  const factory AddAvailabilityState.loading() = _loading;
  const factory AddAvailabilityState.success(
    AddAvailabilityResponseModel response,
  ) = _success;
  const factory AddAvailabilityState.failure(
    String errorMessage,
  ) = _failure;
}
