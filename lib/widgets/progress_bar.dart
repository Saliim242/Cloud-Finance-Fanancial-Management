import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final double width;
  final Color InActiveColor;
  final Color ActiveColor;

  const ProgressBar({
    super.key,
    required this.width,
    required this.InActiveColor,
    required this.ActiveColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 10,
          decoration: BoxDecoration(
            color: InActiveColor,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        LayoutBuilder(builder: (context, constrain) {
          return Container(
            width: constrain.maxWidth * width,
            height: 10,
            decoration: BoxDecoration(
              color: ActiveColor,
              borderRadius: BorderRadius.circular(10),
            ),
          );
        })
      ],
    );
  }
}
