import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:home_services_provider/app_constants/app_colors.dart';
import 'package:home_services_provider/app_modules/add_services_module/view/add_services_page.dart';
import 'package:home_services_provider/app_modules/login_module/view/login_page.dart';
import 'package:home_services_provider/app_utils/app_helper.dart';
import 'package:home_services_provider/app_widgets/custom_button.dart';
import 'package:home_services_provider/app_widgets/normal_text_field.dart';
import 'package:home_services_provider/app_widgets/password_text_field.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  File? _profileImage;

  Future<void> _pickImage() async {
    try {
      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        setState(() {
          _profileImage = File(pickedFile.path);
        });
      }
    } catch (e) {
      if (mounted) {
        AppHelper.showErrorDialogue(context, "Error: ${e.toString()}");
      }
    }
  }

  void _register() {
    if (_formKey.currentState!.validate()) {
      // Perform registration logic here
      if (kDebugMode) {
        print('Username: ${_usernameController.text}');
        print('Email: ${_emailController.text}');
        print('Phone: ${_phoneController.text}');
        print('Password: ${_passwordController.text}');
        if (_profileImage != null) {
          print('Profile Image: ${_profileImage!.path}');
        }
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Service provider registered successfully!')),
        );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => AddServicesPage(),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
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
                    'Create your account',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(height: 40),
                // Profile Picture Upload
                Center(
                  child: GestureDetector(
                    onTap: _pickImage,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: _profileImage != null
                          ? FileImage(_profileImage!)
                          : null,
                      child: _profileImage == null
                          ? Icon(Icons.camera_alt, size: 40, color: Colors.grey)
                          : null,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Username Field
                Text(
                  'Username',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                NormalTextField(
                  textEditingController: _usernameController,
                  validatorFunction: (value) {
                    // if (value == null || value.isEmpty) {
                    //   return 'Please enter a username';
                    // }
                    return null;
                  },
                  hintText: "Enter your username",
                  textFieldIcon: Icon(Icons.person),
                ),
                SizedBox(height: 20),
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
                    // if (value == null || value.isEmpty) {
                    //   return 'Please enter your email';
                    // }
                    // if (!value.contains('@')) {
                    //   return 'Please enter a valid email';
                    // }
                    return null;
                  },
                  hintText: "Enter your email",
                  textFieldIcon: Icon(Icons.email),
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(height: 20),
                // Phone Number Field
                Text(
                  'Phone Number',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                NormalTextField(
                  textEditingController: _phoneController,
                  validatorFunction: (value) {
                    // if (value == null || value.isEmpty) {
                    //   return 'Please enter your phone number';
                    // }
                    return null;
                  },
                  hintText: "Enter your phone number",
                  textFieldIcon: Icon(Icons.phone),
                  textInputType: TextInputType.phone,
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
                SizedBox(height: 30),
                // Register Button
                CustomButton(
                  buttonWidth: double.infinity,
                  backgroundColor: AppColors.firstColor,
                  textColor: AppColors.fifthColor,
                  labelText: "Register",
                  onClick: _register,
                ),
                SizedBox(height: 20),
                // Login Option
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account? ',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Login',
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
  }
}
