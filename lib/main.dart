import 'package:flutter/material.dart';
import 'drawer.dart';
import 'conceptproject.dart';
import 'currency.dart';
import 'language.dart';
import 'lookbook.dart';
import 'store.dart';
import 'AboutMillionFlash.dart';


void main(){
  runApp(const MyApp());
} 

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(  
      title: 'My App',
      initialRoute: '/', //加route
      routes: {
        '/': (context) => const MyHomePage(),
        '/currency': (context) => const Currency(),  
        '/language': (context) => const language(),
        '/store': (context) => const store(),
        '/lookbook': (context) => const lookBook(),
        '/concept project': (context) => const ConceptProject(),
        '/about millionflash': (context) => const AboutMillionFlash()
      }, 
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

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
            body: null,
          );
    }
}

