part of 'read_username_bloc.dart';

@freezed
class ReadUsernameEvent with _$ReadUsernameEvent {
  const factory ReadUsernameEvent.started() = _Started;
  const factory ReadUsernameEvent.usernameRetreived() = _usernameRetreived;
}
