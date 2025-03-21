part of 'last_15_days_earnings_bloc.dart';

@freezed
class Last15DaysEarningsEvent with _$Last15DaysEarningsEvent {
  const factory Last15DaysEarningsEvent.started() = _Started;
  const factory Last15DaysEarningsEvent.last15DaysEarningsFetched() =
      _last15DaysEarningsFetched;
}
