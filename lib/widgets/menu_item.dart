import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.title,
    required this.iconPath,
  });
  final String title;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(iconPath),
          width: 48,
          height: 48,
          alignment: Alignment.center,
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