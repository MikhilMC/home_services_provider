part of 'last_10_works_bloc.dart';

@freezed
class Last10WorksState with _$Last10WorksState {
  const factory Last10WorksState.initial() = _Initial;
  const factory Last10WorksState.loading() = LastWorksLoading;
  const factory Last10WorksState.success(
    List<ServiceWorkModel> works,
  ) = LastWorksSuccess;
  const factory Last10WorksState.error(
    String errorMessage,
  ) = LastWorksError;
  const factory Last10WorksState.empty() = LastWorksEmpty;
}
