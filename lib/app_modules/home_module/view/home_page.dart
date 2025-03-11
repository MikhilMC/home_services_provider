import 'package:flutter/material.dart';
import 'package:home_services_provider/app_constants/app_colors.dart';
import 'package:home_services_provider/app_modules/add_availability_slot_module/view/add_availability_slot_page.dart';
import 'package:home_services_provider/app_modules/earnings_module/view/earnings_page.dart';
import 'package:home_services_provider/app_modules/home_module/widget/history_widget.dart';
import 'package:home_services_provider/app_modules/home_module/widget/profile_widget.dart';
import 'package:home_services_provider/app_modules/home_module/widget/works_widget.dart';
import 'package:home_services_provider/app_modules/login_module/view/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentPageIndex = 0;

  final PageController _pageController = PageController();

  late List<Widget> _appBodies;

  @override
  void initState() {
    _appBodies = [
      WorksWidget(),
      HistoryWidget(),
      ProfileWidget(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello, John"),
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 35,
          fontWeight: FontWeight.bold,
        ),
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: AppColors.secondColor,
          backgroundColor: AppColors.fourthColor,
          iconTheme: WidgetStateProperty.resolveWith<IconThemeData?>(
            (states) {
              if (states.contains(WidgetState.selected)) {
                return IconThemeData(
                  color: AppColors.fourthColor,
                ); // Icon color for selected item
              }
              return IconThemeData(
                color: AppColors.firstColor,
              ); // Icon color for unselected items
            },
          ),
          labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>(
            (states) {
              if (states.contains(WidgetState.selected)) {
                return TextStyle(
                  color: AppColors.firstColor, // Text color for selected item
                  fontWeight: FontWeight.bold,
                );
              }
              return const TextStyle(
                color: AppColors.secondColor, // Text color for unselected items
                fontWeight: FontWeight.normal,
              );
            },
          ),
        ),
        child: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              _currentPageIndex = index;
            });
            _pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut,
            );
          },
          selectedIndex: _currentPageIndex,
          // labelBehavior: ,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.work),
              label: "Works",
            ),
            NavigationDestination(
              icon: Icon(Icons.history),
              label: "Work History",
            ),
            NavigationDestination(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        children: _appBodies,
      ),
      drawer: Drawer(
        backgroundColor: AppColors.fourthColor,
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: AppColors.firstColor,
              ),
              child: Text(
                'VaxCare',
                style: TextStyle(
                  color: AppColors.fourthColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.event_available,
                color: AppColors.firstColor,
              ),
              title: const Text(
                'Add Availability',
                style: TextStyle(
                  color: AppColors.firstColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AddAvailabilitySlotPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.monetization_on,
                color: AppColors.firstColor,
              ),
              title: const Text(
                'Earnings',
                style: TextStyle(
                  color: AppColors.firstColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => EarningsPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.logout,
                color: AppColors.firstColor,
              ),
              title: const Text(
                'Log Out',
                style: TextStyle(
                  color: AppColors.firstColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                  (route) => false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
