import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home_services_provider/app_modules/work_details_module/model/work_model.dart';
import 'package:home_services_provider/app_modules/work_details_module/service/get_work_details.dart';

part 'work_details_event.dart';
part 'work_details_state.dart';
part 'work_details_bloc.freezed.dart';

class WorkDetailsBloc extends Bloc<WorkDetailsEvent, WorkDetailsState> {
  WorkDetailsBloc() : super(_Initial()) {
    on<_workDetailsFetched>((event, emit) async {
      emit(WorkDetailsState.loading());
      try {
        final workDetails = await getWorkDetails(
          workId: event.workId,
        );
        emit(WorkDetailsState.success(workDetails));
      } catch (e) {
        emit(WorkDetailsState.error(e.toString()));
      }
    });
  }
}
