import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_app/constants/constants.dart';

class StudentAttedenceScreen extends StatelessWidget {
  const StudentAttedenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              children: [
                Text(
                  "Attedence App",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w500,
                    color: primaryColor,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Select Subject",
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Rate Of Absents and Presents",
                  style: GoogleFonts.poppins(fontSize: 16),
                ),
                SizedBox(
                  height: 250,
                  child: PieChart(
                    PieChartData(
                      sections: [
                        PieChartSectionData(
                            value: 25,
                            color: primaryColor,
                            title: "25%",
                            titleStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            titlePositionPercentageOffset: 0.6,
                            radius: 70),
                        PieChartSectionData(
                          titlePositionPercentageOffset: 0.6,
                          radius: 70,
                          value: 75,
                          color: secondaryColor,
                          title: "75%",
                          titleStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                      centerSpaceRadius: 0,
                      sectionsSpace: 2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 300,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Preiods",
                            style: GoogleFonts.poppins(),
                          ),
                          Text(
                            "25",
                            style: GoogleFonts.poppins(),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Present Preiods",
                            style: GoogleFonts.poppins(),
                          ),
                          Text(
                            "15",
                            style: GoogleFonts.poppins(),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Absent Preiods",
                            style: GoogleFonts.poppins(),
                          ),
                          Text(
                            "10",
                            style: GoogleFonts.poppins(),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Ateddence Rate",
                            style: GoogleFonts.poppins(),
                          ),
                          Text(
                            "75%",
                            style: GoogleFonts.poppins(),
                          ),
                        ],
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
  }
}
