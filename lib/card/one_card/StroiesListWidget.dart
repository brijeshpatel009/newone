import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Stroies extends StatelessWidget {
  const Stroies({
    super.key,
    required this.scroll,
  });

  final ScrollController scroll;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 3,
        controller: scroll,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.25), offset: const Offset(7, 7), blurRadius: 10)]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 185,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(9),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'asset/aboutPeople.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('APJ abdul kalam',
                            style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 17, color: Colors.black)),
                        Text(
                          'He was a very hard-working student since his childhood.',
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 13, color: Colors.grey),
                          softWrap: true,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}