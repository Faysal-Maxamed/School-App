import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:school_app/constants/constants.dart';
import 'package:school_app/student/about/about.dart';
import 'package:school_app/student/home/student_home.dart';
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentPage,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: LineIcon.home(), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "About"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Notification"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        child: LineIcon(Icons.category),
      ),
    );
  }
}
