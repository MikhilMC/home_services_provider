import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:home_services_provider/app_modules/earnings_module/utils/random_generator.dart';

class EarningsBarGraph extends StatefulWidget {
  const EarningsBarGraph({super.key});

  @override
  State<EarningsBarGraph> createState() => _EarningsBarGraphState();
}

class _EarningsBarGraphState extends State<EarningsBarGraph> {
  // Sample earnings for the last 15 days
  final List<double> last15DaysEarnings =
      RandomGenerator.generateRandomEarnings(15, 30, 150);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
            leftTitles:
                const AxisTitles(sideTitles: SideTitles(showTitles: false)),
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
    );
  }
}
