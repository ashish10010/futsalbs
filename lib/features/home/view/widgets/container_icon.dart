import 'package:flutter/material.dart';

class ContainerIcon extends StatelessWidget {
  final String imageUrl;
  final bool isActive;
  final Color color;

  const ContainerIcon(
      {super.key,
      required this.imageUrl,
       this.isActive = false,
       this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 24,
      height: 24,
      child: Image(
        image: AssetImage(imageUrl),
        color: color,
      ),
    );
  }
}
