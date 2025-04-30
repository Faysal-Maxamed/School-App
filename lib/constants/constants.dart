import 'package:flutter/material.dart';
import 'package:school_app/admin/admin_page.dart';
import 'package:school_app/auth/login/login.dart';
import 'package:school_app/student/navbar/bottomnavigation.dart';
import 'package:school_app/teacher/Home/teacher_home.dart';

const endPoint = "http://192.168.56.1:4000/api/school/";
const primaryColor = Color(0xff0D3B66);
const secondaryColor = Color(0xffF95738);
const isllogedIn = "isllogedIn";
const role = "role";

getrole(role){
  switch (role) {
    case 'admin':
      return AdminPageScreen();
    case 'student':
      return BottomnavigationBar();
    case 'teacher':
      return TeacherHomeScreen();
    default:
      return LoginScreen();
  }
}
