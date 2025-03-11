import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WorkDetailsPage extends StatefulWidget {
  const WorkDetailsPage({super.key});

  @override
  State<WorkDetailsPage> createState() => _WorkDetailsPageState();
}

class _WorkDetailsPageState extends State<WorkDetailsPage> {
  bool hasStarted = false; // Tracks whether the work has started

  // Example work details
  final Map<String, dynamic> workDetails = {
    "username": "John Doe",
    "date": DateTime(2025, 3, 12),
    "startTime": TimeOfDay(hour: 9, minute: 0),
    "endTime": TimeOfDay(hour: 12, minute: 0),
    "category": "Home Services",
    "service": "Plumbing",
    "rate": 100.0,
  };

  String formatTime(TimeOfDay time) {
    final now = DateTime.now();
    final dateTime =
        DateTime(now.year, now.month, now.day, time.hour, time.minute);
    return DateFormat.jm().format(dateTime); // Format as AM/PM
  }

  @override
  Widget build(BuildContext context) {
    String formattedDate =
        DateFormat('MMM d, yyyy').format(workDetails["date"]);
    String dayOfWeek = DateFormat('EEEE')
        .format(workDetails["date"]); // Get the day of the week

    return Scaffold(
      appBar: AppBar(title: const Text("Work Details")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Work Details Card
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Service: ${workDetails["service"]}",
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Category: ${workDetails["category"]}",
                      style: const TextStyle(fontSize: 16),
                    ),
                    const Divider(height: 20),
                    Text(
                      "User: ${workDetails["username"]}",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Date: $dayOfWeek, $formattedDate",
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      "Time Slot: ${formatTime(workDetails["startTime"])} - ${formatTime(workDetails["endTime"])}",
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      "Rate: ₹${workDetails["rate"]}",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Start Work Button
            if (!hasStarted)
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      hasStarted = true; // Hide the button after clicking
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Button color
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    "Start Work",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
