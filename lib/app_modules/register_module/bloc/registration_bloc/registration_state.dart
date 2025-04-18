part of 'registration_bloc.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState.initial() = _Initial;
  const factory RegistrationState.loading() = _loading;
  const factory RegistrationState.success(
    RegisterResponseModel response,
  ) = _success;
  const factory RegistrationState.failure(
    String errorMessage,
  ) = _failure;
}
