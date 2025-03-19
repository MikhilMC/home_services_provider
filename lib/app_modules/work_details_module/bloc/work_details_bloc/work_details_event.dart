part of 'work_details_bloc.dart';

@freezed
class WorkDetailsEvent with _$WorkDetailsEvent {
  const factory WorkDetailsEvent.started() = _Started;
  const factory WorkDetailsEvent.workDetailsFetched(
    int workId,
  ) = _workDetailsFetched;
}
