import 'package:flutter/material.dart';
import 'package:flutter_application_3/uibycompany/page3.dart';
import 'package:flutter_application_3/uibycompany/page4.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class Nav extends StatefulWidget {
  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  final tabs = [
    Center(child: Text('Home')),
    Center(child: Text('Bookmarks')),
    SizedBox(height: 600, width: 500, child: Uploader()),
    SizedBox(height: 600, width: 500, child: Prof()),
  ];
  int selectedIndex = 0;
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[selectedIndex],
      bottomNavigationBar: WaterDropNavBar(
        backgroundColor: Colors.white,
        onItemSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
          pageController.animateToPage(selectedIndex,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOutQuad);
        },
        selectedIndex: selectedIndex,
        barItems: [
          BarItem(
            filledIcon: Icons.home,
            outlinedIcon: Icons.home_filled,
          ),
          BarItem(
            filledIcon: Icons.bookmark_rounded,
            outlinedIcon: Icons.bookmark_border_rounded,
          ),
          BarItem(
              filledIcon: Icons.wallet_giftcard,
              outlinedIcon: Icons.wallet_giftcard_outlined),
          BarItem(
            filledIcon: Icons.account_circle,
            outlinedIcon: Icons.account_circle_outlined,
          ),
        ],
      ),
    );
  }
}
