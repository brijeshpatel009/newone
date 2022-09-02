import 'package:flutter/material.dart';

class Bookingbanner extends StatefulWidget {
  const Bookingbanner({
    super.key,
  });

  @override
  State<Bookingbanner> createState() => _BookingbannerState();
}

class _BookingbannerState extends State<Bookingbanner> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35),
      child: Container(
        width: double.infinity,
        height: 210,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Stack(fit: StackFit.expand, children: [
            const Image(
              fit: BoxFit.fill,
              image: AssetImage('asset/himalay.jpg'),
            ),
            Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(children: [
                  TextSpan(text: 'GEMS OF HIMALAYAS\n', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25)),
                  TextSpan(
                      text: "- Exploring India's finest alpine trail -",
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15, color: Colors.white))
                ]),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 130,
              left: 130,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow,
                ),
                onPressed: () {},
                child: const Text(
                  'Book Now',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
