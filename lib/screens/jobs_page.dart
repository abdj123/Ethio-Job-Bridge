import 'package:ethio_job_bridge/screens/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JobsPage extends StatefulWidget {
  const JobsPage({super.key});

  @override
  State<JobsPage> createState() => _JobsPageState();
}

class _JobsPageState extends State<JobsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.menu,
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.sizeOf(context).width * 0.68,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                          // color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(13),
                          border: Border.all(width: 1, color: Colors.black)),
                      child: const TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.black,
                          hintText: "Search ",
                          hintStyle: TextStyle(color: Color(0xffC1C1C1)),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 16,
                          ),
                          isDense: true,
                          suffixIcon: Icon(
                            //
                            Icons.search,
                            color: Color.fromARGB(255, 31, 29, 29),
                          ),
                        ),
                      ),
                    ),
                    const Icon(
                      CupertinoIcons.text_bubble,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0, top: 30),
                  child:
                      reusableText("Recommended for you", FontWeight.w600, 20),
                ),
                SizedBox(
                  height: 200,
                  // width: 50,
                  child: ListView.builder(
                    itemCount: 8,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 7),
                              child: SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.62,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          reusableText(
                                              "Jul 19, 2024",
                                              FontWeight.w400,
                                              15,
                                              const Color(0xff6295A2)),
                                          const Icon(
                                            Icons.bookmark_border_rounded,
                                            color: Color(0xff538392),
                                          ),
                                        ],
                                      ),
                                      reusableText(
                                          "Addis Technologies",
                                          FontWeight.w400,
                                          15,
                                          const Color(0xff6295A2)),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          reusableText("Senior UI/UX Designer",
                                              FontWeight.w500, 17),
                                          Image.asset("assets/download 1.png")
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            width: 80,
                                            height: 22,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                color: const Color(0xff708264)),
                                            child: Center(
                                                child: reusableText("Expert",
                                                    FontWeight.w400, 15)),
                                          ),
                                          Container(
                                            width: 80,
                                            height: 22,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                color: const Color(0xff8CB970)),
                                            child: Center(
                                                child: reusableText("Full time",
                                                    FontWeight.w400, 15)),
                                          ),
                                          Container(
                                            width: 80,
                                            height: 22,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                color: const Color(0xffB970A0)),
                                            child: Center(
                                                child: reusableText("Remote",
                                                    FontWeight.w400, 15)),
                                          ),
                                        ],
                                      ),
                                      const Divider(),
                                      Row(
                                        children: [
                                          const Icon(
                                              Icons.location_on_outlined),
                                          reusableText(
                                              "Addis Abeba",
                                              FontWeight.w400,
                                              14,
                                              const Color(0xff6295A2)),
                                          const Spacer(),
                                          Container(
                                            width: 94,
                                            height: 26,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                color: const Color(0xff538392)),
                                            child: Center(
                                                child: reusableText("Details",
                                                    FontWeight.w400, 15)),
                                          ),
                                        ],
                                      )
                                    ]),
                              ),
                            )),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0, top: 30),
                  child: reusableText("Recent Jobs", FontWeight.w600, 20),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.5,
                  child: ListView.builder(
                    itemCount: 8,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18.0, vertical: 10),
                              child: SizedBox(
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          reusableText(
                                              "Jul 19, 2024",
                                              FontWeight.w400,
                                              15,
                                              const Color(0xff6295A2)),
                                          const Icon(
                                            Icons.bookmark_border_rounded,
                                            color: Color(0xff538392),
                                          ),
                                        ],
                                      ),
                                      reusableText(
                                          "Addis Technologies",
                                          FontWeight.w400,
                                          15,
                                          const Color(0xff6295A2)),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          reusableText("Senior UI/UX Designer",
                                              FontWeight.w500, 20),
                                          Image.asset("assets/download 1.png")
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: 94,
                                              height: 24,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  color:
                                                      const Color(0xff708264)),
                                              child: Center(
                                                  child: reusableText("Expert",
                                                      FontWeight.w400, 15)),
                                            ),
                                            Container(
                                              width: 94,
                                              height: 24,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  color:
                                                      const Color(0xff8CB970)),
                                              child: Center(
                                                  child: reusableText(
                                                      "Full time",
                                                      FontWeight.w400,
                                                      15)),
                                            ),
                                            Container(
                                              width: 94,
                                              height: 24,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  color:
                                                      const Color(0xffB970A0)),
                                              child: Center(
                                                  child: reusableText("Remote",
                                                      FontWeight.w400, 15)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Divider(),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8.0),
                                        child: Row(
                                          children: [
                                            const Icon(
                                                Icons.location_on_outlined),
                                            reusableText(
                                                "Addis Abeba",
                                                FontWeight.w400,
                                                14,
                                                const Color(0xff6295A2)),
                                            const Spacer(),
                                            Container(
                                              width: 117,
                                              height: 26,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  color:
                                                      const Color(0xff538392)),
                                              child: Center(
                                                  child: reusableText("Details",
                                                      FontWeight.w400, 15)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ]),
                              ),
                            )),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
