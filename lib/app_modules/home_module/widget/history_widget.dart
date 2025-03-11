import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HistoryWidget extends StatefulWidget {
  const HistoryWidget({super.key});

  @override
  State<HistoryWidget> createState() => _HistoryWidgetState();
}

class _HistoryWidgetState extends State<HistoryWidget> {
  // Sample Work History Data
  final List<Map<String, dynamic>> historyData = [
    {
      "requester": "Alice Johnson",
      "profileImage": "https://placehold.co/500x5000",
      "category": "Home Maintenance",
      "service": "Plumbing",
      "date": "2025-03-05",
      "start_time": "14:00",
      "end_time": "17:00",
      "rate": 50.0,
      "status": "Completed",
      "rating": 4.5,
      "review":
          "Great service! The plumber was very professional and efficient."
    },
    {
      "requester": "Michael Smith",
      "profileImage": "https://placehold.co/500x500",
      "category": "Woodwork",
      "service": "Carpentry",
      "date": "2025-03-03",
      "start_time": "10:00",
      "end_time": "13:00",
      "rate": 80.0,
      "status": "Completed",
      "rating": 3.0,
      "review": "The work was okay, but it took longer than expected."
    },
    {
      "requester": "Sarah Lee",
      "profileImage": "https://placehold.co/500x500",
      "category": "Painting & Decorating",
      "service": "Wall Painting",
      "date": "2025-02-28",
      "start_time": "08:00",
      "end_time": "11:00",
      "rate": 100.0,
      "status": "Completed",
      "rating": 5.0,
      "review": "Excellent work! The paint job was flawless and neat."
    }
  ];

  // Function to format date
  String _formatDate(String dateString) {
    DateTime date = DateTime.parse(dateString);
    return DateFormat('EEEE, MMM d, yyyy')
        .format(date); // Example: Tuesday, Mar 5, 2025
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: historyData.length,
      itemBuilder: (context, index) {
        final work = historyData[index];

        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // User & Service Info
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(work["profileImage"]),
                  ),
                  title: Text(work["requester"],
                      style: Theme.of(context).textTheme.titleMedium),
                  subtitle: Text(work["category"],
                      style: Theme.of(context).textTheme.bodySmall),
                ),

                const SizedBox(height: 5),

                // Service & Work Details
                Text(
                  "${work["service"]} - ₹${work["rate"]}/work",
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 3),

                // Date & Time Slot
                Row(
                  children: [
                    const Icon(Icons.calendar_today,
                        size: 16, color: Colors.grey),
                    const SizedBox(width: 5),
                    Text(_formatDate(work["date"]),
                        style: Theme.of(context).textTheme.bodySmall),
                  ],
                ),
                const SizedBox(height: 3),

                Row(
                  children: [
                    const Icon(Icons.access_time, size: 16, color: Colors.grey),
                    const SizedBox(width: 5),
                    Text("${work["start_time"]} - ${work["end_time"]}",
                        style: Theme.of(context).textTheme.bodySmall),
                  ],
                ),

                const SizedBox(height: 5),

                // Rating Bar
                RatingBarIndicator(
                  rating: work["rating"].toDouble(),
                  itemBuilder: (context, _) =>
                      const Icon(Icons.star, color: Colors.amber),
                  itemCount: 5,
                  itemSize: 20,
                ),

                const SizedBox(height: 5),

                // Review Text
                Text(
                  "\"${work["review"]}\"",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
