import 'package:cloud_finance_fanancial_management/widgets/side_menu.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/icons.dart';

class TabletScreen extends StatefulWidget {
  const TabletScreen({super.key});

  @override
  State<TabletScreen> createState() => _TabletScreenState();
}

class _TabletScreenState extends State<TabletScreen> {
  int selectedIndex = 0;
  int gen = 0;

  void _handleTileTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void handleTileTap(int index) {
    setState(() {
      gen = index;
    });
  }

  List titles = [
    ['Overview', overview],
    ['Statistics', statistics],
    ['Savings', savings],
    ['Portfolios', portfolios],
    ['Messages', message],
    ['Transactions', transactions],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Image.asset(
                'assets/logo.png',
                width: 80,
                height: 80,
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: titles.length,
              // Number of list items
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                // Use a custom ListTile widget
                return SideMenu(
                  title: titles[index][0],
                  icon: titles[index][1],
                  isSelected: selectedIndex == index,
                  onTap: () => _handleTileTap(index),
                );
              },
            ),
            SizedBox(height: 20),
            Text(
              "GENERAL",
              style: TextStyle(
                fontSize: 13,
                color: black,
                letterSpacing: 0.5,
              ),
            ),
            SizedBox(height: 20),
            SideMenu(
              title: 'Settings',
              icon: settings,
              isSelected: false,
            ),
            SideMenu(
              title: 'Appearances',
              icon: appearances,
              isSelected: false,
            ),
            SideMenu(
              title: 'No need Help',
              icon: needHelp,
              isSelected: false,
            ),
            //Spacer(),
            SideMenu(
              title: 'Log Out',
              icon: logout,
              isSelected: false,
            ),
          ],
        ),
      ),
      appBar: AppBar(),
      body: Center(
        child: Text('Tablet Screen'),
      ),
    );
  }
}
