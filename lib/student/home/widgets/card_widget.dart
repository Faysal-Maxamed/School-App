import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardsWidget extends StatelessWidget {
  const CardsWidget(
      {super.key,
      required this.title,
      required this.ImgUrl,
      required this.PageGo});

  final title;
  final ImgUrl;
  final PageGo;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (_) => PageGo)),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 7),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
            child: Image.asset(
              ImgUrl,
              width: 50,
              height: 41,
            ),
          ),
        ),
        Text(
          title,
          style: GoogleFonts.rubik(fontSize: 12),
        )
      ],
    );
  }
}
