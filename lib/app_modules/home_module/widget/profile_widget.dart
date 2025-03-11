import 'package:flutter/material.dart';
import 'package:home_services_provider/app_modules/home_module/widget/profile_header.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  // Sample Data
  final String profileImage =
      "https://placehold.co/500x500"; // Replace with actual image URL
  final String username = "John Doe";
  final String email = "john.doe@example.com";
  final String phone = "+1 234 567 890";
  final String category = "Plumbing";
  final List<Map<String, dynamic>> subServices = [
    {"name": "Pipe Fixing", "rate": 150},
    {"name": "Leak Repair", "rate": 240},
    {"name": "Bathroom Plumbing", "rate": 160},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Profile Header
          ProfileHeader(),
          const SizedBox(height: 20),

          // Category Section
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              leading: const Icon(Icons.category, color: Colors.blue),
              title: const Text("Service Category"),
              subtitle: Text(category),
            ),
          ),

          const SizedBox(height: 10),

          // Sub Services Section
          Text("Sub Services & Rates",
              style: Theme.of(context).textTheme.bodyLarge),
          const SizedBox(height: 5),

          // List of Services with Rates
          ...subServices.map((service) {
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: Text(service["name"]),
                trailing: Text("₹${service["rate"]}/3 hrs",
                    style: const TextStyle(fontWeight: FontWeight.bold)),
              ),
            );
          }),
        ],
      ),
    );
  }
}
