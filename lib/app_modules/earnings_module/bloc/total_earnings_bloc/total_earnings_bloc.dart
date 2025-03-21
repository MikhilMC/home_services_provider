import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home_services_provider/app_modules/earnings_module/model/total_earnings_model.dart';
import 'package:home_services_provider/app_modules/earnings_module/service/get_total_earnings.dart';

part 'total_earnings_event.dart';
part 'total_earnings_state.dart';
part 'total_earnings_bloc.freezed.dart';

class TotalEarningsBloc extends Bloc<TotalEarningsEvent, TotalEarningsState> {
  TotalEarningsBloc() : super(_Initial()) {
    on<_totalEarningsFetched>((event, emit) async {
      emit(TotalEarningsState.loading());
      try {
        final earningsData = await getTotalEarnings();
        emit(TotalEarningsState.success(earningsData));
      } catch (e) {
        emit(TotalEarningsState.error(e.toString()));
      }
    });
  }
}
