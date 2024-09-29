import 'package:flutter/material.dart';
import '../../../../core/theme/constants.dart';
import 'small_icons.dart';

class SmallContainer extends StatelessWidget {
  const SmallContainer(
      {super.key,
      required this.imageUrl,
      required this.title,
      this.isActive = false});

  final String imageUrl, title;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 73,
      height: 36,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: isActive ? kBlackColor : kBackgroundColor,
        border: Border.all(color: Colors.transparent),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 9),
            blurRadius: 10,
            color: Colors.black.withOpacity(0.1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SmallIcon(imageUrl: imageUrl),
          const SizedBox(width: 5),
          Text(
            title,
            style: isActive
                ? whiteTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: semiBold,
                  )
                : blackTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: semiBold,
                  ),
          )
        ],
      ),
    );
  }
}