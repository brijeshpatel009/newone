import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newone/card/one_card/BookingBanner.dart';
import 'package:newone/card/one_card/EventController.dart';
import 'package:newone/card/one_card/Grid_widget.dart';
import 'package:newone/card/one_card/PlacesController.dart';
import 'package:newone/card/one_card/ServicesController.dart';
import 'package:newone/card/one_card/ServicesListWidget.dart';
import 'package:newone/card/one_card/StoriesController.dart';
import 'package:newone/card/one_card/StroiesListWidget.dart';
import 'package:newone/card/one_card/TextWidget.dart';
import 'package:newone/card/one_card/placesListWidget.dart';
import 'package:newone/card/sample.dart';
import '../custom_widget/Text_About.dart';
import '../model/event_model.dart';
import '../model/place_model.dart';
import '../model/temple_model.dart';
import 'one_card/AdBanner.dart';
import 'one_card/EventListWidget.dart';
import 'one_card/uiDemoHomeWidget.dart';

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  State<ListViewDemo> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  List<TempleModel> templeModelList = [
    TempleModel(imageName: 'badrinath_temple.jpg', templeName: 'Badrinath Temple', templeLocation: 'Chamoli, Uttarakhand'),
    TempleModel(imageName: 'sun_temple.jpg', templeName: 'Sun temple', templeLocation: 'Konark, Odisha'),
    TempleModel(imageName: 'laxminarayan_temple.jpg', templeName: 'Laxminarayan-Temple', templeLocation: 'Delhi'),
    TempleModel(imageName: 'somnath_temple.jpeg', templeName: 'somnath temple', templeLocation: 'Somnath, Gujarat'),
    TempleModel(imageName: 'kashi_temple.jpg', templeName: 'Kashi Vishwanath', templeLocation: 'Varanasi, Uttar Pradesh'),
    TempleModel(imageName: 'image1.jpg', templeName: 'Kashi Vishwanath', templeLocation: 'Varanasi, Uttar Pradesh'),
    TempleModel(imageName: 'image2.jpg', templeName: 'Kashi Vishwanath', templeLocation: 'Varanasi, Uttar Pradesh'),
    TempleModel(imageName: 'image3.jpg', templeName: 'Kashi Vishwanath', templeLocation: 'Varanasi, Uttar Pradesh'),
    TempleModel(imageName: 'image4.jpg', templeName: 'Kashi Vishwanath', templeLocation: 'Varanasi, Uttar Pradesh'),
    TempleModel(imageName: 'image5.jpg', templeName: 'Kashi Vishwanath', templeLocation: 'Varanasi, Uttar Pradesh'),
    TempleModel(imageName: 'image6.jpg', templeName: 'Kashi Vishwanath', templeLocation: 'Varanasi, Uttar Pradesh'),
    TempleModel(imageName: 'image7.jpg', templeName: 'Kashi Vishwanath', templeLocation: 'Varanasi, Uttar Pradesh'),
    TempleModel(imageName: 'image8.jpg', templeName: 'Kashi Vishwanath', templeLocation: 'Varanasi, Uttar Pradesh'),
    TempleModel(imageName: 'image9.jpg', templeName: 'Kashi Vishwanath', templeLocation: 'Varanasi, Uttar Pradesh'),
    TempleModel(imageName: 'image11.jpg', templeName: 'Kashi Vishwanath', templeLocation: 'Varanasi, Uttar Pradesh'),
  ];

  List<places> Placeslist = [
    places(placeName: 'placesimageone.jpg'),
    places(placeName: 'placesimagetwo.jpg'),
    places(placeName: 'placesimagethree.jpg'),
    places(placeName: 'placesimagefour.jpg'),
    places(placeName: 'placesimagefive.jpg'),
    places(placeName: 'placesimagesix.jpg'),
    places(placeName: 'placesimageseven.jpg'),
    places(placeName: 'placesimageeight.jpg'),
    places(placeName: 'placesimagenine.jpg'),
    places(placeName: 'placesimageten.jpg'),
    places(placeName: 'placesimageeleven.jpeg'),
    places(placeName: 'placesimagetwale.jpg'),
    places(placeName: 'placesimagethirteen.jpg'),
    places(placeName: 'placesimagefourteen.jpg'),
    places(placeName: 'placesimagefithteen.jpg'),
  ];

  List<EventList> eventlist = [
    EventList(eventImage: 'eventimageone.jpg'),
    EventList(eventImage: 'eventimagetwo.jpg'),
    EventList(eventImage: 'eventimagethree.jpg'),
    EventList(eventImage: 'eventimagefour.jpg'),
    EventList(eventImage: 'eventimagefive.jpg'),
    EventList(eventImage: 'eventimagesix.jpg'),
    EventList(eventImage: 'eventimageseven.jpg'),
    EventList(eventImage: 'eventimageeight.jpg'),
    EventList(eventImage: 'eventimagenine.jpg'),
    EventList(eventImage: 'eventimageten.jpg'),
    EventList(eventImage: 'eventimageeleven.jpg'),
    EventList(eventImage: 'eventimagetwale.jpeg'),
    EventList(eventImage: 'eventimagethirteen.jpg'),
    EventList(eventImage: 'eventimagefourteen.jpeg'),
    EventList(eventImage: 'eventimagefithteen.jpg'),
  ];

  ScrollController firstscroll = ScrollController();
  ScrollController firstplacesscroll = ScrollController();
  ScrollController secondscroll = ScrollController();
  ScrollController secondeventscroll = ScrollController();
  ScrollController thirdscroll = ScrollController();
  ScrollController thirdservicesscroll = ScrollController();
  ScrollController fourthscroll = ScrollController();
  ScrollController fourtstorieshscroll = ScrollController();
  int _selectedIndex = 0;

  // get  index => Placeslist;

  @override
  void initState() {
    firstscroll = ScrollController();
    firstplacesscroll = ScrollController();
    secondscroll = ScrollController();
    secondeventscroll = ScrollController();
    thirdscroll = ScrollController();
    thirdservicesscroll = ScrollController();
    fourthscroll = ScrollController();
    fourtstorieshscroll = ScrollController();
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

// static const List<Widget> _widgetOptions = <Widget>[
  //   demo(templeModelList: templeModelList, firstscroll: firstscroll, secondscroll: secondscroll, thirdscroll: thirdscroll, fourthscroll: fourthscroll),
  //   Text(
  //     'Index 0: Home',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 1: Business',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 2: School',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 3: Settings',
  //     style: optionStyle,
  //   ),
  // ];

  // static const TextStyle ts = TextStyle(color: Colors.black, fontSize: 9);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.grey,
        toolbarHeight: 92.0,
        elevation: 10,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [
              Color(0xff9f0000),
              Color(0xffed4235),
            ]),
          ),
        ),
        leading: SizedBox(
          child: Image.asset(
            height: 36,
            'asset/road-sign.png',
          ),
        ),
        title: SizedBox(
          height: 36,
          width: 80,
          child: Column(
            children: [
              Text(
                'digitown',
                style: GoogleFonts.ubuntu(fontWeight: FontWeight.w400),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'thane',
                    style: GoogleFonts.ubuntu(fontWeight: FontWeight.w400, fontSize: 11),
                  ),
                ],
              ),
            ],
          ),
        ),
        titleSpacing: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 28),
            child: IconButton(
                splashRadius: 10,
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  size: 20,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 28),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.bookmark_border_outlined,
                  size: 20,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search_rounded,
                  size: 20,
                )),
          ),
        ],
      ),
      body: IndexedStack(index: _selectedIndex, children: [
        //Bottombar Home index
        demo(
          templeModelList: templeModelList,
          firstscroll: firstscroll,
          secondscroll: secondscroll,
          thirdscroll: thirdscroll,
          fourthscroll: fourthscroll,
          onTapButton: (int index) {
            _selectedIndex = index;
            setState(() {});
          },
        ),

        //Bottombar Places index
        Center(
            child: SingleChildScrollView(
          child: Container(
            color: const Color(0xffF5F5F5),
            child: Column(
              children: [
                SizedBox(
                  height: 35,
                ),
                Text('About The Places', style: GoogleFonts.poppins(color: Color(0xFF000000), fontWeight: FontWeight.bold, fontSize: 25)),
                TextAbout(
                    text: "In geography, location or place are used to denote a region (point, line, or area) on Earth's surface or elsewhere."),
                Padding(
                  padding: const EdgeInsets.only(top: 21),
                  child: SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: GridView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: Placeslist.length,
                      itemBuilder: (context,int index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 14, top: 14),
                          child: Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              image: DecorationImage(image: AssetImage('asset/places/${Placeslist[index].placeName}'), fit: BoxFit.fill),
                            ),
                          ),
                        );
                      },
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    ),
                  ),
                ),
                const Bookingbanner(),
                const SizedBox(
                  height: 26,
                  width: double.infinity,
                ),
                const Icon(
                  Icons.location_on_rounded,
                  size: 25,
                  color: Colors.red,
                ),
                TextWidget(text: 'Places to visit'),
                Places(scroll: firstplacesscroll),
                PlacesController(firstscroll: firstplacesscroll),
                SizedBox(height: 20)
              ],
            ),
          ),
        )),

        //Bottombar Events index
        Center(
            child: SingleChildScrollView(
          child: Container(
            color: Color(0xfff7f5f5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 35),
                Text('About The Event', style: GoogleFonts.poppins(color: Color(0xFF000000), fontWeight: FontWeight.bold, fontSize: 25)),
                TextAbout(
                    text:
                        "An event can be described as a public assembly for the purpose of celebration, education, marketing or reunion. Events can be classified on the basis of their size, type and context."),
                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: GridView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: eventlist.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 14, top: 14),
                          child: Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              image: DecorationImage(image: AssetImage('asset/Events/${eventlist[index].eventImage}'), fit: BoxFit.fill),
                            ),
                          ),
                        );
                      },
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    ),
                  ),
                ),
                AdBanner(imagePath: 'asset/adimage.jpg'),
                const Icon(
                  Icons.event_note_outlined,
                  size: 25,
                  color: Colors.red,
                ),
                TextWidget(text: 'Events to attend'),
                Event(
                  scroll: secondeventscroll,
                ),
                EventControllerSecond(scroll: secondeventscroll),
                SizedBox(height: 20)
              ],
            ),
          ),
        )),

        //Bottombar Services index
        Center(
            child: SingleChildScrollView(
          child: Container(
            color: Color(0xfff7f5f5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 35,
                ),
                Text('About The Services', style: GoogleFonts.poppins(color: Color(0xFF000000), fontWeight: FontWeight.bold, fontSize: 25)),
                TextAbout(
                    text:
                        "A service is an (intangible) act or use for which a consumer, firm, or government is willing to pay. Examples include work done by barbers, doctors, lawyers, mechanics, banks, insurance companies, and so on."),
                Padding(
                  padding: const EdgeInsets.only(top: 21),
                  child: SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: GridView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: Placeslist.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 14, top: 14),
                          child: Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              image: DecorationImage(image: AssetImage('asset/places/${Placeslist[index].placeName}'), fit: BoxFit.fill),
                            ),
                          ),
                        );
                      },
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    ),
                  ),
                ),
                AdBanner(imagePath: 'asset/adImageTwo.jpg'),
                Icon(
                  Icons.home_repair_service_sharp,
                  size: 25,
                  color: Colors.red,
                ),
                TextWidget(text: 'Services'),
                Services(scroll: thirdservicesscroll),
                Servicescontroller(scroll: thirdservicesscroll),
                SizedBox(height: 20)
              ],
            ),
          ),
        )),

        //Bottombar Stories index
        Center(
            child: SingleChildScrollView(
          child: Container(
            color: Color(0xfff7f5f5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 35,
                ),
                Text('About The Story', style: GoogleFonts.poppins(color: Color(0xFF000000), fontWeight: FontWeight.bold, fontSize: 25)),
                TextAbout(
                    text:
                        "The best story is a well-told tale about something the reader feels is relevant or significant. The best stories are more complete and more comprehensive."),
                Padding(
                  padding: const EdgeInsets.only(top: 21),
                  child: SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: GridView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: Placeslist.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 14, top: 14),
                          child: Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              image: DecorationImage(image: AssetImage('asset/places/${Placeslist[index].placeName}'), fit: BoxFit.fill),
                            ),
                          ),
                        );
                      },
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    ),
                  ),
                ),
                AdBanner(imagePath: 'asset/adImageThree.jpg'),
                Icon(
                  Icons.people,
                  size: 25,
                  color: Colors.red,
                ),
                TextWidget(text: 'People to know'),
                Stroies(scroll: fourtstorieshscroll),
                Storiescontroller(scroll: fourtstorieshscroll),
                SizedBox(height: 20)
              ],
            ),
          ),
        )),

        //Bottombar Menu index
        Drawer()
      ]),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 8, spreadRadius: 9)]),
        height: 95,
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.place,
                size: 30,
              ),
              label: 'Places',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.event,
                  size: 30,
                ),
                label: "Events"),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_repair_service,
                size: 30,
              ),
              label: 'Services',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.auto_stories,
                size: 30,
              ),
              label: 'Stories',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
                size: 30,
              ),
              label: 'Menu',
            ),
          ],
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: _onItemTapped,
          selectedIconTheme: const IconThemeData(color: Colors.red),
          unselectedIconTheme: const IconThemeData(color: Colors.black),
          unselectedLabelStyle: GoogleFonts.poppins(fontSize: 10, color: Colors.black),
          selectedLabelStyle: GoogleFonts.poppins(fontSize: 10, color: Colors.black),
          fixedColor: Colors.black,
        ),
      ),
    );
  }
}
