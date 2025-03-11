part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loading() = ProfileDetailsLoading;
  const factory ProfileState.success(
    ProfileModel profileDetails,
  ) = ProfileDetailsSuccess;
  const factory ProfileState.error(
    String errorMessage,
  ) = ProfileDetailsError;
}
