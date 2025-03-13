import 'package:flutter/material.dart';
import 'package:home_services_provider/app_constants/app_colors.dart';

class AppHelper {
  static Future<void> showErrorDialogue(
    BuildContext context,
    String message,
  ) async {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const Text("Error"),
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.green.shade100,
          titleTextStyle: const TextStyle(
            color: Colors.red,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          content: Text(
            message,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                "OK",
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 15,
                ),
              ),
            )
          ],
        );
      },
    );
  }

  static void showCustomSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(
            color: AppColors.fifthColor,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppColors.firstColor, // Background color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), // Rounded corners
        ),
        behavior: SnackBarBehavior.floating, // Floating style
        margin: EdgeInsets.all(10.0), // Margin for floating behavior
        duration: Duration(seconds: 3), // Duration to display
      ),
    );
  }

  static String convertTo12HourFormat(String time24) {
    // Split the time string into hours, minutes, and seconds
    List<String> parts = time24.split(':');
    int hour = int.parse(parts[0]);
    int minute = int.parse(parts[1]);

    // Determine AM or PM
    String period = hour >= 12 ? 'PM' : 'AM';

    // Convert hour to 12-hour format
    int hour12 = hour % 12;
    if (hour12 == 0) hour12 = 12; // Handle midnight and noon

    // Return formatted time string
    return '$hour12:${minute.toString().padLeft(2, '0')} $period';
  }
}
