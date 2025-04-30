import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:school_app/admin/admin_page.dart';
import 'package:http/http.dart' as http;
import 'package:school_app/auth/model/login_model.dart';
import 'package:school_app/constants/constants.dart';
import 'package:school_app/student/navbar/bottomnavigation.dart';
import 'package:school_app/teacher/Home/teacher_home.dart';

class LoginProvider extends ChangeNotifier {
  String? _Id;
  String? _password;
  String? _role;
  LoginModel? user;

  bool issloading = false;

  String? get Id => _Id;
  String? get password => _password;
  String? get role => _role;

  void setId(id) {
    _Id = id;
    notifyListeners();
  }

  void setPassword(password) {
    _password = password;
    notifyListeners();
  }

  void setRole(role) {
    _role = role;
    notifyListeners();
  }

  void Login(BuildContext context) async {
    issloading = true;
    notifyListeners();
    try {
      var date = {
        "Id": Id,
        "Password": password,
        "Role": role,
      };
      var response = await http.post(
        Uri.parse(endPoint + "login"),
        body: jsonEncode(date),
        headers: {"Content-type": "application/json"},
      );

      print(response.body);

      if (response.statusCode == 200) {
        var decodedate = jsonDecode(response.body);
        user = LoginModel.fromJson(decodedate);
        print(user!.fullName);
        if (role == "Student") {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => BottomnavigationBar(),
            ),
          );
        } else if (role == "Teacher") {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => TeacherHomeScreen(),
            ),
          );
        } else if (role == "Admin") {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => AdminPageScreen(),
            ),
          );
        } else {}
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Failed To login"),
          ),
        );
      }
    } catch (errors) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("error ${errors}"),
        ),
      );
      print(errors);
    } finally {
      issloading = false;
      notifyListeners();
    }
  }
}
