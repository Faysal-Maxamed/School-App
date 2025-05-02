import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:school_app/constants/constants.dart';
import 'package:school_app/student/exams/model/exam_model.dart';

class ExamProvider extends ChangeNotifier {
  List<StudentResults> Results = [];

  Future<List<StudentResults>> getExamResults(String StudentId) async {
    var response = await http.get(Uri.parse(examEndPoint + "${StudentId}"));
    if (response.statusCode == 200) {
      var date = jsonDecode(response.body);
      for (var element in date) {
        Results.add(element);
      }
    }
    notifyListeners();
    return Results;
  }
}
