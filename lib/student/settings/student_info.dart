import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_app/auth/service/login_provider.dart';

class StudentInfoCard extends StatelessWidget {
  final String fullName;
  final String studentId;
  final String gender;
  final String branch;
  final String lastScore;
  final String place;
  final String phone;
  final String studentClass;
  final String role;

  const StudentInfoCard({
    super.key,
    required this.fullName,
    required this.studentId,
    required this.gender,
    required this.branch,
    required this.lastScore,
    required this.place,
    required this.phone,
    required this.studentClass,
    required this.role,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginProvider>(builder: (context, user, _) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Student Profile"),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // Profile avatar
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blueAccent,
                child: Icon(Icons.person, size: 50, color: Colors.white),
              ),
              const SizedBox(height: 16),
              Text(
                fullName,
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text(
                role,
                style: TextStyle(color: Colors.grey[600]),
              ),
              const SizedBox(height: 20),

              // Card with all information
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      buildTile("Student ID", studentId, Icons.badge),
                      buildDivider(),
                      buildTile("Gender", gender, Icons.wc),
                      buildDivider(),
                      buildTile("Branch", branch, Icons.account_tree),
                      buildDivider(),
                      buildTile("Class", studentClass, Icons.class_),
                      buildDivider(),
                      buildTile("Last Score", lastScore, Icons.score),
                      buildDivider(),
                      buildTile("Place", place, Icons.place),
                      buildDivider(),
                      buildTile("Phone", phone, Icons.phone),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  Widget buildTile(String title, String value, IconData icon) {
    return ListTile(
      leading: Icon(icon, color: Colors.blueAccent),
      title: Text(title),
      subtitle: Text(value, style: const TextStyle(fontSize: 16)),
    );
  }

  Widget buildDivider() {
    return const Divider(
      thickness: 1,
      height: 10,
    );
  }
}
