import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:school_app/constants/constants.dart';
import 'package:school_app/student/about/about.dart';
import 'package:school_app/student/attedence/home/student_attedence.dart';
import 'package:school_app/student/exams/pages/student_exam.dart';
import 'package:school_app/student/home/student_home.dart';
import 'package:school_app/student/home/widgets/card_widget.dart';
import 'package:school_app/student/notification/notification.dart';
import 'package:school_app/student/settings/profile.dart';

class BottomnavigationBar extends StatefulWidget {
  const BottomnavigationBar({super.key});

  @override
  State<BottomnavigationBar> createState() => _BottomnavigationBarState();
}

class _BottomnavigationBarState extends State<BottomnavigationBar> {
  @override
  int currentPage = 0;
  List<Widget> _pages = [
    StudentHomeScreen(),
    AboutScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  void PopUp() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        actionsPadding: EdgeInsets.all(30),
        actions: [
          Padding(
            padding: const EdgeInsets.only(),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CardsWidget(
                      ImgUrl: "images/homework.png",
                      title: "HomeWork",
                      PageGo: StudentHomeScreen(),
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
          )
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentPage],
      bottomNavigationBar: CurvedNavigationBar(
        color: primaryColor,
        backgroundColor: Colors.white,
        index: currentPage,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        // animationDuration: Duration(seconds: 4),
        items: [
          Icon(LineIcons.home, color: Colors.white),
          Icon(LineIcons.info, color: Colors.white),
          Icon(LineIcons.bell, color: Colors.white),
          Icon(LineIcons.user, color: Colors.white),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () => PopUp(),
        hoverColor: primaryColor,
        backgroundColor: secondaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        foregroundColor: Colors.white,
        child: FaIcon(FontAwesomeIcons.thLarge),
      ),
    );
  }
}
