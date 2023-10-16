import 'package:flutter/material.dart';
import 'package:task_two/widgets/menu_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(250, 248, 247, 247),
        body: SafeArea(
          child: Column(
            children: [
              const Padding(
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
              const Padding(
                padding: EdgeInsets.only(left: 40, top: 31, right: 39),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MenuItem(
                      title: "Rahimjon",
                      iconPath: "images/Promo.png",
                    ),
                    MenuItem(
                      title: "Order",
                      iconPath: "images/Order.png",
                    ),
                    MenuItem(
                      title: "Delivery",
                      iconPath: "images/Delivery.png",
                    ),
                    MenuItem(
                      title: "Account",
                      iconPath: "images/Account.png",
                    ),
                  ],
                ),
              ),
              NotificationItem(),
              Container(
                margin: const EdgeInsets.only(top: 12),
                height: 116,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 1.0,
                      color: Colors.black12,
                    )),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 12, left: 20),
                      child: Image(image: AssetImage('images/Order.png')),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16, top: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Order Success',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Yesterday',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: SizedBox(
                              width: 279,
                              height: 44,
                              child: Text(
                                'Order #567896 has been success. Please wait for the product to be sent.',
                                style: TextStyle(
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
              ),
              Container(
                margin: const EdgeInsets.only(top: 12),
                height: 116,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 1.0,
                      color: Colors.black12,
                    )),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 12, left: 20),
                      child: Image(image: AssetImage('images/Promo.png')),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16, top: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '40% Discount on Beko',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            '24 July, 2024',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: SizedBox(
                              width: 279,
                              height: 44,
                              child: Text(
                                'All of the Beko products available with 40% exclusive discount.',
                                style: TextStyle(
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
              ),
              Container(
                margin: const EdgeInsets.only(top: 12),
                height: 116,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 1.0,
                      color: Colors.black12,
                    )),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 12, left: 20),
                      child: Image(image: AssetImage('images/Account.png')),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16, top: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Address Upadated',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            '20 July, 2024',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: SizedBox(
                              width: 279,
                              height: 44,
                              child: Text(
                                'Your payment and shipping address has been updated successfully.',
                                style: TextStyle(
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
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 80.0,
          showUnselectedLabels: true,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          items: [
            const BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('images/Home.png'),
                width: 19,
                height: 20,
              ),
              label: "Home",
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(5),
                    child: Image(
                      image: AssetImage('images/Shape.png'),
                      width: 19,
                      height: 20,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      height: 12,
                      width: 12,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: const Text(
                        '2',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
              label: "Messages",
            ),
            const BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('images/Group 2.png'),
                width: 19,
                height: 20,
              ),
              label: "Search",
            ),
            const BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('images/Group.png'),
                width: 19,
                height: 20,
              ),
              label: "Cart",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.grey),
              label: "Profile",
            )
          ],
        ),
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24),
      height: 116,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 1.0,
            color: Colors.black12,
          )),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 12, left: 20),
            child: Image(image: AssetImage('images/Delivery.png')),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, top: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Order Arrived',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
                Text(
                  '12:35 PM',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: SizedBox(
                    width: 279,
                    height: 44,
                    child: Text(
                      'Order #567896 has been completed & arrived at the destination address.',
                      style: TextStyle(
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
