import 'package:flutter/material.dart';

class TotalEarningsCard extends StatelessWidget {
  final double totalEarnings = 1250.75; // Example total earnings
  const TotalEarningsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
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
    );
  }
}
