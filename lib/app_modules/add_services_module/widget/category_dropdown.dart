// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CategoryDropdown extends StatelessWidget {
  final String selectedCategory;
  final Function(String?)? onSelectingCategory;
  const CategoryDropdown({
    super.key,
    required this.selectedCategory,
    this.onSelectingCategory,
  });

  // Categories for the dropdown
  static const List<String> _categories = [
    'Painting',
    'Plumbing',
    'Electrical Works',
    'Cleaning',
    'Laundry',
    'Carpentry',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedCategory.isNotEmpty ? selectedCategory : null,
      decoration: InputDecoration(
        labelText: 'Category',
        border: OutlineInputBorder(),
      ),
      items: _categories.map((String category) {
        return DropdownMenuItem<String>(
          value: category,
          child: Text(category),
        );
      }).toList(),
      onChanged: onSelectingCategory,
      validator: (value) {
        if (value == null) {
          return 'Please select a category';
        }
        return null;
      },
    );
  }
}
