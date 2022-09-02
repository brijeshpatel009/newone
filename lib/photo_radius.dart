import 'package:flutter/material.dart';

class asset_photo extends StatefulWidget {
  const asset_photo({Key? key}) : super(key: key);

  @override
  State<asset_photo> createState() => _asset_photoState();
}

class _asset_photoState extends State<asset_photo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      // decoration:
      // BoxDecoration(
      //   color: const Color(0xfff4e6f6),
      //   image: new DecorationImage(
      //     fit: BoxFit.fill,
      //     colorFilter:
      //     ColorFilter.mode(Colors.black.withOpacity(0.7),
      //         BlendMode.dstATop),
      //     image: new AssetImage(
      //       'asset/handstrees.jpg',
      //     ),
      //   ),
      // ),
      // color: Colors.yellow,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ClipRRect(
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.all(Radius.circular(50)),
              child: Image(
                image: AssetImage('asset/handstrees.jpg'),
              )),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_outline_outlined,
                    size: 35,
                  ),
                  tooltip: 'Favourite'),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.download,
                  size: 35,
                ),
                tooltip: 'Download',
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.share,
                  size: 35,
                ),
                tooltip: 'Share',
              )
            ],
          )
        ],
      ),
    )));
  }
}
