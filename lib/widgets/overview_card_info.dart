import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/icons.dart';
import '../models/overview_data_model.dart';

class OverViewInfoCard extends StatelessWidget {
  const OverViewInfoCard({
    super.key,
    required this.data,
  });

  final OverviewData data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width * 0.2,
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Icon(data.icon, color: grey, size: 18),
              SizedBox(width: MediaQuery.of(context).size.width * 0.006),
              Text(
                data.title,
                style: TextStyle(
                  fontSize: 13,
                  color: grey,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "${data.amount}",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: black,
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.0015),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                decoration: BoxDecoration(
                  color: data.color,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(
                      data.arrow,
                      size: 15,
                      color: data.textColor,
                    ),
                    Text(
                      "${data.percentChange}",
                      style: TextStyle(
                        color: data.textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          RichText(
            text: TextSpan(
                text: '${data.amountChange}',
                style: TextStyle(
                  color: data.textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                children: [
                  TextSpan(
                    text: ' than last month',
                    style: const TextStyle(
                      color: grey,
                      fontSize: 13,
                    ),
                  )
                ]),
          ),
        ],
      ),
    );
  }
}
