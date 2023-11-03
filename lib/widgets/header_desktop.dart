import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/icons.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.12,
      decoration: BoxDecoration(
        color: white,
        border: Border(
          bottom: BorderSide(
            color: grey.withOpacity(0.3),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Dashboard",
            style: TextStyle(
              fontSize: 20,
              color: black,
            ),
          ),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 4,
                //padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(8),
                    hintText: 'Search Here',
                    hintStyle: TextStyle(
                      fontSize: 13,
                      color: grey,
                    ),
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      color: grey,
                      size: 19,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Icon(
                      notification,
                    ),
                    Positioned(
                      top: 12,
                      right: 12,
                      child: Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          color: red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10),
              VerticalDivider(
                color: grey.withOpacity(0.4),
                thickness: 1,
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/profile.jpg"),
                  ),
                  SizedBox(width: 8),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Graham Alexander",
                        style: TextStyle(
                          fontSize: 13,
                          color: black,
                        ),
                      ),
                      Text(
                        "graham.a@gmail.com",
                        style: TextStyle(
                          fontSize: 13,
                          color: grey,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
