part of 'add_services_bloc.dart';

@freezed
class AddServicesEvent with _$AddServicesEvent {
  const factory AddServicesEvent.started() = _Started;
  const factory AddServicesEvent.servicesAdded(
    AddServicesDetails addServicesDetails,
  ) = _servicesAdded;
}
