import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProgressLine extends StatelessWidget {
  final Color? color;
  final int percentage;
  const ProgressLine({Key? key, required this.percentage, this.color = primaryColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 5,
          decoration: BoxDecoration(
              color: color!.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10)
          ),
        ),
        LayoutBuilder(builder: (context, constraints) => Container(
          width: constraints.maxWidth * (percentage /100),
          height: 5,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10)
          ),
        ))
      ],
    );
  }
}
