import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ListviewItem extends StatelessWidget {
  const ListviewItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: AspectRatio(
          aspectRatio: 2 / 3.2,
          child: CachedNetworkImage(imageUrl: imageUrl, fit: BoxFit.fill,)
          
          
        ),
      ),
    );
  }
}
