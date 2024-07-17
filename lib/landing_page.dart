import 'package:ethio_job_bridge/screens/companies_page.dart';
import 'package:ethio_job_bridge/screens/home_page.dart';
import 'package:ethio_job_bridge/screens/jobs_page.dart';
import 'package:ethio_job_bridge/screens/profile_page.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentTab = 0;

  final List<Widget> screens = [
    const HomePage(),
    const JobsPage(),
    const CompaniesPage(),
    const ProfilePage(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomePage();
  Color kPrimaryColor = Colors.white;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: PageStorage(
          bucket: bucket,
          child: screens[currentTab],
        ),
        bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: true,
            backgroundColor: const Color(0xff538392),
            elevation: 0,
            selectedItemColor: kPrimaryColor,
            unselectedItemColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            currentIndex: currentTab,
            onTap: (int index) {
              setState(() {
                currentTab = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                activeIcon: Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.home_rounded,
                      color: kPrimaryColor,
                    )),
                icon: const Opacity(
                    opacity: 0.25,
                    child: Icon(
                      Icons.home_rounded,
                      color: Colors.white,
                    )),
                label: "",
              ),
              BottomNavigationBarItem(
                activeIcon: Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.card_travel_outlined,
                    color: kPrimaryColor,
                  ),
                ),
                icon: const Opacity(
                    opacity: 0.25,
                    child: Icon(
                      Icons.card_travel_outlined,
                      color: Colors.white,
                    )),
                label: "",
              ),
              BottomNavigationBarItem(
                activeIcon: Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.business_outlined,
                      color: kPrimaryColor,
                    )),
                icon: const Opacity(
                    opacity: 0.25,
                    child: Icon(
                      Icons.business_outlined,
                    )),
                label: "",
              ),
              BottomNavigationBarItem(
                activeIcon: Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.person_outline,
                      color: kPrimaryColor,
                    )),
                icon: const Opacity(
                    opacity: 0.25, child: Icon(Icons.person_outline)),
                label: "",
              ),
            ]));
  }
}
