import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:intl/intl.dart';

class EarningsPage extends StatefulWidget {
  const EarningsPage({super.key});

  @override
  State<EarningsPage> createState() => _EarningsPageState();
}

class _EarningsPageState extends State<EarningsPage> {
  double totalEarnings = 1250.75; // Example total earnings

  // Sample earnings for the last 15 days
  final List<double> last15DaysEarnings = [
    50,
    75,
    30,
    90,
    110,
    40,
    80,
    60,
    130,
    100,
    50,
    140,
    70,
    90,
    120
  ];

  // Sample completed work data with date
  final List<Map<String, dynamic>> workHistory = [
    {"service": "Plumbing", "amount": 100, "date": DateTime(2025, 3, 1)},
    {"service": "Electric Repair", "amount": 120, "date": DateTime(2025, 3, 2)},
    {"service": "Cleaning", "amount": 80, "date": DateTime(2025, 3, 3)},
    {"service": "Carpentry", "amount": 150, "date": DateTime(2025, 3, 4)},
    {"service": "Painting", "amount": 200, "date": DateTime(2025, 3, 5)},
  ];

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
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
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
                          "₹${totalEarnings.toStringAsFixed(2)}",
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
            ),

            const SizedBox(height: 20),

            // Earnings Bar Graph
            Text("Earnings (Last 15 Days)",
                style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: BarChart(
                BarChartData(
                  barGroups: List.generate(
                    last15DaysEarnings.length,
                    (index) => BarChartGroupData(
                      x: index,
                      barRods: [
                        BarChartRodData(
                          toY: last15DaysEarnings[index],
                          color: Colors.blue,
                          width: 12,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ],
                    ),
                  ),
                  titlesData: FlTitlesData(
                    leftTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false)),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, _) {
                          int index = value.toInt();
                          if (index >= 0 && index < 15) {
                            return Text("D${index + 1}",
                                style: const TextStyle(fontSize: 10));
                          }
                          return const Text("");
                        },
                        reservedSize: 30,
                      ),
                    ),
                  ),
                  borderData: FlBorderData(show: false),
                  gridData: const FlGridData(show: false),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Work History List
            Text(
              "Recent Works & Earnings",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: workHistory.length,
                itemBuilder: (context, index) {
                  final work = workHistory[index];
                  String formattedDate =
                      DateFormat('MMM d, yyyy').format(work["date"]);
                  String dayOfWeek = DateFormat('EEEE')
                      .format(work["date"]); // Get the day of the week

                  return Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      title: Text(
                        work["service"],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "$dayOfWeek, $formattedDate",
                      ), // Shows Day & Date
                      trailing: Text(
                        "₹${work["amount"]}",
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
            ),
          ],
        ),
      ),
    );
  }
}
