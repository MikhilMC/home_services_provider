part of 'provider_services_bloc.dart';

@freezed
class ProviderServicesEvent with _$ProviderServicesEvent {
  const factory ProviderServicesEvent.started() = _Started;
  const factory ProviderServicesEvent.providerServicesFetched() =
      _providerServicesFetched;
}
