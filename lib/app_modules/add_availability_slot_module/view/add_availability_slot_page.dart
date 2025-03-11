import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddAvailabilitySlotPage extends StatefulWidget {
  const AddAvailabilitySlotPage({super.key});

  @override
  State<AddAvailabilitySlotPage> createState() =>
      _AddAvailabilitySlotPageState();
}

class _AddAvailabilitySlotPageState extends State<AddAvailabilitySlotPage> {
  DateTime? selectedDate;
  final List<String> slots = [
    "09:00 - 12:00",
    "12:00 - 15:00",
    "15:00 - 18:00",
    "18:00 - 21:00",
    "21:00 - 00:00",
    "00:00 - 03:00",
    "03:00 - 06:00",
    "06:00 - 09:00",
  ];
  final Set<int> selectedSlots = {};

  // Function to pick a date
  Future<void> _pickDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate:
          DateTime.now().add(const Duration(days: 30)), // Limit to next 30 days
    );

    if (pickedDate != null) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  // Function to toggle slot selection
  void _toggleSlot(int index) {
    setState(() {
      if (selectedSlots.contains(index)) {
        selectedSlots.remove(index);
      } else {
        selectedSlots.add(index);
      }
    });
  }

  // Function to submit availability
  void _submitAvailability() {
    if (selectedDate == null || selectedSlots.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text("Please select a date and at least one slot.")),
      );
      return;
    }

    // Process selected slots
    List<String> chosenSlots =
        selectedSlots.map((index) => slots[index]).toList();

    // Show confirmation
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: Text(
              "Availability submitted for ${DateFormat('EEEE, MMM d, yyyy').format(selectedDate!)}\nSlots: ${chosenSlots.join(", ")}")),
    );

    // Clear selection (optional)
    setState(() {
      selectedDate = null;
      selectedSlots.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Availability Slots")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Date Picker
            Text("Select Date", style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: _pickDate,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      selectedDate == null
                          ? "Pick a Date"
                          : DateFormat('EEEE, MMM d, yyyy')
                              .format(selectedDate!),
                      style: TextStyle(
                          fontSize: 16,
                          color: selectedDate == null
                              ? Colors.grey
                              : Colors.black),
                    ),
                    const Icon(Icons.calendar_today, color: Colors.grey),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Slots Grid
            Text("Select Available Slots",
                style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            Expanded(
              child: GridView.builder(
                itemCount: slots.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 slots per row
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 3,
                ),
                itemBuilder: (context, index) {
                  bool isSelected = selectedSlots.contains(index);
                  return GestureDetector(
                    onTap: () => _toggleSlot(index),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: isSelected
                            ? Colors.blue.withValues(alpha: 0.8)
                            : Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: isSelected ? Colors.blue : Colors.grey),
                      ),
                      child: Text(
                        slots[index],
                        style: TextStyle(
                            fontSize: 16,
                            color: isSelected ? Colors.white : Colors.black),
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 16),

            // Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _submitAvailability,
                child: const Text("Submit Availability"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
