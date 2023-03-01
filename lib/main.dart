import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/auth_provider.dart';
import 'package:provider/provider.dart';

import 'screens/Screen_onboarding/screen_onboarding.dart';
import 'screens/screen_authentication/screen_authentication.dart';
import 'screens/screen_email/screen_email.dart';
import 'screens/screen_home/screen_home.dart';
import 'screens/screen_imagegen/screen_imagegen.dart';
import 'screens/screen_signin/screen_signin.dart';
import 'screens/screen_signup/screen_signup.dart';
import 'screens/screen_socialmedia/pages/facebook_status_1.dart';
import 'screens/screen_socialmedia/screen_socialmedia.dart';
import 'screens/screen_splash/screen_splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AuthProvider(FirebaseAuth.instance),
        ),
        StreamProvider(
            create: ((context) => context.watch<AuthProvider>().stream()),
            initialData: null),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Poppins',
          appBarTheme: const AppBarTheme(
              color: Colors.white,
              elevation: 0,
              actionsIconTheme: IconThemeData(color: Colors.black)),
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: '/image',
        routes: {
          '/': (context) => const ScreenSplash(),
          '/onboarding': (context) => const ScreenOnbaording(),
          '/authentication': (context) => const ScreenAuthentication(),
          '/signin': (context) => const ScreenSignIn(),
          '/signup': (context) => const ScreenSignUp(),
          '/home': (context) => ScreenHome(),
          '/email': (context) => const ScreenEmail(),
          '/social': (context) => const ScreenSocialMedia(),
          '/image': (context) => const ScreenImageGen(),
          '/demo': (context) => const FaceBookStatus1(),
        },
      ),
    );
  }
}
