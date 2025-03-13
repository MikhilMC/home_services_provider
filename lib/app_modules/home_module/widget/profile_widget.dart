import 'package:flutter/material.dart';
import 'package:home_services_provider/app_modules/home_module/widget/profile_header.dart';
import 'package:home_services_provider/app_modules/home_module/widget/services_widget.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomScrollView(
        slivers: [
          ProfileHeader(),
          ServicesWidget(),
        ],
      ),
    );
  }
}
