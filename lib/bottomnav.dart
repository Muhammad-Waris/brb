import 'package:brb/casinogames.dart';
import 'package:brb/customicons.dart';
import 'package:brb/home.dart';
import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:flutter/material.dart';
import 'accountsettings.dart';
import 'brbgames.dart';
import 'livebetting.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigation> {
  int currentPage = 0;
  final List<Widget> _pages = [
    HomePage(),
    const livebetting(),
    const casinogames(),
    const brbgames(),
    const accountsettings(),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final viewPadding = MediaQuery.of(context).viewPadding;
    double barHeight;
    double barHeightWithNotch = 67;
    double arcHeightWithNotch = 67;

    if (size.height > 700) {
      barHeight = 70;
    } else {
      barHeight = size.height * 0.1;
    }

    if (viewPadding.bottom > 0) {
      barHeightWithNotch = (size.height * 0.07) + viewPadding.bottom;
      arcHeightWithNotch = (size.height * 0.075) + viewPadding.bottom;
    }

    return Scaffold(
      body: _pages[currentPage],
      bottomNavigationBar: CircleBottomNavigationBar(
        barBackgroundColor: const Color(0xff0E4004),
        initialSelection: currentPage,
        barHeight: viewPadding.bottom > 0 ? barHeightWithNotch : barHeight,
        arcHeight: viewPadding.bottom > 0 ? arcHeightWithNotch : barHeight,
        itemTextOff: viewPadding.bottom > 0 ? 0 : 1,
        itemTextOn: viewPadding.bottom > 0 ? 0 : 1,
        circleOutline: 0.0,
        shadowAllowance: 0.0,
        circleSize: 50.0,
        blurShadowRadius: 50.0,
        circleColor: const Color(0xffFFC000),
        activeIconColor: const Color(0xff0E4004),
        inactiveIconColor: Colors.white,
        textColor: Colors.white,
        tabs: getTabsData(),
        onTabChangedListener: (index) => setState(() => currentPage = index),
      ),
    );
  }

  List<TabData> getTabsData() {
    return [
      TabData(
        icon: Customicons.home,
        iconSize: 16.0,
        title: currentPage == 0 ? "" : 'Home',
        fontSize: 10,
        fontWeight: FontWeight.w500,
      ),
      TabData(
        icon: Customicons.livebet,
        iconSize: 16,
        title: currentPage == 1 ? "" : 'Live betting',
        fontSize: 10,
        fontWeight: FontWeight.w500,
      ),
      TabData(
        icon: Customicons.casino,
        iconSize: 16,
        title: currentPage == 2 ? "" : 'Casino Games',
        fontSize: 10,
        fontWeight: FontWeight.w500,
      ),
      TabData(
        icon: Customicons.brb,
        iconSize: 16,
        title: currentPage == 3 ? "" : 'BRB Games',
        fontSize: 10,
        fontWeight: FontWeight.w500,
      ),
      TabData(
        icon: Icons.person,
        iconSize: 18,
        title: currentPage == 4 ? "" : 'Account Settings',
        fontSize: 10,
        fontWeight: FontWeight.w500,
      ),
    ];
  }
}
