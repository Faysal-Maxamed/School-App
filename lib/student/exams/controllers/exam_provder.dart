import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:school_app/constants/constants.dart';
import 'package:school_app/student/exams/model/exam_model.dart';

class ExamProvider extends ChangeNotifier {
  List<StudentResults> Results = [];

  Future<List<StudentResults>> getExamResults(String studentId) async {
    final response = await http.get(Uri.parse('$examEndPoint$studentId'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      for (var element in data) {
        Results.add(element);
      }
      notifyListeners();
      return Results;
    } else {
      throw Exception("Failed to load results");
    }
  }
}
