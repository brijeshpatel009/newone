class TempleModel {
  String imageName = '';
  String templeName = '';
  String templeLocation = '';

  TempleModel({this.imageName='', this.templeLocation='', this.templeName=''});
}

















// return Padding(
//   padding: const EdgeInsets.all(8.0),
//   child: Container(
//     height: 200,
//     child: Card(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(18),
//       ),
//       color: Colors.white,
//       child: Column(
//         children: [
//           Stack(
//             fit: StackFit.expand,
//             children: [
//               ClipRRect(
//                 borderRadius: const BorderRadius.only(topLeft: Radius.circular(18), topRight: Radius.circular(18)),
//                 child: Container(
//                   height: 100,
//                   width: double.infinity,
//                   child: Image.asset(
//                     "asset/${templeModel.imageName}",
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//               ),
//               Positioned(
//                 left: 0,
//                 bottom: 0,
//                 right: 0,
//                 child: Container(
//                   alignment: Alignment.centerLeft,
//                   height: 50,
//                   color: Colors.grey.withOpacity(0.7),
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 15),
//                     //child:
//                     // Text(
//                     //   templeModel.imageName,
//                     //   style: const TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
//                     // ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//           ListTile(
//             title: Text(templeModel.templeName),
//             subtitle: Text(templeModel.templeLocation),
//           )
//         ],
//       ),
//     ),
//   ),
// );


















// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Container(
// decoration: BoxDecoration(
// boxShadow: [BoxShadow(color: Colors.black, offset: Offset(0.5, 2), blurRadius: 6.0)],
// borderRadius: BorderRadius.only(bottomLeft: Radius.circular(18), bottomRight: Radius.circular(18)),
// color: Colors.white),
// child: Wrap(
// children: [
// Card(
// elevation: 5,
// shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(18))),
// child: ClipRRect(
// borderRadius: const BorderRadius.all(Radius.circular(18)),
// child: Stack(
// children: [
// Image.asset('asset/badrinath_temple.jpg'),
// Positioned(
// bottom: 0,
// left: 0,
// right: 0,
// child: Container(
// width: double.infinity,
// height: 20,
// color: Colors.grey.withOpacity(0.7),
// )),
// ],
// ),
// ),
// ),
// ListTile(
// title: Text('${templeModelList[index].templeName}'),
// subtitle: Text('Name'),
// )
// ],
// ),
// ),
// );