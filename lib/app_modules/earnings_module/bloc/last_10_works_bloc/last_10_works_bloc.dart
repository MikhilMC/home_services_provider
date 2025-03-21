import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home_services_provider/app_modules/earnings_module/model/service_work_model.dart';
import 'package:home_services_provider/app_modules/earnings_module/service/get_last_10_works.dart';

part 'last_10_works_event.dart';
part 'last_10_works_state.dart';
part 'last_10_works_bloc.freezed.dart';

class Last10WorksBloc extends Bloc<Last10WorksEvent, Last10WorksState> {
  Last10WorksBloc() : super(_Initial()) {
    on<_last10WorksFetched>((event, emit) async {
      emit(Last10WorksState.loading());
      try {
        final works = await getLast10Works();
        if (works.isNotEmpty) {
          emit(Last10WorksState.success(works));
        } else {
          emit(Last10WorksState.empty());
        }
      } catch (e) {
        emit(Last10WorksState.error(e.toString()));
      }
    });
  }
}
