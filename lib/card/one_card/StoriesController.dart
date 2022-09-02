import 'package:flutter/material.dart';
import 'package:scroll_indicator/scroll_indicator.dart';

class Storiescontroller extends StatelessWidget {
  const Storiescontroller({
    super.key,
    required this.scroll,
  });

  final ScrollController scroll;

  @override
  Widget build(BuildContext context) {
    return ScrollIndicator(
      scrollController: scroll,
      width: 56,
      height: 4,
      indicatorWidth: 15,
      indicatorDecoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(4)),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.grey),
    );
  }
}