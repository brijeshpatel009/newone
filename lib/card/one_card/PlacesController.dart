import 'package:flutter/material.dart';
import 'package:scroll_indicator/scroll_indicator.dart';

class PlacesController extends StatefulWidget {
  const PlacesController({
    super.key,
    required this.firstscroll,
  });

  final ScrollController firstscroll;

  @override
  State<PlacesController> createState() => _PlacesControllerState();
}

class _PlacesControllerState extends State<PlacesController> {
  @override
  Widget build(BuildContext context) {
    return ScrollIndicator(
      scrollController: widget.firstscroll,
      width: 56,
      height: 4,
      indicatorWidth: 15,
      indicatorDecoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(4)),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.grey),
    );
  }
}