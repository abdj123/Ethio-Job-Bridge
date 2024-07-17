import 'package:ethio_job_bridge/screens/job_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 32,
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
                      reusableText("Popular Categories", FontWeight.w600, 20),
                ),
                GridView.builder(
                  itemCount: jobTitles.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                          child: reusableText(
                              jobTitles[index], FontWeight.w400, 20)),
                    );
                  },
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 32,
                    crossAxisSpacing: 22.0,
                    mainAxisSpacing: 10.0,
                    childAspectRatio: 0.8,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      reusableText("Recent Jobs", FontWeight.w600, 20),
                      const Icon(Icons.arrow_forward)
                    ],
                  ),
                ),
                SizedBox(
                  height: 280,
                  // width: 50,
                  child: ListView.builder(
                    itemCount: 8,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const JobDetail(),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18.0, vertical: 10),
                              child: SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.8,
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
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            width: 102,
                                            height: 26,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                color: const Color(0xff708264)),
                                            child: Center(
                                                child: reusableText("Expert",
                                                    FontWeight.w400, 15)),
                                          ),
                                          Container(
                                            width: 102,
                                            height: 26,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                color: const Color(0xff8CB970)),
                                            child: Center(
                                                child: reusableText("Full time",
                                                    FontWeight.w400, 15)),
                                          ),
                                          Container(
                                            width: 102,
                                            height: 26,
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
                                            width: 117,
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
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
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
