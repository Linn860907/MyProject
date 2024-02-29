import 'package:flutter/material.dart';
import 'drawer.dart';

class AboutMillionFlash extends StatefulWidget {
  const AboutMillionFlash({super.key});

  @override
  State<AboutMillionFlash> createState() => _AboutMillionFlashState();
}

class _AboutMillionFlashState extends State<AboutMillionFlash> {
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
      body: const AboutMillionFlash1(),
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

class AboutMillionFlash1 extends StatelessWidget {
  const AboutMillionFlash1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // 添加照片
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/IMG_8188.jpg', width: 100, height: 100),
          ),
          // 添加文本
          Text(
            '''Millionflash™ is a designer brand,was founded in 2020 by designer Josh Wang.
Creates a new look for clothing through the fusion of new and old from an experimental perspective,
and the studio not only sells its own branch line, but also provides styling customizationand costume rental.

For the brand name, designer Josh wanted to jump out of the traditional way of naming his own name, the early cartoon used light bulbs to interpret ideas and ideas, through this inspiration synonymous with Flash as the idea, the word MillionFlash was born, hoping to present and shine like the light in the sky through many different inspirations and ideas.
-
2020 Taiwan Fashion Design Award / SECOND PRIZE
2022 Taipei TOP Fashion Design Award / SHORTLISTED

Based in Taiwan, New Taipei

Best,
Million Flash™
''',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
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
    selectedItemColor: Colors.red,
    unselectedItemColor: Colors.grey,
    );
  }
}