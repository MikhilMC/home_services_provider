import 'package:flutter/material.dart';
import 'package:home_services_provider/app_modules/earnings_module/widget/earnings_bar_graph.dart';
import 'package:home_services_provider/app_modules/earnings_module/widget/recent_earnings_widget.dart';
import 'package:home_services_provider/app_modules/earnings_module/widget/total_earnings_card.dart';

class EarningsPage extends StatelessWidget {
  const EarningsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Earnings Overview")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Total Earnings Card
            TotalEarningsCard(),

            const SizedBox(height: 20),

            // Earnings Bar Graph
            Text("Earnings (Last 15 Days)",
                style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 10),
            EarningsBarGraph(),

            const SizedBox(height: 20),

            // Work History List
            Text(
              "Recent Works & Earnings",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 10),
            RecentEarningsWidget(),
          ],
        ),
      ),
    );
  }
}
