import 'package:flutter/material.dart';

class AdBanner extends StatelessWidget {
   AdBanner({
     required this.imagePath,
    super.key,
  });
   String imagePath = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Padding(
        padding: EdgeInsets.only(top: 35),
        child: Container(
          color: Colors.white,
          height: 200,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Image(
              image: AssetImage(imagePath),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}