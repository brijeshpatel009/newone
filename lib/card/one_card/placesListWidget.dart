import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../places_About_Card/event_about.dart';
import '../places_About_Card/places_about.dart';
import '../places_About_Card/service_about.dart';

class Places extends StatefulWidget {
  Places({
    super.key,
    required this.scroll,
  });

  final ScrollController scroll;

  @override
  State<Places> createState() => _PlacesState();
}

class _PlacesState extends State<Places> {
  List<Widget> pageRoutes = [
    Places_about(),
    event_about(),
    services_about(),
  ];

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
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => pageRoutes[index]),
              );
            },
            child: Padding(
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
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'asset/lakeImage.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            textAlign: TextAlign.start,
                            text: TextSpan(
                                text: 'Upper Lake\n',
                                style: GoogleFonts.poppins(fontWeight: FontWeight.w500, color: const Color(0xff000000), fontSize: 16),
                                children: [
                                  TextSpan(text: 'Bhopal', style: GoogleFonts.poppins(fontSize: 11, color: const Color(0xff808283))),
                                  TextSpan(text: ' • ', style: GoogleFonts.poppins(fontSize: 11, color: const Color(0xff808283))),
                                  TextSpan(text: '49 mins', style: GoogleFonts.poppins(fontSize: 11, color: const Color(0xff808283)))
                                ]),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star_outlined,
                                color: Color(0xffFFD700),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text('4.4', style: GoogleFonts.poppins(fontSize: 11, color: const Color(0xff808283)))
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
