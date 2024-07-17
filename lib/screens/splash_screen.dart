import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ethio_job_bridge/screens/onboarding_page.dart';
import 'package:page_transition/page_transition.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      body: AnimatedSplashScreen(
          splash: Image.asset(
            'assets/app_logo.png',
          ),
          duration: 3000,
          curve: Curves.easeInOut,
          splashIconSize: 350,
          splashTransition: SplashTransition.slideTransition,
          animationDuration: const Duration(milliseconds: 1500),
          backgroundColor: Theme.of(context).colorScheme.background,
          pageTransitionType: PageTransitionType.fade,
          nextScreen: const OnboardingPage()),
    );
  }
}
