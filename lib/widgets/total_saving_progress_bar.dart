import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'progress_bar.dart';

class TotalSavingProgress extends StatelessWidget {
  final String title;
  final String money1;
  final String money2;
  final double progressWidth;

  const TotalSavingProgress({
    super.key,
    required this.title,
    required this.money1,
    required this.money2,
    required this.progressWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: black,
                fontWeight: FontWeight.w600,
              ),
            ),
            RichText(
              text: TextSpan(
                text: money1,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: black,
                ),
                children: [
                  TextSpan(
                    text: money2,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: grey,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.013),
        ProgressBar(
          width: progressWidth,
          ActiveColor: blue,
          InActiveColor: scaffoldBackgroundColor,
        ),
      ],
    );
  }
}
