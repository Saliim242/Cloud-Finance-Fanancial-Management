import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/icons.dart';

class OverviewData {
  final String title;
  final IconData icon;
  final IconData arrow;
  final String amount;
  final String percentChange;
  final String amountChange;
  final Color color;
  final Color textColor;
  final bool loss;

  OverviewData({
    required this.title,
    required this.icon,
    required this.arrow,
    required this.amount,
    required this.percentChange,
    required this.amountChange,
    required this.color,
    required this.textColor,
    this.loss = false,
  });
}

List overviewDataDetails = [
  OverviewData(
    icon: earnings,
    arrow: upArrow,
    title: earning,
    amount: "\$928.41",
    color: backgroundgreen,
    percentChange: "12.8%",
    amountChange: "+\$118.8",
    textColor: green,
  ),
  OverviewData(
    icon: spending,
    arrow: downArrow,
    title: spendings,
    amount: "\$169.43",
    color: redBG,
    percentChange: "3.1%",
    amountChange: "-\$5.2",
    textColor: red,
    loss: true,
  ),
  OverviewData(
    icon: piggybank,
    arrow: upArrow,
    title: saving,
    amount: "\$406.27",
    color: backgroundgreen,
    percentChange: "8.2%",
    amountChange: "+\$33.3",
    textColor: green,
  ),
  OverviewData(
    icon: investment,
    arrow: upArrow,
    title: investments,
    amount: "\$1854.08",
    color: backgroundgreen,
    percentChange: "9.2%",
    amountChange: "+\$78.5",
    textColor: green,
  ),
];
