import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_services_provider/app_constants/app_colors.dart';
import 'package:home_services_provider/app_modules/add_availability_slot_module/bloc/slots_bloc/slots_bloc.dart';
import 'package:home_services_provider/app_modules/add_availability_slot_module/model/service_provider_slots_model.dart';
import 'package:home_services_provider/app_utils/app_helper.dart';
import 'package:home_services_provider/app_widgets/custom_error_widget.dart';
import 'package:intl/intl.dart';

class AddAvailabilitySlotPage extends StatefulWidget {
  const AddAvailabilitySlotPage({super.key});

  @override
  State<AddAvailabilitySlotPage> createState() =>
      _AddAvailabilitySlotPageState();
}

class _AddAvailabilitySlotPageState extends State<AddAvailabilitySlotPage> {
  DateTime? selectedDate;

  final Set<Slot> selectedSlots = {};

  @override
  void initState() {
    super.initState();
    context.read<SlotsBloc>().add(SlotsEvent.serviceProviderSlotsFetched());
  }

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
  void _toggleSlot(Slot slot) {
    setState(() {
      if (selectedSlots.contains(slot)) {
        selectedSlots.remove(slot);
      } else {
        selectedSlots.add(slot);
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
    List<String> chosenSlots = selectedSlots.map((slot) {
      return _getTimeSlotString(slot);
    }).toList();

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

  String _getTimeSlotString(Slot slot) {
    return "${AppHelper.convertTo12HourFormat(slot.slotStart)} - ${AppHelper.convertTo12HourFormat(slot.slotEnd)}";
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
                        color:
                            selectedDate == null ? Colors.grey : Colors.black,
                      ),
                    ),
                    const Icon(
                      Icons.calendar_today,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Slots Grid
            Text(
              "Select Available Slots",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            BlocBuilder<SlotsBloc, SlotsState>(
              builder: (context, state) {
                if (state is SlotsError) {
                  return CustomErrorWidget(
                    errorMessage: state.errorMessage,
                  );
                }

                if (state is! SlotsSuccess) {
                  return Center(
                    child: CircularProgressIndicator(
                      color: AppColors.firstColor,
                    ),
                  );
                }

                final serviceProviderSlots = state.slots;

                return Expanded(
                  child: GridView.builder(
                    itemCount: serviceProviderSlots.slots.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // 2 slots per row
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 3,
                    ),
                    itemBuilder: (context, index) {
                      final slot = serviceProviderSlots.slots[index];
                      bool isSelected = selectedSlots.contains(slot);
                      String timeLabel = _getTimeSlotString(slot);
                      return GestureDetector(
                        onTap: () => _toggleSlot(slot),
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: isSelected
                                ? Colors.blue.withValues(alpha: 0.8)
                                : Colors.grey[200],
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: isSelected ? Colors.blue : Colors.grey,
                            ),
                          ),
                          child: Text(
                            timeLabel,
                            style: TextStyle(
                              fontSize: 16,
                              color: isSelected ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
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
