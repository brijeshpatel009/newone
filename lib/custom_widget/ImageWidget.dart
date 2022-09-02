import 'package:flutter/material.dart';

class Image_widget extends StatelessWidget {
  double height = 0;
  double width = 0;
  final img_width;

  Image_widget({
    required this.height,
    required this.width,
    required this.img_width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      alignment: Alignment.center,
      child: Container(
        color: Colors.white.withOpacity(0.5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          clipBehavior: Clip.hardEdge,
          child: Image.asset(
            'asset/handstrees.jpg',
            height: height,
            width: img_width,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
