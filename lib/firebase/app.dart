import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'auth_gate.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:onlineshop/firebase/home.dart';
import '../drawer.dart';
import '../conceptproject.dart';
import '../lookbook/lookbook_21.dart';
import '../lookbook/lookbook_22.dart';
import '../lookbook/lookbook_23.dart';
import '../itemlist/store.dart';
import '../itemlist/AboutMillionFlash.dart';
import '../category_page.dart';
import '../firebase/app.dart';
import '../firebase_options.dart';
import '../itemlist/cart_product.dart';
import '../itemlist/shopc.dart';


class MyApp extends StatelessWidget {
const MyApp({super.key});

@override
Widget build(BuildContext context) {
  return GetMaterialApp(
    debugShowCheckedModeBanner: false,
    key: UniqueKey(),
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    
    routes: {
      '/home_title': (context) => home_title(),
      '/store': (context) => store(),
      '/lookbook_21': (context) => const lookBook_21(),
      '/lookbook_22': (context) => const lookBook_22(),
      '/lookbook_23': (context) => const lookBook_23(),
      '/concept project': (context) => const ConceptProject(),
      '/about millionflash': (context) => const AboutMillionFlash(),
      '/drawer': (context) => const MyDrawer(),
      // '/person_1': (context) => const person_1(),
      '/cart': (context) => const cart_product(),
      '/category_page': (context) => const CategoryPage(),
      '/px': (context) =>  const px(),
      
    },
    
    home: const AuthGate(),
    //home: const IndexPage(),
  );
}
}