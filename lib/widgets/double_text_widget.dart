import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

class AppDoubleText extends StatelessWidget {
  final String bigText;
  final String smallText;
  const AppDoubleText({super.key, required this.bigText, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: Styles.headLineStyle2),
        InkWell(
            onTap: () {
              print('you are tapped');
            },
            child: Text(smallText, style: Styles.textStyle.copyWith(color: Styles.primaryColor))),
      ],
    );
  }
}
