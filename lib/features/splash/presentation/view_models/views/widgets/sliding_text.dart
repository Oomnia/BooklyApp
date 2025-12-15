
import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.textAnimation,
  });

  final Animation<Offset> textAnimation;

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: textAnimation,
      child: Text(
        'Read Free Books',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}