import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_services_provider/app_constants/app_colors.dart';
import 'package:home_services_provider/app_utils/app_localstorage.dart';
import 'package:home_services_provider/app_modules/add_services_module/view/add_services_page.dart';
import 'package:home_services_provider/app_modules/home_module/view/home_page.dart';
import 'package:home_services_provider/app_modules/login_module/bloc/login_bloc.dart';
import 'package:home_services_provider/app_modules/register_module/view/register_page.dart';
import 'package:home_services_provider/app_utils/app_helper.dart';
import 'package:home_services_provider/app_widgets/custom_button.dart';
import 'package:home_services_provider/app_widgets/normal_text_field.dart';
import 'package:home_services_provider/app_widgets/overlay_loader_widget.dart';
import 'package:home_services_provider/app_widgets/password_text_field.dart';
import 'package:home_services_provider/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    FocusScope.of(context).unfocus();
    if (_formKey.currentState!.validate()) {
      final loginBloc = BlocProvider.of<LoginBloc>(context);

      loginBloc.add(
        LoginEvent.loggedIn(
          _emailController.text.trim(),
          _passwordController.text.trim(),
        ),
      );
    } else {
      AppHelper.showErrorDialogue(
        context,
        "Please enter email and password.",
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          state.whenOrNull(
            loading: () {},
            success: (response) async {
              if (response.status == "success") {
                switch (response.userstatus) {
                  case "services_not_added":
                    // Use navigatorKey for safe navigation
                    SchedulerBinding.instance.addPostFrameCallback((_) {
                      MyApp.navigatorKey.currentState?.pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => AddServicesPage(
                            serviceProviderId: response.userId,
                          ),
                        ),
                      );

                      AppHelper.showCustomSnackBar(
                        context,
                        "You need to add your services",
                      );
                    });

                    break;
                  case "services_added":
                    SchedulerBinding.instance.addPostFrameCallback((_) {
                      AppHelper.showErrorDialogue(
                        context,
                        "Your account have not approved yet. Please try again later, or contact admin.",
                      );
                    });

                    break;
                  case "rejected":
                    SchedulerBinding.instance.addPostFrameCallback((_) {
                      AppHelper.showErrorDialogue(
                        context,
                        "Your account have rejected. Please contact admin.",
                      );
                    });

                    break;
                  default:
                    await AppLocalstorage.userLogin(
                      username: response.username,
                      userId: response.userId,
                    );

                    SchedulerBinding.instance.addPostFrameCallback((_) {
                      MyApp.navigatorKey.currentState?.pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );

                      AppHelper.showCustomSnackBar(
                        context,
                        "Loggedin successfully",
                      );
                    });

                    break;
                }
              } else {
                SchedulerBinding.instance.addPostFrameCallback((_) {
                  AppHelper.showErrorDialogue(
                    context,
                    "Login Failed",
                  );
                });
              }
            },
            failure: (errorMessage) => AppHelper.showErrorDialogue(
              context,
              "Login Failed: $errorMessage",
            ),
          );
        },
        builder: (context, state) {
          bool isLoading = state.maybeWhen(
            loading: () => true,
            orElse: () => false,
          );

          return OverlayLoaderWidget(
            isLoading: isLoading,
            childWidget: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 80),
                      // App Logo or Title
                      Center(
                        child: Text(
                          'Home Service Pro',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: AppColors.firstColor,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: Text(
                          'Login to manage your business',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      // Email Field
                      Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      NormalTextField(
                        textEditingController: _emailController,
                        validatorFunction: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }

                          bool emailValid = RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value);
                          if (!emailValid) {
                            return 'Please enter a valid email';
                          }

                          return null;
                        },
                        hintText: "Enter your email",
                        textFieldIcon: Icon(Icons.email),
                        textInputType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 20),
                      // Password Field
                      Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      PasswordTextField(
                        passwordController: _passwordController,
                      ),
                      SizedBox(height: 10),
                      // Forgot Password
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            // Navigate to forgot password screen
                          },
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: AppColors.secondColor,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      // Login Button
                      CustomButton(
                        buttonWidth: double.infinity,
                        backgroundColor: AppColors.firstColor,
                        textColor: AppColors.fifthColor,
                        labelText: "Login",
                        onClick: _login,
                      ),
                      SizedBox(height: 20),
                      // Sign Up Option
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don\'t have an account? ',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RegisterPage(),
                                  ),
                                );
                              },
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: AppColors.secondColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
