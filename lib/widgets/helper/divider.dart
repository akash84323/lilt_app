import 'package:flutter/material.dart';
import 'package:lilt_app/colors/color_constants.dart';

class TheDivider extends StatelessWidget {
  const TheDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15),
      child: Divider(
        thickness: 0.5,
        color: AppColor.darkGrey,
      ),
    );
  }
}
