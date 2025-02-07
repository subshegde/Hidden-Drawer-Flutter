import 'package:flutter/material.dart';
import 'package:flutter_packages/pages/HiddenDrawer/pages/settings.dart';
import 'package:flutter_packages/pages/hiddenDrawer/pages/home.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddendrawerExample extends StatefulWidget {
  const HiddendrawerExample({super.key});

  @override
  State<HiddendrawerExample> createState() => _HiddendrawerExampleState();
}

class _HiddendrawerExampleState extends State<HiddendrawerExample> {
  List<ScreenHiddenDrawer> pages = [];

  final baeTextStyle = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w300,
    color: Colors.black
  );

  final selectedTextStyle = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Colors.black
  );


  @override
  void initState() {
    super.initState();
    pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          colorLineSelected: Colors.deepOrange,
          name: 'Home', 
          baseStyle: baeTextStyle, 
          selectedStyle: selectedTextStyle),
          const Home()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
          colorLineSelected: Colors.deepOrange,
          name: 'Settings', 
          baseStyle: baeTextStyle, 
          selectedStyle: selectedTextStyle),
          const Settings())
    ];
  }
  @override
  Widget build(BuildContext context) {
    return  HiddenDrawerMenu(
      backgroundColorMenu: Colors.deepOrange[100]!,
      screens: pages,
      initPositionSelected: 0,
      slidePercent: 50,
      contentCornerRadius: 30,
    );
  }
}