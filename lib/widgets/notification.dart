import 'package:flutter/material.dart';
import 'package:task_two/widgets/menu_item.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem(
      {super.key,
      required this.deliviconpath,
      required this.longtext,
      required this.orderarriv,
      required this.text2,
      required this.cols});
  final String deliviconpath;
  final String orderarriv;
  final String text2;
  final String longtext;
  final dynamic cols;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      height: 116,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 1.0,
            color: Colors.black12,
          )),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 12, left: 20),
              child: MenuItem(
                colorey: cols,
                iconPath: deliviconpath,
                title: '',
              )),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  orderarriv,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w600),
                ),
                Text(
                  text2,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: SizedBox(
                    width: 279,
                    height: 44,
                    child: Text(
                      longtext,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
