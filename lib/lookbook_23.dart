import 'package:flutter/material.dart';
import 'drawer.dart';


class lookBook_23 extends StatelessWidget {
  const lookBook_23({super.key});
 
 @override
   Widget build(BuildContext context) {
      return Scaffold(
      drawer: const MyDrawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
      title: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
          image:AssetImage('assets/IMG_8162.jpeg'),
          fit:BoxFit.scaleDown),
          ),
            height: 80,
            ),
        elevation: 0.0,
        automaticallyImplyLeading: true,
           actions: <Widget>[
                 IconButton(
                   icon: const Icon(Icons.shopping_cart),
                   tooltip: 'Shopping_cart',
                   onPressed: () => debugPrint('Shopping_cart button is pressed.'),
                 ),
                 IconButton(
                   icon: const Icon(Icons.person),
                   tooltip: 'Person',
                 onPressed: () => debugPrint('Person button is pressed.'),
                 ),
              ],
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