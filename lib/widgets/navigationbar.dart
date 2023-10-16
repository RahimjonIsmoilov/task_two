import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
    );
  }
}
