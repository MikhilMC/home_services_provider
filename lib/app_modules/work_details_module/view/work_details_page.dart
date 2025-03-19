import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_services_provider/app_constants/app_colors.dart';
import 'package:home_services_provider/app_modules/work_details_module/bloc/work_details_bloc/work_details_bloc.dart';
import 'package:home_services_provider/app_modules/work_details_module/widget/detail_row.dart';
import 'package:home_services_provider/app_widgets/custom_button.dart';
import 'package:home_services_provider/app_widgets/custom_error_widget.dart';
import 'package:intl/intl.dart';

class WorkDetailsPage extends StatefulWidget {
  final int serviceId;
  const WorkDetailsPage({
    super.key,
    required this.serviceId,
  });

  @override
  State<WorkDetailsPage> createState() => _WorkDetailsPageState();
}

class _WorkDetailsPageState extends State<WorkDetailsPage> {
  @override
  void initState() {
    super.initState();
    context
        .read<WorkDetailsBloc>()
        .add(WorkDetailsEvent.workDetailsFetched(widget.serviceId));
  }

  bool hasStarted = false; // Tracks whether the work has started

  String _formatTime(String timeString) {
    // Split the input string into hours, minutes, and seconds
    List<String> parts = timeString.split(':');
    int hour = int.parse(parts[0]);
    int minute = int.parse(parts[1]);

    // Create a TimeOfDay object
    TimeOfDay time = TimeOfDay(hour: hour, minute: minute);

    // Convert TimeOfDay to DateTime
    final now = DateTime.now();
    final dateTime =
        DateTime(now.year, now.month, now.day, time.hour, time.minute);

    // Format the DateTime as AM/PM
    return DateFormat.jm().format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Work Details",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: AppColors.fifthColor,
          ),
        ),
        iconTheme: IconThemeData(
          color: AppColors.fifthColor,
        ),
        centerTitle: true,
        backgroundColor: AppColors.firstColor,
        elevation: 0,
      ),
      body: BlocBuilder<WorkDetailsBloc, WorkDetailsState>(
        builder: (context, state) {
          if (state is WorkDetailsError) {
            return CustomErrorWidget(
              errorMessage: state.errorMessage,
            );
          }

          if (state is! WorkDetailsSuccess) {
            return Center(
              child: CircularProgressIndicator(
                color: AppColors.firstColor,
              ),
            );
          }

          final workDetails = state.workDetails;
          String formattedDate =
              DateFormat('MMM d, yyyy').format(workDetails.bookingDate);
          String dayOfWeek = DateFormat('EEEE')
              .format(workDetails.bookingDate); // Get the day of the week

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Work Details Card
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Service and Category
                        Row(
                          children: [
                            Icon(
                              Icons.work_outline,
                              size: 28,
                              color: Colors.blue.shade700,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              workDetails.serviceDetails.serviceName,
                              style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Category: ${workDetails.serviceDetails.categoryName}",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey.shade700,
                          ),
                        ),
                        const Divider(height: 30, thickness: 1),

                        // User Details
                        DetailRow(
                          icon: Icons.person_outline,
                          label: "User",
                          value: workDetails.userName,
                        ),
                        const SizedBox(height: 10),

                        // Date and Time
                        DetailRow(
                          icon: Icons.calendar_today_outlined,
                          label: "Date",
                          value: "$dayOfWeek, $formattedDate",
                        ),
                        const SizedBox(height: 10),
                        DetailRow(
                          icon: Icons.access_time_outlined,
                          label: "Time Slot",
                          value:
                              "${_formatTime(workDetails.slotStartTime)} - ${_formatTime(workDetails.slotEndTime)}",
                        ),
                        const Divider(height: 30, thickness: 1),

                        // Rate
                        Row(
                          children: [
                            Icon(
                              Icons.currency_rupee,
                              size: 24,
                              color: Colors.green.shade700,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "Rate: ₹${workDetails.serviceDetails.price}",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.green.shade700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                // Start Work Button
                if (workDetails.status == "booked")
                  CustomButton(
                    buttonWidth: double.infinity,
                    backgroundColor: AppColors.firstColor,
                    textColor: AppColors.fifthColor,
                    labelText: "Start Work",
                    onClick: () {
                      setState(() {
                        hasStarted = true; // Hide the button after clicking
                      });
                    },
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
