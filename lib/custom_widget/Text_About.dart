import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextAbout extends StatelessWidget {
  String text = "";

  TextAbout({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Text(text,
          textAlign: TextAlign.center, style: GoogleFonts.poppins(color: const Color(0xff757575), fontSize: 12, fontWeight: FontWeight.normal)),
    );
  }
}