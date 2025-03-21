part of 'last_10_works_bloc.dart';

@freezed
class Last10WorksEvent with _$Last10WorksEvent {
  const factory Last10WorksEvent.started() = _Started;
  const factory Last10WorksEvent.last10WorksFetched() = _last10WorksFetched;
}
