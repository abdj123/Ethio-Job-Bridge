import 'package:ethio_job_bridge/auth/about_user_page.dart';
import 'package:ethio_job_bridge/landing_page.dart';
import 'package:ethio_job_bridge/auth/login_page.dart';
import 'package:ethio_job_bridge/widgets/reusable_text_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  final String role;
  const SignUpPage({super.key, required this.role});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff538392),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 63,
            ),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Column(children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 17, right: 24),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 39,
                          ),
                          const Text("Welcome ",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                              )),
                          const Padding(
                            padding: EdgeInsets.only(top: 13, bottom: 22),
                            child: Text(
                              "Sign up to get started and experience\ngreat deals",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff474747)),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          reusableTextField(
                              widget.role == "seeker"
                                  ? "Full name"
                                  : "Company Name ",
                              context,
                              phoneNumberController),
                          const SizedBox(
                            height: 10,
                          ),
                          reusableTextField(
                              "Email", context, phoneNumberController),
                          const SizedBox(
                            height: 10,
                          ),
                          passwordReusableTextField(
                            "Password",
                            context,
                            passwordController,
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: false,
                                onChanged: (value) {},
                              ),
                              const Text(
                                "turn on notification",
                                style: TextStyle(fontSize: 17),
                              )
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => widget.role == "seeker"
                                      ? const AboutUser()
                                      : const LandingPage(),
                                ),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 27, left: 17, right: 24),
                              child: Container(
                                height: 47,
                                width: 327,
                                decoration: BoxDecoration(
                                    color: widget.role == "seeker"
                                        ? const Color(0xff538392)
                                        : const Color(0xff9F84C1),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(80))),
                                child: Center(
                                  child: Text(
                                    widget.role == "seeker"
                                        ? "SIGN UP"
                                        : "Explore",
                                    style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30, bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Already have an account?",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400)),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => const LogIn(),
                                      ),
                                    );
                                  },
                                  child: const Text(" Signin",
                                      style: TextStyle(
                                          color: Color(0xff538392),
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700)),
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ),
              ]),
            ),
          ]),
    );
  }

  Container passwordReusableTextField(
    String hint,
    BuildContext context,
    TextEditingController controller,
  ) {
    Color secondbackgroundColor = Theme.of(context).cardColor;
    final inputBorder = OutlineInputBorder(
        borderSide: Divider.createBorderSide(
          color: Colors.grey,
          context,
        ),
        borderRadius: BorderRadius.circular(50));

    return Container(
      padding: const EdgeInsets.only(top: 5),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 2,
            ),
            Theme(
              data: Theme.of(context).copyWith(
                colorScheme: ThemeData().colorScheme.copyWith(
                    // ignore: use_full_hex_values_for_flutter_colors
                    primary: const Color(0xff2E2E2E40),
                    secondary: Colors.white),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextFormField(
                  // obscureText: isHide,
                  controller: controller,
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                    hintText: hint,
                    hintStyle: const TextStyle(color: Colors.grey),
                    fillColor: secondbackgroundColor,
                    filled: true,
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            // isHide = !isHide;
                          });
                        },
                        icon:
                            // isHide
                            //     ? const Icon(
                            //         Icons.visibility_off_outlined,
                            //         color: Colors.grey,
                            //       )
                            //     :
                            const Icon(
                          Icons.visibility_outlined,
                          color: Colors.grey,
                        )),
                    border: inputBorder,
                    enabledBorder: inputBorder,
                    errorStyle: const TextStyle(fontSize: 0.01),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
