import 'package:flutter/material.dart';

class event_about extends StatefulWidget {
  const event_about({Key? key}) : super(key: key);

  @override
  State<event_about> createState() => _event_aboutState();
}

class _event_aboutState extends State<event_about> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Event')),
      ),
    );
  }
}
