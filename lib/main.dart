import 'package:flutter/material.dart';
import 'package:task_two/widgets/menu_item.dart';
import 'package:task_two/widgets/navigationbar.dart';
import 'package:task_two/widgets/notification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(250, 248, 247, 247),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, top: 23),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage('images/texx.png'),
                      width: 13,
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 120),
                      child: Text(
                        'Notification',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40, top: 31, right: 39),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MenuItem(
                      title: "Promos",
                      iconPath: "images/icon1.png",
                      colorey: Colors.green,
                    ),
                    MenuItem(
                      title: "Rahimjon",
                      iconPath: "images/Order.png",
                      colorey: Colors.green,
                    ),
                    MenuItem(
                      title: "Delivery",
                      iconPath: "images/Shape 3.png",
                      colorey: Colors.orange,
                    ),
                    MenuItem(
                      title: "Account",
                      iconPath: "images/Shape 2.png",
                      colorey: Colors.purple,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 12),
                child: NotificationItem(
                    deliviconpath: 'images/Shape 3.png',
                    orderarriv: 'Order Arrived',
                    text2: '12:35 PM',
                    cols: Colors.orange,
                    longtext:
                        'Order #567896 has been competed & arrived at the destination addres.'),
              ),
              NotificationItem(
                  deliviconpath: 'images/Order.png',
                  orderarriv: 'Order Success',
                  text2: 'Yesterday',
                  cols: Colors.blue,
                  longtext:
                      'Order #567896 has been success. Please wait for the product to be sent.'),
              NotificationItem(
                  deliviconpath: 'images/icon1.png',
                  orderarriv: '40% Discount on Beko',
                  text2: '24 July, 2024',
                  cols: Colors.green,
                  longtext:
                      'All of the Beko products available with 40% exclusive discount.'),
              NotificationItem(
                  deliviconpath: 'images/Shape 2.png',
                  orderarriv: 'Address Upadated',
                  text2: '20 July, 2024',
                  cols: Colors.purple,
                  longtext:
                      'Your payment and shipping address has been updated successfully.'),
            ],
          ),
        ),
        bottomNavigationBar: Navbar(),
      ),
    );
  }
}
