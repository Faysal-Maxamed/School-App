import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_app/constants/constants.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  "images/logo.png",
                  width: 100,
                  height: 100,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Smart Primary and Secondary School",
                  style: GoogleFonts.poppins(fontSize: 17, color: primaryColor),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Welcome to Smart Primary and Secondary School,/ where excellence meets innovation. We are dedicated to nurturing young minds and preparing students for a bright future through quality education and modern learning techniques.",
                style: GoogleFonts.poppins(
                    fontSize: 12, color: Colors.grey.shade500),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Vision & Mission",
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  color: primaryColor,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Image.asset(
                    "images/vision.png",
                    height: 50,
                    width: 40,
                  ),
                  Text(
                    "Our  Vission",
                    style: GoogleFonts.rubik(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: primaryColor,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "To be a leading institution that shapes future leaders through excellence in education, innovation, and character development.",
                style: GoogleFonts.poppins(
                    fontSize: 12, color: Colors.grey.shade500),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Image.asset(
                    "images/mision.png",
                    height: 50,
                    width: 40,
                  ),
                  Text(
                    "Our  Mission",
                    style: GoogleFonts.rubik(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: primaryColor,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "To nurture curious minds, inspire creativity, build strong character, and empower students to excel in a diverse and ever-changing world.",
                style: GoogleFonts.poppins(
                    fontSize: 12, color: Colors.grey.shade500),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "🏫 Programs We Offer:",
                style: GoogleFonts.rubik(color: primaryColor),
              ),
              SizedBox(
                height: 7,
              ),
              Text("✅ Primary School (Grades 1 to 6)"),
              Text("✅ Secondary School (Grades 7 to 12)"),
              Text("✅ Extracurricular Activities (Sports, Clubs, Arts)"),
              Text("✅ Digital Learning and Smart Classrooms"),
              Text("✅  Science and Technology Labs"),
            ],
          ),
        ),
      ),
    );
  }
}
