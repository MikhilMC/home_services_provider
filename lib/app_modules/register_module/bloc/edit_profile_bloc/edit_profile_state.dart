part of 'edit_profile_bloc.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState.initial() = _Initial;
  const factory EditProfileState.loading() = _loading;
  const factory EditProfileState.success(
    EditProfileResponseModel response,
  ) = _success;
  const factory EditProfileState.error(String errorMessage) = _error;
}
