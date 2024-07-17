import 'package:ethio_job_bridge/auth/login_page.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48.0),
              child: Image.asset(
                "assets/new_logo.png",
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 70),
              child: Text(
                "CONNECTING AMBITION WITH OPPORTUNITIES",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const LogIn(),
                ));
              },
              child: Container(
                width: double.infinity,
                height: 56,
                decoration: BoxDecoration(
                    color: const Color(0xff538392),
                    borderRadius: BorderRadius.circular(50)),
                child: const Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
