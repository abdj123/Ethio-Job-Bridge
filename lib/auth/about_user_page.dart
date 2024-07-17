import 'package:ethio_job_bridge/auth/upload_file_page.dart';
import 'package:flutter/material.dart';

class AboutUser extends StatefulWidget {
  const AboutUser({super.key});

  @override
  State<AboutUser> createState() => _AboutUserState();
}

class _AboutUserState extends State<AboutUser> {
  TextEditingController descriptionController = TextEditingController();

  int selected = 100;

  List<String> jobTitles = [
    "Accounting",
    "Health Care",
    "Agriculture",
    "Manufacturing",
    "Construction",
    "Teaching",
    "Engineering",
    "Sales "
  ];
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
                          const Text("Describe Your Self ",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                              )),
                          const SizedBox(
                            height: 8,
                          ),
                          passwordReusableTextField(
                            "About user self",
                            context,
                            descriptionController,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: RichText(
                                text: const TextSpan(
                                  text: '* ',
                                  style: TextStyle(color: Colors.red),
                                  children: [
                                    TextSpan(
                                        text: '50 words',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const UploadFiles(),
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
                                    "Continue",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          )
                        ]),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: GridView.builder(
                    itemCount: jobTitles.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = index;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: selected == index
                                  ? Colors.amberAccent
                                  : Colors.white,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                              child: reusableText(
                                  jobTitles[index], FontWeight.w400, 20)),
                        ),
                      );
                    },
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 32,
                      crossAxisSpacing: 22.0,
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 0.8,
                    ),
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
        borderRadius: BorderRadius.circular(8));

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
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    // obscureText: isHide,
                    minLines: 5,
                    maxLines: 10,
                    controller: controller,
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 6),
                      hintText: hint,
                      hintStyle: const TextStyle(color: Colors.grey),
                      fillColor: secondbackgroundColor,
                      filled: true,
                      border: inputBorder,
                      enabledBorder: inputBorder,
                      errorStyle: const TextStyle(fontSize: 0.01),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
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

Text reusableText(String text, FontWeight wight, double size,
    [Color color = Colors.black]) {
  return Text(
    text,
    overflow: TextOverflow.clip,
    style: TextStyle(fontWeight: wight, fontSize: size, color: color),
  );
}
