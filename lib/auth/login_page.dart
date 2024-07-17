import 'package:ethio_job_bridge/landing_page.dart';
import 'package:ethio_job_bridge/widgets/reusable_text_field.dart';
import 'package:ethio_job_bridge/auth/role_page.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
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
              height: 73,
            ),
            const SizedBox(
              height: 13,
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
                          const Text("Welcome back",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                              )),
                          const Padding(
                            padding: EdgeInsets.only(top: 13, bottom: 22),
                            child: Text(
                              "Sign in to get started and experience\ngreat deals",
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
                              "Phone Number", context, phoneNumberController),
                          const SizedBox(
                            height: 10,
                          ),
                          passwordReusableTextField(
                            "Password",
                            context,
                            passwordController,
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: GestureDetector(
                              onTap: () {
                                // Navigator.of(context).push(
                                //   MaterialPageRoute(
                                //     builder: (context) => const ForgotPassword(),
                                //   ),
                                // );
                              },
                              child: const Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: Text(
                                  "Forget Password?",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const LandingPage(),
                                ),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 27, left: 17, right: 24),
                              child: Container(
                                height: 47,
                                width: 327,
                                decoration: const BoxDecoration(
                                    color: Color(0xff538392),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(80))),
                                child: const Center(
                                  child: Text(
                                    "SIGN IN",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 12, top: 21),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Don't have an account?",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400)),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => const RolePage(),
                                      ),
                                    );
                                  },
                                  child: const Text(" Signup",
                                      style: TextStyle(
                                          color: Color(0xffE21E1E),
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
