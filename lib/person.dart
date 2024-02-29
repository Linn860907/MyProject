import 'package:flutter/material.dart';
import 'drawer.dart';

class person_1 extends StatefulWidget {
  const person_1({super.key});

  @override
  State<person_1> createState() => _person_1State();
}

class _person_1State extends State<person_1> {
  @override
    int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/IMG_8162.jpeg'),
              fit: BoxFit.scaleDown,
            ),
          ),
          height: 80,
        ),
        elevation: 0.0,
        automaticallyImplyLeading: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () => debugPrint('Search button is pressed.'),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationWidget(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            _navigateToPage(index, context);
          });
        },
        fixedHeight: 56.0,
      ),
      body: const person_2(),
    );
  }
}

void _navigateToPage(int index, BuildContext context) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/');
        break;
      case 1:
        Navigator.pushNamed(context, '/drawer');
        break;
      case 2:
        Navigator.pushNamed(context, '/lookbook_21');
        break;
      case 3:
        Navigator.pushNamed(context,'/lookbook_22');
      // Add cases for other pages
    }
  }

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({
    Key? key,
    required this.currentIndex,
    required this.onTap,
    required this.fixedHeight,
  }) : super(key: key);
  final int currentIndex;
  final ValueChanged<int> onTap;
  final double fixedHeight;

  @override
Widget build(BuildContext context) {
  return BottomNavigationBar(
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.photo_library),
        label: 'Shop',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.add_shopping_cart),
        label: 'Shopping_cart',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Person',
      ),
    ],
    currentIndex: currentIndex,
    onTap: onTap,
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.grey,
    );
  }
}

class person_2 extends StatefulWidget {
  const person_2({super.key});

  @override
  State<person_2> createState() => _person_2State();
}

class _person_2State extends State<person_2> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}