import 'package:flutter/material.dart';

class newone extends StatefulWidget {
  const newone({Key? key}) : super(key: key);

  @override
  State<newone> createState() => _newoneState();
}

class _newoneState extends State<newone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //Row 1
            Expanded(
                flex: 5,
                child: Row(
                  children: [
                    //Row 1 , Column 1
                    Expanded(
                        flex: 5,
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Container(
                                  color: Colors.purpleAccent,
                                )),
                            Expanded(
                                flex: 2,
                                child: Container(
                                  color: Colors.greenAccent,
                                )),
                            Expanded(
                                flex: 2,
                                child: Container(
                                  color: Colors.yellow,
                                )),
                            Expanded(
                                flex: 4,
                                child: Container(
                                  color: Colors.blueGrey,
                                )),
                          ],
                        )),
                    //Row1 , Column 2
                    Expanded(
                        flex: 5,
                        child: Column(
                          children: [
                            Expanded(
                                flex: 5,
                                child: Container(
                                  color: Colors.cyanAccent,
                                )),
                            Expanded(
                                flex: 2,
                                child: Container(
                                  color: Colors.purpleAccent,
                                ))
                          ],
                        )),
                    //Row1 , Column3
                    Expanded(
                        flex: 5,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child: Container(
                                      color: Colors.purpleAccent,
                                    ),
                                  ),
                                  Expanded(
                                      flex: 5,
                                      child: Container(
                                        color: Colors.blueGrey,
                                      ))
                                ],
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Container(
                                  color: Colors.lime,
                                ))
                          ],
                        )),
                    Expanded(
                        flex: 5,
                        child: Container(
                          color: Colors.grey,
                        )),
                  ],
                )),
            //Row 2
            Expanded(
                flex: 5,
                child: Container(
                  color: Colors.yellow,
                )),
            //Row 3
            Expanded(
                flex: 5,
                child: Container(
                  color: Colors.indigo,
                )),
            //Row 4
            Expanded(
                flex: 8,
                child: Container(
                  color: Colors.deepPurple,
                ))
          ],
        ),
      ),
    );
  }
}
