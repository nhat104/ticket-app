import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ticket_app/utils/styles.dart';

class DoubleText extends StatelessWidget {
  final String bigText;
  final String smallText;
  const DoubleText({super.key, required this.bigText, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: Styles.headLineStyle2),
        InkWell(
          onTap: () {
            print("View all");
          },
          child: Text(smallText,
              style: Styles.textStyle.copyWith(color: Styles.primaryColor)),
        ),
      ],
    );
  }
}
