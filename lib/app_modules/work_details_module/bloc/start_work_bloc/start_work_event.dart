part of 'start_work_bloc.dart';

@freezed
class StartWorkEvent with _$StartWorkEvent {
  const factory StartWorkEvent.started() = _Started;
  const factory StartWorkEvent.startWork(
    int bookingId,
  ) = _startWork;
}
