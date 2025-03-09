// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  final String serviceName;
  final String category;
  final double ratePerSlot;
  final Function()? onDelete;
  const ServiceCard({
    super.key,
    required this.serviceName,
    required this.category,
    required this.ratePerSlot,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(serviceName),
        subtitle: Text(
          'Category: $category\nRate: ₹$ratePerSlot/3 hours',
        ),
        trailing: IconButton(
          icon: Icon(Icons.delete, color: Colors.red),
          onPressed: onDelete,
        ),
      ),
    );
  }
}
