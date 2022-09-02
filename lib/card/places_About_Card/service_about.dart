import 'package:flutter/material.dart';

class services_about extends StatefulWidget {
  const services_about({Key? key}) : super(key: key);

  @override
  State<services_about> createState() => _services_aboutState();
}

class _services_aboutState extends State<services_about> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('services')),
      ),
    );
  }
}
