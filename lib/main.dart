import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_services_provider/app_constants/app_colors.dart';
import 'package:home_services_provider/app_modules/add_availability_slot_module/bloc/add_availability_bloc/add_availability_bloc.dart';
import 'package:home_services_provider/app_modules/add_availability_slot_module/bloc/slots_bloc/slots_bloc.dart';
import 'package:home_services_provider/app_modules/add_services_module/bloc/add_services_bloc/add_services_bloc.dart';
import 'package:home_services_provider/app_modules/add_services_module/bloc/categories_list_bloc/categories_list_bloc.dart';
import 'package:home_services_provider/app_modules/add_services_module/bloc/sub_services_list_bloc/sub_services_list_bloc.dart';
import 'package:home_services_provider/app_modules/home_module/bloc/profile_bloc/profile_bloc.dart';
import 'package:home_services_provider/app_modules/home_module/bloc/provider_services_bloc/provider_services_bloc.dart';
import 'package:home_services_provider/app_modules/login_module/bloc/login_bloc.dart';
import 'package:home_services_provider/app_modules/onboarding_module/view/onboarding_screen.dart';
import 'package:home_services_provider/app_modules/register_module/bloc/registration_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RegistrationBloc(),
        ),
        BlocProvider(
          create: (context) => CategoriesListBloc(),
        ),
        BlocProvider(
          create: (context) => LoginBloc(),
        ),
        BlocProvider(
          create: (context) => AddServicesBloc(),
        ),
        BlocProvider(
          create: (context) => SubServicesListBloc(),
        ),
        BlocProvider(
          create: (context) => ProfileBloc(),
        ),
        BlocProvider(
          create: (context) => ProviderServicesBloc(),
        ),
        BlocProvider(
          create: (context) => SlotsBloc(),
        ),
        BlocProvider(
          create: (context) => AddAvailabilityBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Home Service Pro',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.firstColor),
          useMaterial3: true,
        ),
        home: OnboardingScreen(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
