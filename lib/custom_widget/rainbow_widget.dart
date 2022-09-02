import 'package:flutter/material.dart';

class rainbow_widget extends StatelessWidget {
  const rainbow_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Container(
          color: Colors.indigo,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Container(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  color: Colors.green,
                  padding: const EdgeInsets.all(30),
                  child: Container(
                    color: Colors.yellow,
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Container(
                        color: Colors.orange,
                        child: Padding(
                          padding: const EdgeInsets.all(30),
                          child: Container(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
