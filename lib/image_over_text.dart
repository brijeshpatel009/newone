import 'package:flutter/material.dart';
import 'custom_widget/ImageWidget.dart';
import 'custom_widget/Text_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class overtext extends StatefulWidget {
  const overtext({Key? key}) : super(key: key);

  @override
  State<overtext> createState() => _overtextState();
}

class _overtextState extends State<overtext> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.blue,
          child: Center(
            child: Container(
                child: Stack(children: [
              Image_widget(height: 250, width: 10, img_width: double.infinity),
              Positioned(
                  top: 400,
                  left: 150,
                  child: TextWidget(
                    text: 'Nature',
                    color: Colors.white,
                  )),
              Positioned(
                top: 30,
                right: 150,
                child: TextWidget(
                  text: 'Nature',
                  color: Colors.white.withOpacity(0.5),
                ),
              )
            ])),
          ),
        ),
      ),
    );
  }
}
