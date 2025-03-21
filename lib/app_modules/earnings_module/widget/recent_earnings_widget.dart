import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_services_provider/app_constants/app_colors.dart';
import 'package:home_services_provider/app_modules/earnings_module/bloc/last_10_works_bloc/last_10_works_bloc.dart';
import 'package:home_services_provider/app_widgets/custom_error_widget.dart';
import 'package:home_services_provider/app_widgets/empty_list.dart';
import 'package:intl/intl.dart';

class RecentEarningsWidget extends StatefulWidget {
  const RecentEarningsWidget({super.key});

  @override
  State<RecentEarningsWidget> createState() => _RecentEarningsWidgetState();
}

class _RecentEarningsWidgetState extends State<RecentEarningsWidget> {
  @override
  void initState() {
    super.initState();
    context.read<Last10WorksBloc>().add(Last10WorksEvent.last10WorksFetched());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Last10WorksBloc, Last10WorksState>(
      builder: (context, state) {
        if (state is LastWorksError) {
          return CustomErrorWidget(
            errorMessage: state.errorMessage,
          );
        }

        if (state is LastWorksEmpty) {
          return EmptyList(
            message: "You haven't done any works.",
          );
        }

        if (state is! LastWorksSuccess) {
          return Center(
            child: CircularProgressIndicator(
              color: AppColors.firstColor,
            ),
          );
        }

        final last10Works = state.works;

        return Expanded(
          child: ListView.builder(
            itemCount: last10Works.length,
            itemBuilder: (context, index) {
              final work = last10Works[index];
              String formattedDate =
                  DateFormat('MMM d, yyyy').format(work.bookingDate);
              String dayOfWeek = DateFormat('EEEE')
                  .format(work.bookingDate); // Get the day of the week

              return Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  title: Text(
                    work.serviceName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "$dayOfWeek, $formattedDate",
                  ), // Shows Day & Date
                  trailing: Text(
                    "₹${work.totalAmount}",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
