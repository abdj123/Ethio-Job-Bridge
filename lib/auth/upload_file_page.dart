// ignore_for_file: unused_local_variable

import 'dart:io';
import 'package:ethio_job_bridge/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';

class UploadFiles extends StatefulWidget {
  const UploadFiles({super.key});

  @override
  State<UploadFiles> createState() => _UploadFilesState();
}

class _UploadFilesState extends State<UploadFiles> {
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
                          const Padding(
                            padding: EdgeInsets.only(top: 39, bottom: 20),
                            child: Text("Finish Profile Setup ",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                          GestureDetector(
                            onTap: () async {
                              final ImagePicker picker = ImagePicker();
// Pick an image.
                              final XFile? image = await picker.pickImage(
                                  source: ImageSource.gallery);
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.black),
                              child: Padding(
                                padding: const EdgeInsets.all(25),
                                child: Center(
                                  child: Image.asset(
                                    // "assets/user-Bold.svg",
                                    "assets/4211763.png",
                                    color: Colors.white,
                                    width: 50,
                                    height: 50,
                                    // color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Text("Profile Picture",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              )),
                          const SizedBox(
                            height: 8,
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          GestureDetector(
                            onTap: () async {
                              FilePickerResult? result =
                                  await FilePicker.platform.pickFiles();

                              if (result != null) {
                                File file = File(result.files.single.path!);
                              } else {
                                // User canceled the picker
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 17, left: 17, right: 24, bottom: 10),
                              child: Container(
                                height: 47,
                                width: 327,
                                decoration: BoxDecoration(
                                    // color: Color(0xff538392),
                                    border: Border.all(color: Colors.black),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(80))),
                                child: const Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.file_upload_outlined,
                                      ),
                                      Text(
                                        "Resume",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Divider(),
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
                                  top: 40, left: 17, right: 24, bottom: 30),
                              child: Container(
                                height: 47,
                                width: 327,
                                decoration: const BoxDecoration(
                                    color: Color(0xff538392),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(80))),
                                child: const Center(
                                  child: Text(
                                    "Sign up",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
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
