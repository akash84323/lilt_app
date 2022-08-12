import 'package:flutter/material.dart';
import 'package:lilt_app/colors/color_constants.dart';

class SwitchTile extends StatefulWidget {
  final String title;
  final String subtitle;
  final IconData? icon;

  const SwitchTile({
    Key? key,
    required this.title,
    required this.subtitle,
    this.icon,
  }) : super(key: key);

  @override
  State<SwitchTile> createState() => _SwitchTileState();
}

class _SwitchTileState extends State<SwitchTile> {
  bool value = true;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  widget.subtitle,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            //SizedBox(width: 40),
            Switch(
              activeColor: AppColor.whitishGrey,
              activeTrackColor: AppColor.yellowColor,
              value: value,
              onChanged: (value) {
                setState(() {
                  this.value = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
