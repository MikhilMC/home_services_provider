import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home_services_provider/app_modules/home_module/model/services_booking_model.dart';
import 'package:home_services_provider/app_modules/home_module/service/get_booked_services.dart';

part 'booked_services_event.dart';
part 'booked_services_state.dart';
part 'booked_services_bloc.freezed.dart';

class BookedServicesBloc
    extends Bloc<BookedServicesEvent, BookedServicesState> {
  BookedServicesBloc() : super(_Initial()) {
    on<_bookedServicesFetched>((event, emit) async {
      emit(BookedServicesState.loading());
      try {
        final bookedServices = await getBookedServices();
        emit(BookedServicesState.success(bookedServices));
      } catch (e) {
        emit(BookedServicesState.error(e.toString()));
      }
    });
  }
}
