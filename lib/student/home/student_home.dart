import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_app/student/attedence/home/student_attedence.dart';
import 'package:school_app/student/exams/pages/student_exam.dart';
import 'package:school_app/student/home/widgets/card_widget.dart';

class StudentHomeScreen extends StatelessWidget {
  const StudentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text("Hi Feysal!"),
                  subtitle: Text("Class Form4 A"),
                  trailing: CircleAvatar(
                    backgroundImage: AssetImage("images/tp1.png"),
                  ),
                ),
                Container(
                  height: 175,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("images/image1.png"),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 210,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade200,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CardsWidget(
                              ImgUrl: "images/homework.png",
                              title: "HomeWork",
                              PageGo: StudentAttedenceScreen(),
                            ),
                            CardsWidget(
                              ImgUrl: "images/attedence.png",
                              title: "Attedence",
                              PageGo: StudentAttedenceScreen(),
                            ),
                            CardsWidget(
                              ImgUrl: "images/exam.png",
                              title: "Examination",
                              PageGo: StudentExamScreen(),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CardsWidget(
                              ImgUrl: "images/jadwal.png",
                              title: "Scheduale",
                              PageGo: StudentAttedenceScreen(),
                            ),
                            CardsWidget(
                              ImgUrl: "images/fee.png",
                              title: "Fee",
                              PageGo: StudentAttedenceScreen(),
                            ),
                            CardsWidget(
                              ImgUrl: "images/report.png",
                              title: "Reports",
                              PageGo: StudentAttedenceScreen(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Top Students",
                  style: GoogleFonts.rubik(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Image.asset("images/tp1.png"),
                    SizedBox(width: 10),
                    Image.asset("images/tp2.png"),
                    SizedBox(width: 10),
                    Image.asset("images/tp3.png"),
                    SizedBox(width: 10),
                    Image.asset("images/tp4.png"),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Facts",
                  style: GoogleFonts.rubik(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(),
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Image.asset("images/fc1.png"),
                    title: Text(
                      "2000+",
                      style: GoogleFonts.poppins(fontSize: 16),
                    ),
                    subtitle: Text(
                      "Students",
                      style: GoogleFonts.poppins(
                          fontSize: 14, color: Colors.grey.shade500),
                    ),
                    trailing: Image.asset("images/tick.png"),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(),
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Image.asset("images/fc2.png"),
                    title: Text(
                      "280+",
                      style: GoogleFonts.poppins(fontSize: 16),
                    ),
                    subtitle: Text(
                      "Graduate",
                      style: GoogleFonts.poppins(
                          fontSize: 14, color: Colors.grey.shade500),
                    ),
                    trailing: Image.asset("images/tick.png"),
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
