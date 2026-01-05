import 'package:bookly_app/core/Utils/styles.dart';
import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({
    super.key,
    required this.text,
    required this.backgroundcolor,
    required this.textcolor,
    required this.borderRaduis,
  });
  final String text;
  final Color backgroundcolor;
  final Color textcolor;
  final BorderRadiusGeometry borderRaduis;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundcolor,
          shape: RoundedRectangleBorder(borderRadius: borderRaduis),
        ),
        child: Text(text, style: Styles.textStyle18.copyWith(color: textcolor)),
      ),
    );
  }
}
