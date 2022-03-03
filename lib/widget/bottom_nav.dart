import 'package:flutter/material.dart';
import 'package:mansoor/views/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> _pages = <Widget>[
      const MyHomePage(),
      const Icon(
        Icons.chat,
        size: 150,
      ),
      const Icon(
        Icons.chat,
        size: 150,
      ),
      const Icon(
        Icons.chat,
        size: 150,
      ),
      const Icon(
        Icons.chat,
        size: 150,
      ),
    ];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          mouseCursor: SystemMouseCursors.grab,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                color: Colors.grey,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.grey,
              ),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.grey,
              ),
              label: 'Clearance',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.grey,
              ),
              label: 'Store',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.grey,
              ),
              label: 'Profile',
            ),
          ]),
      body: Center(
        child: _pages.elementAt(_selectedIndex), //New
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
