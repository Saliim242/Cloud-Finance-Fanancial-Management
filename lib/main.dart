import 'package:cloud_finance_fanancial_management/constants/colors.dart';
import 'package:cloud_finance_fanancial_management/responsive/responsive_layout.dart';
import 'package:cloud_finance_fanancial_management/screens/desktop_screen.dart';
import 'package:cloud_finance_fanancial_management/screens/mobile_screen.dart';
import 'package:cloud_finance_fanancial_management/screens/tablet_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    CloudFinanceFanancialManagement(),
  );
}

class CloudFinanceFanancialManagement extends StatelessWidget {
  const CloudFinanceFanancialManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cloud Finance Fanancial Management',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: scaffoldBackgroundColor,
      ),
      home: ResponsiveLayout(
        desktop: DesktopScreen(),
        tablet: TabletScreen(),
        mobile: MobileScreen(),
      ),
    );
  }
}
