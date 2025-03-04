import 'package:flutter/material.dart';
import 'package:home_services_provider/app_constants/app_colors.dart';
import 'package:home_services_provider/app_modules/login_module/view/login_page.dart';
import 'package:home_services_provider/app_modules/onboarding_module/widget/onboarding_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  final List<Widget> _onboardingPages = [
    OnboardingPage(
      image: 'assets/images/onboarding1.jpg',
      title: 'Grow Your Business with Us',
      description:
          'Join a platform designed to help home service professionals like you find more customers and grow your business.',
    ),
    OnboardingPage(
      image: 'assets/images/onboarding2.jpg',
      title: 'Manage Jobs Effortlessly',
      description:
          'Keep track of your appointments, invoices, and customer details all in one place. Focus on your work, not the paperwork!',
    ),
    OnboardingPage(
      image: 'assets/images/onboarding3.jpg',
      title: 'Reach More Clients',
      description:
          'Connect with homeowners in your area looking for your skills. Expand your customer base and increase your earnings.',
    ),
    OnboardingPage(
      image: 'assets/images/onboarding4.jpg',
      title: 'Get Paid Fairly and On Time',
      description:
          'Enjoy hassle-free payments with transparent pricing and secure transactions. No more chasing payments!',
    ),
    OnboardingPage(
      image: 'assets/images/onboarding5.jpg',
      title: 'Showcase Your Expertise',
      description:
          'Earn reviews and ratings from happy customers. Build a strong reputation and stand out in your field.',
    ),
    OnboardingPage(
      image: 'assets/images/onboarding6.jpg',
      title: 'Ready to Take Your Business to the Next Level?',
      description:
          'Sign up today and start growing your business with the help of our platform. Your success is just a tap away!',
    ),
  ];

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  void _navigateToNextPage() {
    if (_currentPage < _onboardingPages.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      // Navigate to the main app screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.firstColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: _onPageChanged,
                children: _onboardingPages,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    // Skip onboarding and navigate to the main app
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      color: AppColors.fifthColor,
                    ),
                  ),
                ),
                Row(
                  children: List.generate(
                    _onboardingPages.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(
                        Icons.circle,
                        size: 12,
                        color: _currentPage == index
                            ? AppColors.fifthColor
                            : AppColors.thirdColor,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: _navigateToNextPage,
                  child: Text(
                    _currentPage == _onboardingPages.length - 1
                        ? 'Start'
                        : 'Next',
                    style: TextStyle(
                      color: AppColors.fifthColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
