import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlineshop/index_page.dart';
import 'auth_gate.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:onlineshop/firebase/home.dart';
import '../drawer.dart';
import '../conceptproject.dart';
import '../currency.dart';
import '../language.dart';
import '../lookbook_21.dart';
import '../lookbook_22.dart';
import '../lookbook_23.dart';
import '../store.dart';
import '../AboutMillionFlash.dart';
import '../person.dart';
import '../shopping_cart.dart';
import '../category_page.dart';
import '../firebase/app.dart';
import '../firebase_options.dart';

// class MyApp extends StatelessWidget {
// const MyApp({super.key});

// @override
// Widget build(BuildContext context) {
//     return MaterialApp(
//     theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//     ),
//     home: const AuthGate(),
//     );
//   }
// }

class MyApp extends StatelessWidget {
const MyApp({super.key});

@override
Widget build(BuildContext context) {
  return GetMaterialApp(
    key: UniqueKey(),
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    
    routes: {
      '/home_page': (context) => home_page(),
      '/currency': (context) => const Currency(),
      '/language': (context) => const language(),
      '/store': (context) => store(),
      '/lookbook_21': (context) => const lookBook_21(),
      '/lookbook_22': (context) => const lookBook_22(),
      '/lookbook_23': (context) => const lookBook_23(),
      '/concept project': (context) => const ConceptProject(),
      '/about millionflash': (context) => const AboutMillionFlash(),
      '/drawer': (context) => const MyDrawer(),
      '/person_1': (context) => const person_1(),
      '/shopping_cart': (context) => const Shopping_cart(),
      '/category_page': (context) => const CategoryPage(),
      '/px': (context) =>  const px(),
    },
    
    home: const AuthGate(),
    //home: const IndexPage(),
  );
}

}