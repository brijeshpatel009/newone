import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newone/card/one_card/AdBanner.dart';
import 'package:newone/card/one_card/BookingBanner.dart';
import 'package:newone/card/one_card/EventController.dart';
import 'package:newone/card/one_card/PlacesController.dart';
import 'package:newone/card/one_card/ServicesController.dart';
import 'package:newone/card/one_card/ServicesListWidget.dart';
import 'package:newone/card/one_card/StoriesController.dart';
import 'package:newone/card/one_card/StroiesListWidget.dart';
import 'package:newone/card/one_card/TextWidget.dart';
import '../../model/temple_model.dart';
import 'ButtonWidget.dart';
import 'EventListWidget.dart';
import 'placesListWidget.dart';


class demo extends StatefulWidget {
  const demo({
    super.key,
    required this.templeModelList,
    required this.firstscroll,
    required this.secondscroll,
    required this.thirdscroll,
    required this.fourthscroll,
    required this.onTapButton
  });

  final List<TempleModel> templeModelList;
  final ScrollController firstscroll;
  final ScrollController secondscroll;
  final ScrollController thirdscroll;
  final ScrollController fourthscroll;
  final Function(int) onTapButton;

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            color: const Color(0xffFFFFFF),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 35, 0, 0),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'The best way to\n',
                        style: GoogleFonts.poppins(color: const Color(0xFF666666), fontSize: 25, fontWeight: FontWeight.w500, height: 1.0),
                      ),
                      TextSpan(
                        text: 'discover your city.',
                        style: GoogleFonts.poppins(color: const Color(0xFF000000), fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                    ]),
                  ),
                ),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                    text: "\nIt’s your town! Know it inside out.",
                    style: GoogleFonts.poppins(color: const Color(0xff757575), fontSize: 12, fontWeight: FontWeight.normal),
                  ),
                  TextSpan(
                    text: "\nPlaces to visit, Things to do, Businesses, Services,",
                    style: GoogleFonts.poppins(color: const Color(0xff757575), fontSize: 12, fontWeight: FontWeight.normal),
                  ),
                  TextSpan(
                    text: "\nStories that entertain, People worth knowing",
                    style: GoogleFonts.poppins(color: const Color(0xff757575), fontSize: 12, fontWeight: FontWeight.normal),
                  ),
                  TextSpan(
                    text: "\nand much much more...",
                    style: GoogleFonts.poppins(color: const Color(0xff757575), fontSize: 12, fontWeight: FontWeight.normal),
                  ),
                ]),
              ),

              //Grid View

              Padding(
                padding: const EdgeInsets.only(top: 21),
                child: SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.templeModelList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 14, top: 14),
                        child: Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            image: DecorationImage(image: AssetImage('asset/${widget.templeModelList[index].imageName}'), fit: BoxFit.fill),
                          ),
                        ),
                      );
                    },
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Bookingbanner(),
              ),
            ]),
          ),
          Container(
            width: double.infinity,
            color: const Color(0xffF5F5F5),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 26),
                  child: Icon(
                    Icons.location_on_rounded,
                    size: 25,
                    color: Colors.red,
                  ),
                ),
                TextWidget(text: 'Places to visit'),

                //PLACES FIRST LIST

                Places(scroll: widget.firstscroll),
                PlacesController(firstscroll: widget.firstscroll),

                //FIRST BUTTON

                ButtonWidget(text: 'VIEW ALL PLACES', onTap: () {
                  if(widget.onTapButton != null) widget.onTapButton.call(1);
                }),

                //AD image 1

                AdBanner(imagePath: 'asset/adimage.jpg'),
                const Icon(
                  Icons.event_note_outlined,
                  size: 25,
                  color: Colors.red,
                ),
                TextWidget(text: 'Events to attend'),

                //FESTIVE SECOND LIST

                Event(scroll: widget.secondscroll),
                EventControllerSecond(scroll: widget.secondscroll),

                //SECOND BUTTON

                ButtonWidget(text: 'VIEW ALL EVENTS',onTap: (){if(widget.onTapButton != null) widget.onTapButton.call(2);}),

                //AD Image 2

                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 30),
                  child: Container(
                    color: Colors.white,
                    width: double.infinity,
                    child: const Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      child: Image(
                        image: AssetImage('asset/adImageTwo.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                const Icon(Icons.home_repair_service_sharp, size: 25, color: Colors.red),
                TextWidget(text: 'Services'),

                //SERVICES THIRD LIST

                Services(scroll: widget.thirdscroll),
                Servicescontroller(scroll: widget.thirdscroll),

                //SERVICES BUTTON

                ButtonWidget(text: 'VIEW ALL SERVICES',onTap:(){if(widget.onTapButton != null) widget.onTapButton.call(3);}),

                //AD Image 3

                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 30),
                  child: Container(
                    color: Colors.white,
                    width: double.infinity,
                    child: const Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      child: Image(
                        image: AssetImage('asset/adImageThree.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                const Icon(
                  Icons.person,
                  size: 25,
                  color: Colors.red,
                ),
                TextWidget(text: 'People to know'),

                //About People Fourth List

                Stroies(scroll: widget.fourthscroll),
                Storiescontroller(scroll: widget.fourthscroll),

                //About People Button

                ButtonWidget(text: 'VIEW ALL PEOPLE',onTap:(){}),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
