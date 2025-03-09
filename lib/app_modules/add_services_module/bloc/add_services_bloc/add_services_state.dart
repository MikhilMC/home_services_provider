part of 'add_services_bloc.dart';

@freezed
class AddServicesState with _$AddServicesState {
  const factory AddServicesState.initial() = _Initial;
  const factory AddServicesState.loading() = _loading;
  const factory AddServicesState.success(
    AddServicesResponseModel response,
  ) = _success;
  const factory AddServicesState.failure(
    String errorMessage,
  ) = _failure;
}
