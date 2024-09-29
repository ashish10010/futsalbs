import 'package:flutter/material.dart';

class SmallIcon extends StatelessWidget {
  const SmallIcon({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageUrl),
        ),
      ),
    );
  }
}