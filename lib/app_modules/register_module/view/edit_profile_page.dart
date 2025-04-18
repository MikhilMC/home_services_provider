import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:home_services_provider/app_blocs/profile_bloc/profile_bloc.dart';
import 'package:home_services_provider/app_constants/app_colors.dart';
import 'package:home_services_provider/app_constants/app_urls.dart';
import 'package:home_services_provider/app_models/profile_model.dart';
import 'package:home_services_provider/app_modules/home_module/view/home_page.dart';
import 'package:home_services_provider/app_modules/register_module/bloc/edit_profile_bloc/edit_profile_bloc.dart';
import 'package:home_services_provider/app_modules/register_module/class/edit_profile_details.dart';
import 'package:home_services_provider/app_utils/app_helper.dart';
import 'package:home_services_provider/app_widgets/custom_button.dart';
import 'package:home_services_provider/app_widgets/custom_error_widget.dart';
import 'package:home_services_provider/app_widgets/normal_text_field.dart';
import 'package:home_services_provider/app_widgets/overlay_loader_widget.dart';
import 'package:home_services_provider/app_widgets/password_text_field.dart';
import 'package:image_picker/image_picker.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _usernameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneController;
  late TextEditingController _passwordController;
  late TextEditingController _latitudeController;
  late TextEditingController _longitudeController;

  late ProfileModel _userProfileModel;
  String? _profilePictureUrl;
  String? _idProofUrl;

  final ImagePicker _picker = ImagePicker();

  File? _profileImage;
  File? _idProof;

  @override
  void initState() {
    _usernameController = TextEditingController();
    _emailController = TextEditingController();
    _phoneController = TextEditingController();
    _passwordController = TextEditingController();
    _latitudeController = TextEditingController();
    _longitudeController = TextEditingController();
    context.read<ProfileBloc>().add(ProfileEvent.profileDetailsFetched());
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _usernameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    _latitudeController.dispose();
    _longitudeController.dispose();
  }

  Future<void> _pickImage() async {
    try {
      final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

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

  Future<void> _pickIdProof() async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _idProof = File(pickedFile.path);
      });
    }
  }

  Future<void> _getLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Check if the location permissions are enabled
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled, return
      if (mounted) {
        AppHelper.showErrorDialogue(
          context,
          "Location Services disabled",
        );
      }

      return;
    }

    // Check location permissions
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, return
        if (mounted) {
          AppHelper.showErrorDialogue(
            context,
            "Location Permission denied",
          );
        }
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are permanently denied, return
      if (mounted) {
        AppHelper.showErrorDialogue(
          context,
          "Location Permission denied forever",
        );
      }
      return;
    }

    // Get the current location
    Position position = await Geolocator.getCurrentPosition(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 10,
      ),
    );

    setState(() {
      _latitudeController.text = position.latitude.toString();
      _longitudeController.text = position.longitude.toString();
    });
  }

  void _updateProfile() {
    if (_formKey.currentState!.validate()) {
      EditProfileDetails editProfileDetails = EditProfileDetails(
        username: _userProfileModel.username != _usernameController.text.trim()
            ? _usernameController.text.trim()
            : null,
        email: _userProfileModel.email != _emailController.text.trim()
            ? _emailController.text.trim()
            : null,
        phone: _userProfileModel.phone != _phoneController.text.trim()
            ? _phoneController.text.trim()
            : null,
        latitude: _userProfileModel.latitude != _latitudeController.text.trim()
            ? double.parse(_latitudeController.text.trim())
            : null,
        longitude:
            _userProfileModel.longitude != _longitudeController.text.trim()
                ? double.parse(_longitudeController.text.trim())
                : null,
        image: _profileImage,
        idProof: _idProof,
        password: _userProfileModel.password != _passwordController.text.trim()
            ? _passwordController.text.trim()
            : null,
      );

      EditProfileBloc editProfileBloc =
          BlocProvider.of<EditProfileBloc>(context);

      editProfileBloc.add(EditProfileEvent.profileEdited(editProfileDetails));
    } else {
      AppHelper.showErrorDialogue(
        context,
        "Please provide correct details",
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit profile"),
      ),
      body: BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {
          state.whenOrNull(
            loading: () {},
            success: (profileDetails) {
              setState(() {
                _userProfileModel = profileDetails;
                _usernameController = TextEditingController(
                  text: profileDetails.username!,
                );
                _emailController = TextEditingController(
                  text: profileDetails.email!,
                );
                _phoneController = TextEditingController(
                  text: profileDetails.phone!,
                );
                _passwordController = TextEditingController(
                  text: profileDetails.password!,
                );
                _latitudeController = TextEditingController(
                  text: profileDetails.latitude!,
                );
                _longitudeController = TextEditingController(
                  text: profileDetails.longitude!,
                );
                if (profileDetails.image != null) {
                  _profilePictureUrl = profileDetails.image!;
                }
                if (profileDetails.idProof != null) {
                  _idProofUrl = profileDetails.idProof!;
                }
              });
            },
            error: (errorMessage) => AppHelper.showErrorDialogue(
              context,
              errorMessage,
            ),
          );
        },
        builder: (context, state) {
          if (state is ProfileDetailsError) {
            return CustomErrorWidget(
              errorMessage: state.errorMessage,
            );
          }

          if (state is! ProfileDetailsSuccess) {
            return Center(
              child: CircularProgressIndicator(
                color: AppColors.firstColor,
              ),
            );
          }

          return BlocConsumer<EditProfileBloc, EditProfileState>(
            listener: (context, state) {
              state.whenOrNull(
                loading: () {},
                success: (response) {
                  if (response.detail == "Profile updated successfully.") {
                    AppHelper.showCustomSnackBar(
                      context,
                      "Service provider profile updated successfully!",
                    );
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  } else {
                    AppHelper.showErrorDialogue(
                      context,
                      "Updating Service Provider Profile Failed",
                    );
                  }
                },
                error: (errorMessage) => AppHelper.showErrorDialogue(
                  context,
                  "Updating Service Provider Profile Failed: $errorMessage",
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
                          // Profile Picture Upload
                          Center(
                            child: GestureDetector(
                              onTap: _pickImage,
                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage: _profileImage != null
                                    ? FileImage(_profileImage!)
                                    : _profilePictureUrl != null
                                        ? NetworkImage(
                                            "${AppUrls.baseUrl}/$_profilePictureUrl",
                                          )
                                        : null,
                                child: _profileImage == null &&
                                        _profilePictureUrl == null
                                    ? Icon(Icons.camera_alt,
                                        size: 40, color: Colors.grey)
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
                              if (value == null || value.isEmpty) {
                                return 'Please enter a username';
                              }
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
                              if (value == null || value.isEmpty) {
                                return 'Please enter email';
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
                              if (value == null || value.isEmpty) {
                                return 'Please enter phone number';
                              }
                              bool phoneValid =
                                  RegExp(r"^(\+91|\+91\-|0)?[789]\d{9}$")
                                      .hasMatch(value);
                              if (!phoneValid) {
                                return 'Please enter a valid phone number';
                              }
                              return null;
                            },
                            hintText: "Enter your phone number",
                            textFieldIcon: Icon(Icons.phone),
                            textInputType: TextInputType.phone,
                          ),
                          SizedBox(height: 20),
                          // Location
                          Text(
                            'Location',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: screenSize.width * 0.375,
                                child: NormalTextField(
                                  labelText: 'Latitude',
                                  hintText: 'Latitude',
                                  isDisabled: true,
                                  textEditingController: _latitudeController,
                                  validatorFunction: (_) {
                                    return null;
                                  },
                                ),
                              ),
                              SizedBox(
                                width: screenSize.width * 0.375,
                                child: NormalTextField(
                                  labelText: 'Longitude',
                                  hintText: 'Longitude',
                                  isDisabled: true,
                                  textEditingController: _longitudeController,
                                  validatorFunction: (_) {
                                    return null;
                                  },
                                ),
                              ),
                              SizedBox(
                                height: screenSize.height * 0.06,
                                child: IconButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    backgroundColor: AppColors.firstColor,
                                  ),
                                  icon: Icon(
                                    Icons.location_pin,
                                    color: Colors.white,
                                  ),
                                  onPressed: _getLocation,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          // ID Proof
                          // Place Name
                          Text(
                            'ID Proof',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          GestureDetector(
                            onTap: _pickIdProof,
                            child: Container(
                              width: double.infinity,
                              height: 150,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: _idProof != null
                                  ? Image.file(_idProof!, fit: BoxFit.cover)
                                  : _idProofUrl != null
                                      ? Image.network(
                                          "${AppUrls.baseUrl}/$_idProofUrl",
                                        )
                                      : Icon(
                                          Icons.add_a_photo,
                                          size: 50,
                                          color: Colors.grey,
                                        ),
                            ),
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
                            labelText: "Update Profile",
                            onClick: _updateProfile,
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
