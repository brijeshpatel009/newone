import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../card_lIst.dart';

class ButtonWidget extends StatelessWidget {
  VoidCallback onTap;
  String text = '';
  ButtonWidget({
    required this.text,
   required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 95, right: 95,bottom: 30),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xff9F0000),
              Color(0xffED4235),
            ],
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            minimumSize: MaterialStateProperty.all(const Size(200, 40)),
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
          ),
          onPressed: () {
            if(onTap != null) onTap.call();
          },
          child: Text(
            text,
            style: GoogleFonts.poppins(fontSize: 13, color: const Color(0xffFFFFFF), fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}