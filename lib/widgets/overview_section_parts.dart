import 'package:cloud_finance_fanancial_management/constants/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../constants/icons.dart';
import '../models/overview_data_model.dart';
import '../models/trasaction_dates.dart';
import 'bar_chats.dart';
import 'overview_card_info.dart';
import 'progress_bar.dart';
import 'total_saving_ui.dart';

class OverViewSectionPart extends StatefulWidget {
  const OverViewSectionPart({
    super.key,
  });

  @override
  State<OverViewSectionPart> createState() => _OverViewSectionPartState();
}

class _OverViewSectionPartState extends State<OverViewSectionPart> {
  bool isCheck = true;

  void checked(bool c) {
    isCheck = c;
    setState(() {});
  }

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
            itemCount: overviewDataDetails.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 15,
              childAspectRatio: 1.88,
            ),
            itemBuilder: (context, index) => OverViewInfoCard(
              data: overviewDataDetails[index],
            ),
          ),

          SizedBox(height: MediaQuery.of(context).size.height * 0.02),

// OverviewInfoCard(overviewInfo: overviewDataDetails[index]
          Row(
            children: [
              Expanded(
                flex: 3,
                child: StatisticsBarChart(),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.01),
              Expanded(
                flex: 2,
                child: TotalSavingUI(),
              )
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.023),
          Container(
            padding: EdgeInsets.all(23),
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Latest Transactions",
                      style: TextStyle(
                        fontSize: 16,
                        color: black,
                      ),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        fontSize: 13,
                        color: blue,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: DataTable(
                    //columnSpacing: 16,
                    showCheckboxColumn: isCheck,
                    columns: [
                      // DataColumn(
                      //   label: Checkbox(
                      //     value: false,
                      //     onChanged: (onChanged) {},
                      //   ),
                      // ),
                      DataColumn(
                        label: Text("To/From"),
                      ),
                      DataColumn(
                        label: Text("Date"),
                      ),
                      DataColumn(
                        label: Text("Description"),
                      ),
                      DataColumn(
                        label: Text("Amount"),
                      ),
                      DataColumn(
                        label: Text("Status"),
                      ),
                      DataColumn(
                        label: Text("Action"),
                      ),
                    ],
                    rows: List.generate(
                      transactionDataDetails.length,
                      (index) => buildDataRow(transactionDataDetails[index]),
                    ).toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  DataRow buildDataRow(TransactionData data) {
    return DataRow(
      onSelectChanged: (selected) => checked(selected!),
      cells: [
        DataCell(
          Text(
            data.title,
            style: TextStyle(
              fontSize: 16,
              color: black,
            ),
          ),
          onTap: () {},
        ),
        DataCell(
          Text(
            data.date,
            style: TextStyle(
              fontSize: 15,
              color: grey,
            ),
          ),
        ),
        DataCell(
          Text(
            data.description,
            style: TextStyle(
              fontSize: 16,
              color: black,
            ),
          ),
        ),
        DataCell(
          Text(
            data.amount,
            style: TextStyle(
              fontSize: 16,
              color: data.checked ? red : green,
            ),
          ),
        ),
        DataCell(
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: BoxDecoration(
              color: white,
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              border: Border.all(color: data.checked ? red : green),
            ),
            child: Text(
              data.status,
              style: TextStyle(
                color: data.checked ? red : green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        DataCell(
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                link,
                color: grey,
              ),
              Icon(
                delete,
                color: grey,
              ),
              Icon(
                threeDot,
                color: grey,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
