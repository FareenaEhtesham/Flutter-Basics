import 'package:flutter/material.dart';

class NumberWidget extends StatelessWidget {
  const NumberWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //use intrinsic height so that vertical divider take height of the other widgets
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildNumber(context, "4", "Ranking"),
          Container(height: 24, child: VerticalDivider()),
          buildNumber(context, "3802", "Following"),
          Container(height: 24, child: VerticalDivider()),
          buildNumber(context, "1.1M", "Followers"),
          Container(height: 24, child: VerticalDivider()),
        ],
      ),
    );
  }

  Widget buildNumber(BuildContext context, String value, String text) =>
      MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 4),
        onPressed: () {},
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              value,
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 2),
            Text(
              text,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
}
