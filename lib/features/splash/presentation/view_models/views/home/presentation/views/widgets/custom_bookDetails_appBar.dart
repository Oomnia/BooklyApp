import 'package:flutter/material.dart';

class CustomBookdetailsAppbar extends StatelessWidget {
  const CustomBookdetailsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,

        title: IconButton(onPressed: () {}, icon: Icon(Icons.close)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
    );
  }
}
