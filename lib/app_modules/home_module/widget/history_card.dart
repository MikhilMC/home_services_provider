// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:home_services_provider/app_utils/app_helper.dart';

class HistoryCard extends StatelessWidget {
  final String userName;
  final String category;
  final String service;
  final double rate;
  final DateTime date;
  final String startTime;
  final String endTime;
  final String status;
  const HistoryCard({
    super.key,
    required this.userName,
    required this.category,
    required this.service,
    required this.rate,
    required this.date,
    required this.startTime,
    required this.endTime,
    required this.status,
  });

  // Helper function to get status color
  Color _getStatusColor(String status) {
    switch (status) {
      case 'paid':
        return Colors.green;
      case 'completed':
        return Colors.blue;
      case 'not arrived':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('EEEE, MMM d, yyyy');
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User & Service Info
            ListTile(
              contentPadding: EdgeInsets.zero,
              title:
                  Text(userName, style: Theme.of(context).textTheme.titleLarge),
              subtitle:
                  Text(category, style: Theme.of(context).textTheme.bodyMedium),
              trailing: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: _getStatusColor(status).withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: _getStatusColor(status),
                    width: 1,
                  ),
                ),
                child: Text(
                  status.toUpperCase(),
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: _getStatusColor(status),
                        fontWeight: FontWeight.bold,
                        fontSize: 14, // Increased font size
                      ),
                ),
              ),
            ),

            const SizedBox(height: 5),

            // Service & Work Details
            Text(
              "$service - ₹$rate/3 hours",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 3),

            // Date & Time Slot
            Row(
              children: [
                const Icon(
                  Icons.calendar_today,
                  size: 16,
                  color: Colors.grey,
                ),
                const SizedBox(width: 5),
                Text(
                  dateFormat.format(date),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
            const SizedBox(height: 3),

            Row(
              children: [
                const Icon(
                  Icons.access_time,
                  size: 16,
                  color: Colors.grey,
                ),
                const SizedBox(width: 5),
                Text(
                    "${AppHelper.convertTo12HourFormat(startTime)} - ${AppHelper.convertTo12HourFormat(endTime)}",
                    style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
