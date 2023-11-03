import 'package:flutter/material.dart';

import '../models/overview_data_model.dart';
import 'overview_card_info.dart';

class OverViewSectionPart extends StatelessWidget {
  const OverViewSectionPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Overview",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),

          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            primary: false,
            itemCount: overviewDataDetails.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 10,
              // mainAxisSpacing: 16,
              //childAspectRatio: 3,
            ),
            itemBuilder: (context, index) => OverViewInfoCard(
              data: overviewDataDetails[index],
            ),
          ),

// OverviewInfoCard(overviewInfo: overviewDataDetails[index]
        ],
      ),
    );
  }
}
