import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/icons.dart';
import 'total_saving_progress_bar.dart';

class TotalSavingUI extends StatelessWidget {
  const TotalSavingUI({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.5,
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Saving',
                  style: TextStyle(
                    fontSize: 13,
                    color: grey,
                  ),
                ),
                Icon(
                  Icons.more_horiz_rounded,
                  color: grey,
                  size: 20,
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.025),
            Row(
              children: [
                Text(
                  "\$406.27",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    color: black,
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.0075),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                  decoration: BoxDecoration(
                    color: backgroundgreen,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        upArrow,
                        size: 15,
                        color: green,
                      ),
                      Text(
                        "8.2%",
                        style: TextStyle(
                          color: green,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            RichText(
              text: TextSpan(
                text: '+33.3',
                style: TextStyle(
                  color: green,
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
                children: [
                  TextSpan(
                    text: ' than last month',
                    style: const TextStyle(
                      color: grey,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 1,
              decoration: BoxDecoration(
                color: grey.withOpacity(0.3),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            TotalSavingProgress(
              title: "Dream Studio",
              money1: "\$251.9",
              money2: "/\$750",
              progressWidth: 0.5,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            TotalSavingProgress(
              title: "Education",
              money1: "\$195.5",
              money2: "/\$200",
              progressWidth: 0.7,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            TotalSavingProgress(
              title: "Health Care",
              money1: "\$30.8",
              money2: "/\$150",
              progressWidth: 0.2,
            ),
          ],
        ),
      ),
    );
  }
}
