
import 'package:client/features/home/view/pages/booking_page.dart';
import 'package:client/features/home/view/pages/home_page.dart';
import 'package:client/features/home/view/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/theme/app_pallete.dart';
import '../../../../core/theme/constants.dart';
import '../../model/page_provider.dart';
import '../widgets/navbar_items.dart';
import 'favourite_page.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const BookingPage();
        case 2:
          return const FavouritePage();
        case 3:
          return const SettingsPage();
        default:
          return const HomePage();
      }
    }

    Widget myBottomNavbar() {
      return Container(
        width: double.infinity,
        height: 45,
        margin: EdgeInsets.all(defaultMargin),
        padding: const EdgeInsets.only(left: 28, right: 28, top: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Pallete.cardColor,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 8),
              blurRadius: 50,
              color: Colors.black.withOpacity(0.15),
            )
          ],
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavbarItem(
              imageUrl: "assets/icon_home.png",
              index: 0,
            ),
            NavbarItem(
              imageUrl: "assets/icon_document.png",
              index: 1,
            ),
            NavbarItem(
              imageUrl: "assets/icon_bookmark.png",
              index: 2,
            ),
            NavbarItem(
              imageUrl: "assets/icon_setting.png",
              index: 3,
            ),
          ],
        ),
      );
    }

    return Consumer<PageProvider>(
      builder: (context, pageProvider, _) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: SafeArea(
            child: Stack(
              children: [
                buildContent(pageProvider.currentIndex),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: myBottomNavbar(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
