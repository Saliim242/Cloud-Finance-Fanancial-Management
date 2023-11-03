import 'package:cloud_finance_fanancial_management/constants/colors.dart';
import 'package:cloud_finance_fanancial_management/constants/icons.dart';
import 'package:flutter/material.dart';

import '../widgets/header_desktop.dart';
import '../widgets/overview_card_info.dart';
import '../widgets/overview_section_parts.dart';
import '../widgets/side_menu.dart';

class DesktopScreen extends StatefulWidget {
  const DesktopScreen({super.key});

  @override
  State<DesktopScreen> createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {
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
  List GENERAL = [
    ['Settings', settings],
    ['Appreance', appearances],
    ['No need help', needHelp],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: white,
                    border: Border(
                      right: BorderSide(
                        color: grey.withOpacity(0.3),
                      ),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/logo.png'),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    Text(
                      "MENU",
                      style: TextStyle(
                        fontSize: 13,
                        color: black,
                        letterSpacing: 0.5,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
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
                    Spacer(),
                    SideMenu(
                      title: 'Log Out',
                      icon: logout,
                      isSelected: false,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                children: [
                  HeaderDesktop(),
                  OverViewSectionPart(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
