part of 'work_details_bloc.dart';

@freezed
class WorkDetailsState with _$WorkDetailsState {
  const factory WorkDetailsState.initial() = _Initial;
  const factory WorkDetailsState.loading() = WorkDetailsLoading;
  const factory WorkDetailsState.success(
    WorkModel workDetails,
  ) = WorkDetailsSuccess;
  const factory WorkDetailsState.error(
    String errorMessage,
  ) = WorkDetailsError;
}
