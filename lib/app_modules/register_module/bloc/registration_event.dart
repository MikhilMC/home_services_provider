part of 'registration_bloc.dart';

@freezed
class RegistrationEvent with _$RegistrationEvent {
  const factory RegistrationEvent.started() = _Started;
  const factory RegistrationEvent.serviceProviderRegistered(
    ServiceProviderDetails serviceProviderDetails,
  ) = _serviceProviderRegistered;
}
