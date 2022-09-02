import 'package:flutter/material.dart';

import 'custom_widget/rainbow_widget.dart';

class rainbow extends StatefulWidget {
  const rainbow({Key? key}) : super(key: key);

  @override
  State<rainbow> createState() => _rainbowState();
}

class _rainbowState extends State<rainbow> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Center(
        child: rainbow_widget(),
      ),
          ),
    );
  }
}

// class rainbow_widget extends StatelessWidget {
//   const rainbow_widget({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.purple,
//       child: Padding(
//         padding: EdgeInsets.all(30),
//         child: Container(
//           color: Colors.indigo,
//           child: Padding(
//             padding: EdgeInsets.all(30),
//             child: Container(
//               color: Colors.blue,
//               child: Padding(
//                 padding: EdgeInsets.all(30),
//                 child: Container(
//                   color: Colors.green,
//                   padding: EdgeInsets.all(30),
//                   child: Container(
//                     color: Colors.yellow,
//                     child: Padding(
//                       padding: EdgeInsets.all(30),
//                       child: Container(
//                         color: Colors.orange,
//                         child: Padding(
//                           padding: EdgeInsets.all(30),
//                           child: Container(
//                             color: Colors.red,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
