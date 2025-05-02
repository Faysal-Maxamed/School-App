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
    return Consumer<LoginProvider>(
      builder: (context,user,_) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.blueAccent,
                    child: Icon(Icons.person, size: 40, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20),
                buildInfo("Full Name", fullName, Icons.person),
                buildInfo("Student ID", studentId, Icons.badge),
                buildInfo("Gender", gender, Icons.wc),
                buildInfo("Branch", branch, Icons.account_tree),
                buildInfo("Last Score", lastScore, Icons.score),
                buildInfo("Place", place, Icons.place),
                buildInfo("Phone", phone, Icons.phone),
                buildInfo("Class", studentClass, Icons.class_),
                buildInfo("Role", role, Icons.verified_user),
              ],
            ),
          ),
        );
      }
    );
  }

  Widget buildInfo(String title, String value, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Icon(icon, color: Colors.blueAccent),
          const SizedBox(width: 10),
          Text(
            "$title: ",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 16),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
