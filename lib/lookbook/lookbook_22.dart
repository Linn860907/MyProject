import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import '../drawer.dart';
import '../itemlist/cart_product.dart';


class lookBook_22 extends StatefulWidget {
  const lookBook_22({super.key});

  @override
  State<lookBook_22> createState() => _lookBook_22State();
}
int _currentIndex = 0;

class _lookBook_22State extends State<lookBook_22> {
 @override
   Widget build(BuildContext context) {
      return  Scaffold(
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
        body:  const lookbook_twentytwo(),
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
        break;
      // Add cases for other pages
    }
  }

class lookbook_twentytwo extends StatelessWidget {
  const lookbook_twentytwo({super.key});

  @override
  Widget build(BuildContext context) {
    final images = [
       'WT01-WH.jpg',
       'S01.jpg',
       'T01V2.jpg',
       'T01&T01V2 front.jpg',
       'T01V2-BK02.jpg',
       'T01&T01V2BK-Front 02.jpg',
       'WT01-BU02.jpg',
       '002 look-16.jpg',
       '002 look-02.jpg',
       '002 look-04.jpg'
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
