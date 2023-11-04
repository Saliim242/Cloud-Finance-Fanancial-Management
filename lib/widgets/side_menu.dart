import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SideMenu extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final IconData icon;
  final bool? isSelected;
  final IconData? last;

  const SideMenu({
    super.key,
    required this.title,
    this.onTap,
    required this.icon,
    this.isSelected,
    this.last,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        //margin: EdgeInsets.only(bottom: 8),

        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isSelected! ? blue : transparent,
          borderRadius: BorderRadius.circular(3),
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              // mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  color: isSelected! ? white : grey,
                  size: 18,
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 13,
                    color: isSelected! ? white : grey,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            Expanded(
              child: Icon(
                last,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
