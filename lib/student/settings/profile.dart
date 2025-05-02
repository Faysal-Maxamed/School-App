import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_app/auth/service/login_provider.dart';
import 'package:school_app/constants/constants.dart';
import 'package:school_app/constants/themeprovider.dart';
import 'package:school_app/student/settings/student_info.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfileScreen> {
  bool isDarkTheme = false;
  String selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    return Consumer2<Themeprovider, LoginProvider>(
        builder: (context, theme, user, _) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Profile"),
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
            const SizedBox(height: 10),
            Center(
              child: Text(
                "${user.user!.fullName}",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
                child: Text("${user.user!.id} - ${user.user!.studentClass}")),
            const SizedBox(height: 30),

            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => StudentInfoCard(
                        fullName: "${user.user!.fullName}",
                        studentId: "${user.user!.id}",
                        gender: "${user.user!.gender}",
                        branch: "${user.user!.branch}",
                        lastScore: "${user.user!.lastScore[0]}",
                        place: "${user.user!.place}",
                        phone: "${user.user!.tell}".toString(),
                        studentClass: "${user.user!.studentClass}",
                        role: "${user.user!.role}",
                      ),
                    ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.language),
              title: const Text("Language"),
              trailing: DropdownButton<String>(
                value: selectedLanguage,
                onChanged: (value) {
                  setState(() {
                    selectedLanguage = value!;
                  });
                },
                items: ['English', 'Somali', 'Arabic']
                    .map((lang) => DropdownMenuItem(
                          value: lang,
                          child: Text(lang),
                        ))
                    .toList(),
              ),
            ),
            SwitchListTile(
              secondary: const Icon(Icons.dark_mode),
              title: const Text("Dark Theme"),
              value: theme.isdarkmode,
              onChanged: (value) {
                theme.toggle();
              },
            ),

            // Help
            ListTile(
              leading: const Icon(Icons.help_outline),
              title: const Text("Help"),
              onTap: () {
                // Navigate or show dialog
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Help page coming soon!")));
              },
            ),

            // Settings
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () {
                // Navigate to settings page
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Settings page coming soon!")));
              },
            ),

            // Log Out
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text("Log Out"),
              onTap: () {
                // Handle logout
                Navigator.of(context)
                    .pushReplacementNamed('/login'); // or your logout logic
              },
            ),
          ],
        ),
      );
    });
  }
}
