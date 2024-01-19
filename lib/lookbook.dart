import 'package:flutter/material.dart';
import 'drawer.dart';


class lookBook extends StatelessWidget {
  const lookBook({super.key});
 
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
        body: const Center(
          child: Text(
            'lookbook',
            style: TextStyle(fontSize: 24),
          ),
        ),
      );
   }
}

