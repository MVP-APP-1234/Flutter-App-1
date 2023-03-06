import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/modals/on_boarding_content.dart';
import 'package:provider/provider.dart';

import '../../constants/constants.dart';
import '../../constants/dot_slider.dart';
import '../../services/auth_provider.dart';
import '../../widgets/gradiant_button_with_text.dart';
import '../screen_home/screen_home.dart';

// ignore: must_be_immutable
class ScreenOnbaording extends StatefulWidget {
  const ScreenOnbaording({super.key});

  @override
  State<ScreenOnbaording> createState() => _ScreenOnbaordingState();
}

class _ScreenOnbaordingState extends State<ScreenOnbaording> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // ignore: no_leading_underscores_for_local_identifiers
    PageController _controller = PageController();
    @override
    // ignore: unused_element
    void initState() {
      // _controller = PageController(initialPage: 0);
      super.initState();
    }

    @override
    // ignore: unused_element
    void dispose() {
      _controller.dispose();
      super.dispose();
    }

    return StreamBuilder<User?>(
      // ignore: use_build_context_synchronously
      stream: context.watch<AuthProvider>().stream(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Scaffold(
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: size.height * 0.9,
                      width: double.infinity,
                      child: PageView.builder(
                        itemCount: contents.length,
                        controller: _controller,
                        onPageChanged: (index) {
                          currentIndex = index;
                          setState(() {});
                        },
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(defaultPadding),
                            child: Column(
                              children: [
                                const SizedBox(height: defaultPadding),
                                Image.asset(
                                  contents[index].image,
                                  height: size.height * 0.4,
                                ),
                                const SizedBox(height: defaultPadding * 3),
                                dotSlider(
                                  width: 25,
                                  count: contents.length,
                                  currentIndex: currentIndex,
                                ),
                                const SizedBox(height: defaultPadding * 4),
                                Text(
                                  contents[index].text,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding),
                      child: GradiantButtonWithText(
                        title: 'GET STARTED',
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, '/authentication');
                          // if (currentIndex == contents.length - 1) {
                          // }
                          // _controller.nextPage(
                          //   duration: const Duration(milliseconds: 100),
                          //   curve: Curves.bounceIn,
                          // );
                        },
                      ),
                    ),
                    const SizedBox(height: defaultPadding),
                  ],
                ),
              ),
            ),
          );
        }
        return ScreenHome(
            userName: FirebaseAuth.instance.currentUser!.displayName ??
                FirebaseAuth.instance.currentUser!.email);
      },
    );
  }
}
