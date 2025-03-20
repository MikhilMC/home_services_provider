import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home_services_provider/app_modules/work_details_module/model/start_work_response_model.dart';
import 'package:home_services_provider/app_modules/work_details_module/service/start_work.dart';

part 'start_work_event.dart';
part 'start_work_state.dart';
part 'start_work_bloc.freezed.dart';

class StartWorkBloc extends Bloc<StartWorkEvent, StartWorkState> {
  StartWorkBloc() : super(_Initial()) {
    on<_startWork>((event, emit) async {
      emit(StartWorkState.loading());
      try {
        final response = await startWork(
          bookingId: event.bookingId,
        );
        emit(StartWorkState.success(response));
      } catch (e) {
        emit(StartWorkState.failure(e.toString()));
      }
    });
  }
}
