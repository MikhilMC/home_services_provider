part of 'last_15_days_earnings_bloc.dart';

@freezed
class Last15DaysEarningsState with _$Last15DaysEarningsState {
  const factory Last15DaysEarningsState.initial() = _Initial;
  const factory Last15DaysEarningsState.loading() = Last15DaysEarningsLoading;
  const factory Last15DaysEarningsState.success(
    List<EarningModel> earnings,
  ) = Last15DaysEarningsSuccess;
  const factory Last15DaysEarningsState.error(
    String errorMessage,
  ) = Last15DaysEarningsError;
  const factory Last15DaysEarningsState.empty() = Last15DaysEarningsEmpty;
}
