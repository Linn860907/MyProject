import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import '../drawer.dart';
import '../itemlist/cart_product.dart';

class lookBook_21 extends StatefulWidget {
  const lookBook_21({super.key});

  @override
  State<lookBook_21> createState() => _lookBook_21State();
}

class _lookBook_21State extends State<lookBook_21> {
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
          IconButton(icon: const Icon(Icons.add_shopping_cart),
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> const cart_product()));}),
          IconButton(
              icon: const Icon(Icons.person),
              tooltip: 'person',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute<ProfileScreen>(
                        builder: (context) => ProfileScreen(
                              appBar: AppBar(
                                title: const Text('User Profile'),
                              ),
                              actions: [
                                SignedOutAction((context) {
                                  Navigator.of(context).pop();
                                })
                              ],
                            )));
              })
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
      body: const lookbook_twentyone(),
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
        Navigator.pushNamed(context, '/cart');
      // Add cases for other pages
    }
  }

class lookbook_twentyone extends StatefulWidget {
  const lookbook_twentyone({super.key});

  @override
  State<lookbook_twentyone> createState() => _lookbook_twentyoneState();
}

class _lookbook_twentyoneState extends State<lookbook_twentyone> {
  @override
  Widget build(BuildContext context) {
    final images = [
      "20.jpg",
      "31.jpg",
      "46.jpg",
      "77.jpg"
    ];

    return MaterialApp(
        home: Scaffold(
            body: ListView(
              children: List.generate(images.length, (index) {
                return Column(
                  children: <Widget>[
                    Container(
                      // height: 300,
                      child: Image(
                        image: AssetImage('assets/${images[index]}'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                );
              }),
            )));
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
        icon: Icon(Icons.search),
        label: 'Search',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.add_shopping_cart),
        label: 'Shopping_cart',
      ),
    ],
    currentIndex: currentIndex,
    onTap: onTap,
    fixedColor: Colors.grey,
    );
  }

}

