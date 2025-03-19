// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:home_services_provider/app_modules/home_module/model/services_booking_model.dart';
import 'package:home_services_provider/app_modules/work_details_module/view/work_details_page.dart';
import 'package:home_services_provider/app_utils/app_helper.dart';
import 'package:intl/intl.dart';

class BookingCard extends StatelessWidget {
  final Service service;
  const BookingCard({
    super.key,
    required this.service,
  });

  // Function to format date
  String _formatDate(DateTime date) {
    return DateFormat('EEEE, MMM d, yyyy')
        .format(date); // Example: Tuesday, Mar 11, 2025
  }

  // Function to get status badge color
  Color _getStatusColor(String status) {
    switch (status) {
      case "booked":
        return Colors.orange;
      case "ongoing":
        return Colors.blue;
      case "completed":
        return Colors.green;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(service.userName,
            style: Theme.of(context).textTheme.titleMedium),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Service: ${service.serviceDetails.serviceName}",
                style: Theme.of(context).textTheme.bodyMedium),
            Text(
                "Time: ${AppHelper.convertTo12HourFormat(service.slotStartTime)} - ${AppHelper.convertTo12HourFormat(service.slotEndTime)}",
                style: Theme.of(context).textTheme.bodySmall),
            Text(
              "Date: ${_formatDate(service.bookingDate)}", // Formatted date
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.grey,
                  ),
            ),
          ],
        ),
        trailing: Chip(
          label: Text(service.status),
          backgroundColor: _getStatusColor(service.status),
          labelStyle: const TextStyle(
            color: Colors.white,
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WorkDetailsPage(
                serviceId: service.id,
              ), // Navigate to WorkDetailsPage
            ),
          );
        },
      ),
    );
  }
}
