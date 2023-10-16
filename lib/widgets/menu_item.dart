import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  const MenuItem(
      {super.key,
      required this.title,
      required this.iconPath,
      required this.colorey});
  final String title;
  final String iconPath;
  final dynamic colorey;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colorey,
              image: DecorationImage(image: AssetImage(iconPath))),
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 13,
          ),
        )
      ],
    );
  }
}
