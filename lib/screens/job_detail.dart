import 'package:flutter/material.dart';

class JobDetail extends StatefulWidget {
  const JobDetail({super.key});

  @override
  State<JobDetail> createState() => _JobDetailState();
}

class _JobDetailState extends State<JobDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Senior UI/UX Designer",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xff538392)),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
                child: Center(
                    child: Text(
                  "Apply Now",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )),
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                reusableText("Senior UI/UX Designer", FontWeight.w600, 24),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 102,
                        height: 26,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color(0xff708264)),
                        child: Center(
                            child: reusableText("Expert", FontWeight.w400, 15)),
                      ),
                      Container(
                        width: 102,
                        height: 26,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color(0xff8CB970)),
                        child: Center(
                            child:
                                reusableText("Full time", FontWeight.w400, 15)),
                      ),
                      Container(
                        width: 102,
                        height: 26,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color(0xffB970A0)),
                        child: Center(
                            child: reusableText("Remote", FontWeight.w400, 15)),
                      ),
                    ],
                  ),
                ),
                reusableText("Job Summary", FontWeight.w700, 17),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
                    "Design intuitive and visually appealing user interfaces that enhance the overall user experience.Collaborate with cross-functional teams to translate user requirements and business goals into compelling digital products.",
                    style: TextStyle(fontSize: 14),
                    overflow: TextOverflow.clip,
                  ),
                ),
                reusableText("Job Requirements", FontWeight.w700, 17),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
                    "Design intuitive and visually appealing user interfaces that enhance the overall user experience.Collaborate with cross-functional teams to translate user requirements and business goals into compelling digital products.",
                    style: TextStyle(fontSize: 14),
                    overflow: TextOverflow.clip,
                  ),
                ),
                reusableText("Required Skills", FontWeight.w700, 17),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: SizedBox(
                    height: 50,
                    child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.transparent,
                              border:
                                  Border.all(color: const Color(0xff538392))),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Center(
                                child: reusableText(
                                    "Wireframing", FontWeight.w400, 13)),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                reusableText("Required Qualifications", FontWeight.w700, 17),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
                    "Design intuitive and visually appealing user interfaces that enhance the overall user experience.Collaborate with cross-functional teams to translate user requirements and business goals into compelling digital products.",
                    style: TextStyle(fontSize: 14),
                    overflow: TextOverflow.clip,
                  ),
                ),
                reusableText("Prefered Qualifications", FontWeight.w700, 17),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
                    "Design intuitive and visually appealing user interfaces that enhance the overall user experience.Collaborate with cross-functional teams to translate user requirements and business goals into compelling digital products.",
                    style: TextStyle(fontSize: 14),
                    overflow: TextOverflow.clip,
                  ),
                ),
                reusableText("About Company", FontWeight.w700, 17),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 13.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      "assets/companies@2x.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xff538392)),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
                    child: Center(
                        child: Text(
                      "Apply Now",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    )),
                  ),
                ),
                const SizedBox(
                  height: 10,
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
