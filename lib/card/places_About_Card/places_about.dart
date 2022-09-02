import 'package:flutter/material.dart';

class Places_about extends StatefulWidget {
  const Places_about({Key? key}) : super(key: key);

  @override
  State<Places_about> createState() => _Places_aboutState();
}

class _Places_aboutState extends State<Places_about> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Welcome')),
      ),
    );
  }
}
