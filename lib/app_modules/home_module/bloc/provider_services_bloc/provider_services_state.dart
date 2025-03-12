part of 'provider_services_bloc.dart';

@freezed
class ProviderServicesState with _$ProviderServicesState {
  const factory ProviderServicesState.initial() = _Initial;
  const factory ProviderServicesState.loading() = ProviderServicesLoading;
  const factory ProviderServicesState.success(
    ServiceModel providerServices,
  ) = ProviderServicesSuccess;
  const factory ProviderServicesState.error(
    String errorMessage,
  ) = ProviderServicesError;
}
