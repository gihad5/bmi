import 'package:flutter/material.dart';
import 'package:bmi/constant/app_constants.dart';

class LaftBar extends StatelessWidget {
  final double barWidth;

  const LaftBar({Key key, this.barWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
            height: 25,
            width: barWidth,
            decoration: BoxDecoration(
              color: accent_color,
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            )
            )
            )
      ],
    );
  }
}
