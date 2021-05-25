import 'package:flutter/material.dart';
import 'package:bmi/constant/app_constants.dart';

class RightBar extends StatelessWidget {
  final double barWidth;

  const RightBar({Key key, this.barWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            height: 25,
            width: barWidth,
            decoration: BoxDecoration(
              color: accent_color,
                borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            )
            )
            )
      ],
    );
  }
}
