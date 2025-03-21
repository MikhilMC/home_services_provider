import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home_services_provider/app_modules/earnings_module/model/earning_model.dart';
import 'package:home_services_provider/app_modules/earnings_module/service/get_last_15_days_earnings.dart';

part 'last_15_days_earnings_event.dart';
part 'last_15_days_earnings_state.dart';
part 'last_15_days_earnings_bloc.freezed.dart';

class Last15DaysEarningsBloc
    extends Bloc<Last15DaysEarningsEvent, Last15DaysEarningsState> {
  Last15DaysEarningsBloc() : super(_Initial()) {
    on<_last15DaysEarningsFetched>((event, emit) async {
      emit(Last15DaysEarningsState.loading());
      try {
        final last15DaysEarnings = await getLast15DaysEarnings();
        if (last15DaysEarnings.isNotEmpty) {
          emit(Last15DaysEarningsState.success(last15DaysEarnings));
        } else {
          emit(Last15DaysEarningsState.empty());
        }
      } catch (e) {
        emit(Last15DaysEarningsState.error(e.toString()));
      }
    });
  }
}
