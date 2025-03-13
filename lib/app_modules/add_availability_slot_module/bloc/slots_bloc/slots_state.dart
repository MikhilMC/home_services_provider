part of 'slots_bloc.dart';

@freezed
class SlotsState with _$SlotsState {
  const factory SlotsState.initial() = _Initial;
  const factory SlotsState.loading() = SlotsLoading;
  const factory SlotsState.success(
    ServiceProviderSlotsModel slots,
  ) = SlotsSuccess;
  const factory SlotsState.error(
    String errorMessage,
  ) = SlotsError;
}
