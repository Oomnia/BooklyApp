import 'package:bookly_app/core/widgets/customButton.dart';
import 'package:flutter/material.dart';

class Bookactions extends StatelessWidget {
  const Bookactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Custombutton(
            text: '19.99\$',
            backgroundcolor: Colors.white,
            textcolor: Colors.black,
            borderRaduis: BorderRadiusGeometry.only(
              topLeft: Radius.circular(14),
              bottomLeft: Radius.circular(14),
            ),
          ),
          Custombutton(
            text: 'Free Preview',

            backgroundcolor: Color(0xFFFD7700),
            textcolor: Colors.white,
            borderRaduis: BorderRadiusGeometry.only(
              topRight: Radius.circular(14),
              bottomRight: Radius.circular(14),
            ),
          ),
        ],
      ),
    );
  }
}
