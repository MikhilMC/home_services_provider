import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_services_provider/app_constants/app_colors.dart';
import 'package:home_services_provider/app_modules/earnings_module/bloc/total_earnings_bloc/total_earnings_bloc.dart';
import 'package:home_services_provider/app_widgets/custom_error_widget.dart';

class TotalEarningsCard extends StatefulWidget {
  const TotalEarningsCard({super.key});

  @override
  State<TotalEarningsCard> createState() => _TotalEarningsCardState();
}

class _TotalEarningsCardState extends State<TotalEarningsCard> {
  @override
  void initState() {
    super.initState();
    context
        .read<TotalEarningsBloc>()
        .add(TotalEarningsEvent.totalEarningsFetched());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TotalEarningsBloc, TotalEarningsState>(
      builder: (context, state) {
        if (state is TotalEarningsError) {
          return CustomErrorWidget(
            errorMessage: state.errorMessage,
          );
        }

        if (state is! TotalEarningsSuccess) {
          return Center(
            child: CircularProgressIndicator(
              color: AppColors.firstColor,
            ),
          );
        }

        final totalEarningsData = state.totalEarningsData;

        return Card(
          elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Total Earnings",
                        style: Theme.of(context).textTheme.titleMedium),
                    const SizedBox(height: 8),
                    Text(
                      "₹${totalEarningsData.totalEarnings.toStringAsFixed(2)}",
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
                const Icon(
                  Icons.currency_rupee,
                  size: 40,
                  color: Colors.green,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
