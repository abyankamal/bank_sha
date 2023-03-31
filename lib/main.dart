import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/pages/home_page.dart';
import 'package:bank_sha/ui/pages/onboarding_page.dart';
import 'package:bank_sha/ui/pages/profile_page.dart';
import 'package:bank_sha/ui/pages/signin_page.dart';
import 'package:bank_sha/ui/pages/signup_page.dart';
import 'package:bank_sha/ui/pages/signup_set_ktp_page.dart';
import 'package:bank_sha/ui/pages/signup_set_photo_page.dart';
import 'package:bank_sha/ui/pages/signup_success_page.dart';
import 'package:bank_sha/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: lightBackgroundColor,
        appBarTheme: AppBarTheme(
          elevation: 0,
        backgroundColor: lightBackgroundColor,
        iconTheme: IconThemeData(
          color: blackColor
        ),
        titleTextStyle: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semibold
        ),
        centerTitle: true,
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => const SplashPage(),
        '/onboarding' : (context) => const OnBoardingPage(),
        '/sign-in' : (context) => const SignInPage(),
        '/sign-up' : (context) => const SignUpPage(),
        '/sign-up-set-photo' : (context) => const SignUpSetPhotoPage(),
        '/sign-up-set-ktp' : (context) => const SignUpSetKtpPage(),
        '/sign-up-success' : (context) => const SignUpSuccessPage(),
        '/home' : (context) => const HomePage(),
        '/profile' : (context) => const ProfilePage(),
      },
    );
  }
}