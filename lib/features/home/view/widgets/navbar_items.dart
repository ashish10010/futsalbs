import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/theme/constants.dart';
import '../../model/page_provider.dart';

class NavbarItem extends StatelessWidget {
  final String imageUrl;
  final int index;

  const NavbarItem({super.key, required this.imageUrl, required this.index});

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context);
    
    return GestureDetector(
      onTap: () {
        pageProvider.setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 24,
            height: 24,
            child: Image(
              image: AssetImage(imageUrl),
              color: pageProvider.currentIndex == index
                  ? kGreenDarkColor
                  : kBlackColor,
            ),
          ),
          Container(
            width: 24,
            height: 2,
            color: pageProvider.currentIndex == index
                ? kGreenDarkColor
                : Colors.transparent,
          ),
        ],
      ),
    );
  }
}
