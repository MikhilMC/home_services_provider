import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_services_provider/app_constants/app_colors.dart';
import 'package:home_services_provider/app_constants/app_urls.dart';
import 'package:home_services_provider/app_blocs/profile_bloc/profile_bloc.dart';
import 'package:home_services_provider/app_modules/register_module/view/edit_profile_page.dart';
import 'package:home_services_provider/app_widgets/custom_error_widget.dart';

class ProfileHeader extends StatefulWidget {
  const ProfileHeader({super.key});

  @override
  State<ProfileHeader> createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends State<ProfileHeader> {
  @override
  void initState() {
    super.initState();
    context.read<ProfileBloc>().add(ProfileEvent.profileDetailsFetched());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        if (state is ProfileDetailsError) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(
              errorMessage: state.errorMessage,
            ),
          );
        }

        if (state is! ProfileDetailsSuccess) {
          return SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(
                color: AppColors.firstColor,
              ),
            ),
          );
        }

        final profileDetails = state.profileDetails;
        return SliverToBoxAdapter(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: Colors.green,
                            width: 1.5,
                          ),
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EditProfilePage(),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.edit,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: CachedNetworkImageProvider(
                    "${AppUrls.baseUrl}/${profileDetails.image!}",
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  profileDetails.username!,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  profileDetails.email!,
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
                Text(
                  profileDetails.phone!,
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
