import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_services_provider/app_constants/app_colors.dart';
import 'package:home_services_provider/app_modules/home_module/bloc/booking_history_bloc/booking_history_bloc.dart';
import 'package:home_services_provider/app_modules/home_module/widget/history_card.dart';
import 'package:home_services_provider/app_widgets/custom_error_widget.dart';
import 'package:home_services_provider/app_widgets/empty_list.dart';

class HistoryWidget extends StatefulWidget {
  const HistoryWidget({super.key});

  @override
  State<HistoryWidget> createState() => _HistoryWidgetState();
}

class _HistoryWidgetState extends State<HistoryWidget> {
  @override
  void initState() {
    super.initState();
    context
        .read<BookingHistoryBloc>()
        .add(BookingHistoryEvent.bookingHistoryFetched());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingHistoryBloc, BookingHistoryState>(
      builder: (context, state) {
        if (state is BookingHistoryError) {
          return CustomErrorWidget(
            errorMessage: state.errorMessage,
          );
        }

        if (state is BookingHistoryEmpty) {
          return EmptyList(
            message: "Your booking history is empty.",
          );
        }

        if (state is! BookingHistorySuccess) {
          return Center(
            child: CircularProgressIndicator(
              color: AppColors.firstColor,
            ),
          );
        }

        final bookingHistory = state.bookingHistory;

        return ListView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: bookingHistory.length,
          itemBuilder: (context, index) {
            final work = bookingHistory[index];

            return HistoryCard(
              userName: work.userName,
              category: work.serviceDetails.categoryName,
              service: work.serviceDetails.serviceName,
              rate: work.serviceDetails.price,
              date: work.bookingDate,
              startTime: work.slotStartTime,
              endTime: work.slotEndTime,
              status: work.status,
            );
          },
        );
      },
    );
  }
}
