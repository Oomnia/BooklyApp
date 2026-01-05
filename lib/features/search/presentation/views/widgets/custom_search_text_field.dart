import 'package:bookly_app/core/Utils/styles.dart';
import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        filled: true,
        hint: Text(
          'Search Books',
          style: Styles.textStyle16.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        prefixIcon: IconButton(
          onPressed: () {},
          icon: Icon(Icons.search, size: 32, color: Colors.black),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
        fillColor: Colors.white,
      ),
    );
  }
}
