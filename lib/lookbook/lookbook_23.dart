import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import '../drawer.dart';
import '../itemlist/cart_product.dart';


class lookBook_23 extends StatefulWidget {
  const lookBook_23({super.key});

  @override
  State<lookBook_23> createState() => _lookBook_23State();
}

int _currentIndex = 0;

class _lookBook_23State extends State<lookBook_23> {
 @override
   Widget build(BuildContext context) {
      return Scaffold(
        
      drawer: const MyDrawer(),
      backgroundColor: Colors.white,
      
      appBar: AppBar(
        title: Text('MillionFlash'),
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
        body:  const lookbook_twentythree(),
      );
   }
}



class lookbook_twentythree extends StatelessWidget {
  const lookbook_twentythree({super.key});

  @override
  Widget build(BuildContext context) {
    final images = [
      "23ss-15.jpg",
      "23ss-2.jpg",
      "23ss-3.jpg",
      "23ss-12.jpg",
      "23ss-4.jpg",
      "23ss-7.jpg",
      "23ss-10.jpg",
      "23ss-8.jpg",
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
        break;
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
