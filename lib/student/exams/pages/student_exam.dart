import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_app/auth/service/login_provider.dart';
import 'package:school_app/constants/constants.dart';
import 'package:school_app/student/exams/controllers/exam_provder.dart';

class StudentExamScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer2<ExamProvider, LoginProvider>(
        builder: (context, exam, user, _) {
      return DefaultTabController(
        length: 2,
        child: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Average Score Card
                  Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          // Left side: Text
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Average  Score",
                                    style: TextStyle(fontSize: 16)),
                                SizedBox(height: 8),
                                Text(
                                  "74.80",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue[900],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Right side: Pie Chart
                          SizedBox(
                            height: 100,
                            width: 100,
                            child: PieChart(
                              PieChartData(
                                sections: [
                                  PieChartSectionData(
                                    color: secondaryColor,
                                    value: 74.8,
                                    title: '74%',
                                    radius: 25,
                                  ),
                                  PieChartSectionData(
                                    color: Colors.grey[300],
                                    value: 100 - 74.8,
                                    title: '25%',
                                    radius: 25,
                                  ),
                                ],
                                sectionsSpace: 0,
                                centerSpaceRadius: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Top 3 Subjects
                  Text("Top 3 Subject", style: TextStyle(fontSize: 16)),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      subjectTag("Soomaali"),
                      subjectTag("Science"),
                      subjectTag("Physsics"), // Typo as shown in original
                    ],
                  ),
                  SizedBox(height: 30),

                  // TabBar for Status & Details
                  TabBar(
                    labelColor: Colors.black,
                    indicatorColor: Colors.blue,
                    tabs: [
                      Tab(text: "Status"),
                      Tab(text: "Details"),
                    ],
                  ),
                  SizedBox(height: 10),
                  // TabBarView content
                  Expanded(
                    child: TabBarView(
                      children: [
                        // Status tab content
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [],
                          ),
                        ),
                        // Details tab content
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              detailText("Possition", "11th"),
                              detailText("Subjects", "12"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }

  Widget subjectTag(String text) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(text),
    );
  }

  Widget detailText(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text("$label : $value"),
    );
  }
}
