import 'package:flutter/material.dart';
import 'package:home_services_provider/app_modules/work_details_module/view/work_details_page.dart';
import 'package:intl/intl.dart';

class WorksWidget extends StatefulWidget {
  const WorksWidget({super.key});

  @override
  State<WorksWidget> createState() => _WorksWidgetState();
}

class _WorksWidgetState extends State<WorksWidget> {
  // Sample Work Requests Data
  final List<Map<String, dynamic>> workRequests = [
    {
      "username": "Alice Johnson",
      "profileImage": "https://placehold.co/500x500",
      "service": "Plumbing",
      "startTime": "10:00 AM",
      "endTime": "1:00 PM",
      "date": "2025-03-11",
      "status": "Pending"
    },
    {
      "username": "Michael Smith",
      "profileImage": "https://placehold.co/500x500",
      "service": "Carpentry",
      "startTime": "2:00 PM",
      "endTime": "5:00 PM",
      "date": "2025-03-12",
      "status": "Ongoing"
    },
    {
      "username": "Sarah Lee",
      "profileImage": "https://placehold.co/500x500",
      "service": "Painting",
      "startTime": "6:00 PM",
      "endTime": "9:00 PM",
      "date": "2025-03-13",
      "status": "Completed"
    }
  ];

  // Function to format date
  String _formatDate(String dateString) {
    DateTime date = DateTime.parse(dateString);
    return DateFormat('EEEE, MMM d, yyyy')
        .format(date); // Example: Tuesday, Mar 11, 2025
  }

  // Function to get status badge color
  Color _getStatusColor(String status) {
    switch (status) {
      case "Pending":
        return Colors.orange;
      case "Ongoing":
        return Colors.blue;
      case "Completed":
        return Colors.green;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: workRequests.length,
      itemBuilder: (context, index) {
        final work = workRequests[index];

        return Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(work["profileImage"]),
            ),
            title: Text(work["username"],
                style: Theme.of(context).textTheme.titleMedium),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Service: ${work["service"]}",
                    style: Theme.of(context).textTheme.bodyMedium),
                Text("Time: ${work["startTime"]} - ${work["endTime"]}",
                    style: Theme.of(context).textTheme.bodySmall),
                Text(
                  "Date: ${_formatDate(work["date"])}", // Formatted date
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.grey,
                      ),
                ),
              ],
            ),
            trailing: Chip(
              label: Text(work["status"]),
              backgroundColor: _getStatusColor(work["status"]),
              labelStyle: const TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const WorkDetailsPage(), // Navigate to WorkDetailsPage
                ),
              );
            },
          ),
        );
      },
    );
  }
}
