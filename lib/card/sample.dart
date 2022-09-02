// import 'dart:io';
// import 'package:flutter/material.dart';
//
// class indexing extends StatefulWidget {
//   const indexing({super.key});
//
//   @override
//   _indexingState createState()
//   {
//     return _indexingState();
//   }
// }
//
// class _indexingState extends State<indexing> {
//   //List<String> _titles = ["Home", "Profile", "Shop"];
//   List<Widget> _items = [
//     const Text(
//       'Index 0: Home',
//     ),
//     const Text(
//       'Index 1: Profile',
//     ),
//     const Text(
//       'Index 2: Shop',
//     ),
//   ];
//   int _selectedIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Flutter Learning"),
//       ),
//       body:Center(
//           child: IndexedStack(
//               index: _selectedIndex,
//               children: _items
//           )//_items.elementAt(_index),
//       ),
//       bottomNavigationBar: _showBottomNav(),
//     );
//   }
//
//   Widget _showBottomNav()
//   {
//     return BottomNavigationBar(
//       items: [
//         const BottomNavigationBarItem(
//           icon: Icon(Icons.home),
//           label: 'Home',
//         ),
//         const BottomNavigationBarItem(
//           icon: Icon(Icons.account_circle),
//           label: 'Profile',
//         ),
//         const BottomNavigationBarItem(
//           icon: Icon(Icons.shopping_bag),
//           label: 'Shop',
//         ),
//       ],
//       currentIndex: _selectedIndex,
//       selectedItemColor: Colors.green,
//       unselectedItemColor: Colors.grey,
//       onTap: _onTap,
//     );
//   }
//
//   void _onTap(int index)
//   {
//     _selectedIndex = index;
//     setState(() {
//
//     });
//   }
// }
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
// // import 'package:flutter/material.dart';
// //
// // class Sample extends StatefulWidget {
// //   const Sample({Key? key}) : super(key: key);
// //
// //   @override
// //   State<Sample> createState() => _SampleState();
// // }
// //
// // class _SampleState extends State<Sample> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: SafeArea(
// //         child: Container(
// //           height: 250,
// //           child: GridView.builder(
// //             itemCount: 5,
// //             scrollDirection: Axis.horizontal,
// //             itemBuilder: (context, index) {
// //               return Container(
// //                 width: 250,
// //                 child: Padding(
// //                   padding: const EdgeInsets.all(5.0),
// //                   child: Card(
// //                     elevation: 5,
// //                     shape: RoundedRectangleBorder(
// //                         borderRadius: BorderRadius.circular(25)),
// //                     child: Wrap(
// //                       alignment: WrapAlignment.center,
// //                       children: [
// //                         Padding(
// //                           padding: const EdgeInsets.all(10.0),
// //                           child: Container(
// //                               height: 150,
// //                               decoration: BoxDecoration(
// //                                 borderRadius: BorderRadius.circular(25),
// //                                 image: DecorationImage(
// //                                     image: AssetImage('asset/badrinath_temple.jpg'),
// //                                     fit: BoxFit.fill),
// //                               )),
// //                         ),
// //                         ListTile(
// //                           title: Text('place',style: TextStyle(fontWeight: FontWeight.bold),),
// //                           subtitle: Text('Subtitle'),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //               );
// //             }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
