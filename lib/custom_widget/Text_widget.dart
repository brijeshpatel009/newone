import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  String text = '';
  final color;

  TextWidget({
    required this.text,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Text(
          text,
          style: GoogleFonts.annieUseYourTelescope(
            fontWeight: FontWeight.bold,
            fontSize: 50,
            textStyle: TextStyle(color: color)
          ),
        ));
  }
}
