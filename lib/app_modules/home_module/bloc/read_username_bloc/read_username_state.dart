part of 'read_username_bloc.dart';

@freezed
class ReadUsernameState with _$ReadUsernameState {
  const factory ReadUsernameState.initial() = _Initial;
  const factory ReadUsernameState.loading() = UsernameLoading;
  const factory ReadUsernameState.success(String username) = UsernameSuccess;
  const factory ReadUsernameState.error(String errorMessage) = UsernameError;
}
