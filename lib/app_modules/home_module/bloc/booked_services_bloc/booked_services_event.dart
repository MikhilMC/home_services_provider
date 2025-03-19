part of 'booked_services_bloc.dart';

@freezed
class BookedServicesEvent with _$BookedServicesEvent {
  const factory BookedServicesEvent.started() = _Started;
  const factory BookedServicesEvent.bookedServicesFetched() =
      _bookedServicesFetched;
}
