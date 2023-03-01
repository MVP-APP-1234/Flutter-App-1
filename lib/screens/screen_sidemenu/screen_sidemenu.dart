import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants.dart';
import 'package:flutter_application_1/screens/screen_authentication/screen_authentication.dart';
import 'package:flutter_application_1/screens/screen_sidemenu/pages/Payment.dart';
import 'package:flutter_application_1/screens/screen_sidemenu/pages/choose_plan.dart';
import 'package:flutter_application_1/screens/screen_sidemenu/pages/edit_profile.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '../../services/auth_provider.dart';
import 'widgets/circular_avatar_with_edit.dart';
import 'widgets/custom_icon_button.dart';
import 'widgets/side_menu_app_bar.dart';

class ScreenSideMenu extends StatelessWidget {
  const ScreenSideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: sideMenuAppBar(context, 'Menu'),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircularAvatarWithEdit(
                  image: 'assets/images/avatar_image.png',
                  name: 'Username',
                  phoneNumber: '+971 123456789',
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      PageTransition(
                        type: PageTransitionType.leftToRight,
                        child: const EditProfile(),
                        duration: const Duration(milliseconds: 500),
                        reverseDuration: const Duration(milliseconds: 500),
                      ),
                    );
                  },
                ),
                const CustomIconButton(
                  label: 'Home',
                  icon: 'assets/icons/sidemenu_home_icon.png',
                ),
                const SizedBox(height: 5),
                const CustomIconButton(
                  label: 'History',
                  icon: 'assets/icons/sidemenu_history_icon.png',
                ),
                const SizedBox(height: 5),
                const CustomIconButton(
                  label: 'Saved',
                  icon: 'assets/icons/sidemenu_saved_icon.png',
                ),
                const SizedBox(height: 5),
                CustomIconButton(
                  label: 'Plans',
                  icon: 'assets/icons/sidemenu_plans_icon.png',
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      PageTransition(
                        type: PageTransitionType.leftToRight,
                        child: const ChoosePlan(),
                        duration: const Duration(milliseconds: 500),
                        reverseDuration: const Duration(milliseconds: 500),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 5),
                CustomIconButton(
                  label: 'Payment',
                  icon: 'assets/icons/sidemenu_payment_icon.png',
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      PageTransition(
                        type: PageTransitionType.leftToRight,
                        child: const Payment(),
                        duration: const Duration(milliseconds: 500),
                        reverseDuration: const Duration(milliseconds: 500),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 5),
                const Divider(
                  thickness: 2,
                ),
                const CustomIconButton(
                  label: 'Settings',
                  icon: 'assets/icons/sidemenu_settings_icon.png',
                ),
                const SizedBox(height: 5),
                const CustomIconButton(
                  label: 'Languages',
                  icon: 'assets/icons/sidemenu_languages_icon.png',
                ),
                const SizedBox(height: 5),
                CustomIconButton(
                  label: 'Log out',
                  icon: 'assets/icons/sidemenu_logout_icon.png',
                  onPressed: () async {
                    await context.read<AuthProvider>().signOut();
                    // ignore: use_build_context_synchronously
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ScreenAuthentication()),
                        (route) => false);
                  },
                ),
                const SizedBox(height: defaultPadding),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
