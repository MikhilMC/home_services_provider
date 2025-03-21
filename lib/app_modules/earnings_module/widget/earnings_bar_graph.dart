import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'package:home_services_provider/app_constants/app_colors.dart';
import 'package:home_services_provider/app_modules/earnings_module/bloc/last_15_days_earnings_bloc/last_15_days_earnings_bloc.dart';
import 'package:home_services_provider/app_modules/earnings_module/model/earning_model.dart';
import 'package:home_services_provider/app_modules/earnings_module/widget/bar_graph.dart';
import 'package:home_services_provider/app_widgets/custom_error_widget.dart';

class EarningsBarGraph extends StatefulWidget {
  const EarningsBarGraph({super.key});

  @override
  State<EarningsBarGraph> createState() => _EarningsBarGraphState();
}

class _EarningsBarGraphState extends State<EarningsBarGraph> {
  @override
  void initState() {
    super.initState();
    context
        .read<Last15DaysEarningsBloc>()
        .add(Last15DaysEarningsEvent.last15DaysEarningsFetched());
  }

  /// Generates a list of earnings for the last 15 days.
  /// If data exists for a day, it uses the `total_amount`, otherwise uses `0.0`.
  List<double> _generateEarningsList(List<EarningModel> serverData) {
    final List<double> earnings = List.filled(15, 0.0);

    // Get the current date and calculate the range for the last 15 days
    DateTime now = DateTime.now();
    List<String> last15Days = List.generate(
      15,
      (index) =>
          DateFormat('yyyy-MM-dd').format(now.subtract(Duration(days: index))),
    );

    // Map server data by date for easy lookup
    Map<String, double> dataMap = {
      for (var entry in serverData)
        DateFormat('yyyy-MM-dd').format(entry.bookingDateCasted):
            entry.totalAmount,
    };

    // Fill earnings with server data or 0.0 if no data
    for (int i = 0; i < 15; i++) {
      String date = last15Days[i];
      earnings[i] = dataMap[date] ?? 0.0;
    }

    return earnings.reversed.toList();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Last15DaysEarningsBloc, Last15DaysEarningsState>(
      builder: (context, state) {
        if (state is Last15DaysEarningsError) {
          return CustomErrorWidget(
            errorMessage: state.errorMessage,
          );
        }

        if (state is Last15DaysEarningsEmpty) {
          return BarGraph(last15DaysEarnings: List.filled(15, 0.0));
        }

        if (state is! Last15DaysEarningsSuccess) {
          return Center(
            child: CircularProgressIndicator(
              color: AppColors.firstColor,
            ),
          );
        }

        final earnings = state.earnings;
        return BarGraph(last15DaysEarnings: _generateEarningsList(earnings));
      },
    );
  }
}
