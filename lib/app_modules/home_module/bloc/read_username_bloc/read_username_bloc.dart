import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home_services_provider/app_constants/app_localstorage.dart';

part 'read_username_event.dart';
part 'read_username_state.dart';
part 'read_username_bloc.freezed.dart';

class ReadUsernameBloc extends Bloc<ReadUsernameEvent, ReadUsernameState> {
  ReadUsernameBloc() : super(_Initial()) {
    on<_usernameRetreived>((event, emit) async {
      emit(ReadUsernameState.loading());
      try {
        final username = await AppLocalstorage.getUsername();
        emit(ReadUsernameState.success(username));
      } catch (e) {
        emit(ReadUsernameState.error(e.toString()));
      }
    });
  }
}
