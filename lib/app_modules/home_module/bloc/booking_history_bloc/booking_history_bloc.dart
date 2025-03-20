import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home_services_provider/app_modules/home_module/model/booking_history_model.dart';
import 'package:home_services_provider/app_modules/home_module/service/get_services_history.dart';

part 'booking_history_event.dart';
part 'booking_history_state.dart';
part 'booking_history_bloc.freezed.dart';

class BookingHistoryBloc
    extends Bloc<BookingHistoryEvent, BookingHistoryState> {
  BookingHistoryBloc() : super(_Initial()) {
    on<_bookingHistoryFetched>((event, emit) async {
      emit(BookingHistoryState.loading());
      try {
        final bookingHistory = await getServicesHistory();
        if (bookingHistory.isNotEmpty) {
          emit(BookingHistoryState.success(bookingHistory));
        } else {
          emit(BookingHistoryState.empty());
        }
      } catch (e) {
        emit(BookingHistoryState.error(e.toString()));
      }
    });
  }
}
