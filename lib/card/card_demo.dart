import 'package:flutter/material.dart';

import 'one_card/widget.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Card"),
        ),
        body: ListView(
scrollDirection: Axis.vertical,
          children: [
            Card_widget(
              image: const AssetImage('asset/image11.jpg'),
              title: 'Nature Sound',
              subtitle: 'Playlist',
            ),
            Divider(
              color: Colors.black,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            Card_widget(
              image: const AssetImage('asset/handstrees.jpg'),
              title: 'Hill Sound',
              subtitle: 'Playlist',
            ),
            Card_widget(
              image: const AssetImage('asset/image11.jpg'),
              title: 'Nature Sound',
              subtitle: 'Playlist',
            ),
            Card_widget(
              image: const AssetImage('asset/image11.jpg'),
              title: 'Nature Sound',
              subtitle: 'Playlist',
            ),
            Card_widget(
              image: const AssetImage('asset/image11.jpg'),
              title: 'Nature Sound',
              subtitle: 'Playlist',
            ),
            Card_widget(
              image: const AssetImage('asset/image11.jpg'),
              title: 'Nature Sound',
              subtitle: 'Playlist',
            ),
          ],
        )
        //Card_widget(image: const AssetImage('asset/image11.jpg'), title: 'Nature Sound', subtitle: 'Playlist',),
        );
  }
}
