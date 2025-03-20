part of 'start_work_bloc.dart';

@freezed
class StartWorkState with _$StartWorkState {
  const factory StartWorkState.initial() = _Initial;
  const factory StartWorkState.loading() = _Loading;
  const factory StartWorkState.success(
    StartWorkResponseModel response,
  ) = _success;
  const factory StartWorkState.failure(
    String errorMessage,
  ) = _failure;
}
