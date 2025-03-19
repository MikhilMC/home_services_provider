part of 'booked_services_bloc.dart';

@freezed
class BookedServicesState with _$BookedServicesState {
  const factory BookedServicesState.initial() = _Initial;
  const factory BookedServicesState.loading() = BookedServicesLoading;
  const factory BookedServicesState.success(
    ServicesBookingModel bookedServices,
  ) = BookedServicesSuccess;
  const factory BookedServicesState.error(
    String errorMessage,
  ) = BookedServicesError;
}
