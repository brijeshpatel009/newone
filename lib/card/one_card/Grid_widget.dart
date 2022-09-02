// import 'package:flutter/material.dart';
//
// class GridWidget extends StatelessWidget {
//   GridWidget({Key? key, required this.imagePath, required this.itemNumber}) : super(key: key);
//
//   String imagePath = '';
//   int itemNumber = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 21),
//       child: SizedBox(
//         height: 300,
//         width: double.infinity,
//         child: GridView.builder(
//           physics: const BouncingScrollPhysics(),
//           scrollDirection: Axis.horizontal,
//           itemCount: itemNumber,
//           itemBuilder: (context, index) {
//             return Padding(
//               padding: const EdgeInsets.only(left: 14, top: 14),
//               child: Container(
//                 height: 200,
//                 width: 200,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(18),
//                   image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.fill),
//                 ),
//               ),
//             );
//           },
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//         ),
//       ),
//     );
//   }
// }
//
//
//
