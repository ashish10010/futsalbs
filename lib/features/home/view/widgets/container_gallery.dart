import 'package:flutter/material.dart';

class ContainerGallery extends StatelessWidget {
  final String imageUrl;
  const ContainerGallery({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 141,
      height: 126,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
