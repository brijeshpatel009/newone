import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Event extends StatefulWidget {
  const Event({
    super.key,
    required this.scroll,
  });

  final ScrollController scroll;

  @override
  State<Event> createState() => _EventState();
}

class _EventState extends State<Event> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 3,
        controller: widget.scroll,
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
                  Padding(
                    padding: const EdgeInsets.all(9),
                    child: Container(
                      height: 170,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'asset/festiveimage.jpg',
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
                        Text(
                          'EDM Event',
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 17, color: Colors.black),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Day',
                              style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 16, color: Colors.black),
                            ),
                            Text(
                              ' : Time',
                              style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 16, color: Colors.black),
                            ),
                            Text(
                              ' - City',
                              style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 16, color: Colors.black),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Destination',
                              style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            )
                          ],
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
