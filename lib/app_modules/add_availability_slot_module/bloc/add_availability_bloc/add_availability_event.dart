part of 'add_availability_bloc.dart';

@freezed
class AddAvailabilityEvent with _$AddAvailabilityEvent {
  const factory AddAvailabilityEvent.started() = _Started;
  const factory AddAvailabilityEvent.addedAvailability(
    DateTime date,
    List<int> slotIds,
  ) = _addedAvailability;
}
