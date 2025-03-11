// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class EmptyDropdown extends StatelessWidget {
  final String labelText;
  const EmptyDropdown({
    super.key,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: "",
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(),
      ),
      items: [],
      onChanged: null,
      validator: (_) {
        return null;
      },
    );
  }
}
