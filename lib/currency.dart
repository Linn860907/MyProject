import 'package:flutter/material.dart';
import 'drawer.dart';

class Currency extends StatelessWidget {
  const Currency({super.key});
 
   @override
   Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Sign In'),
          backgroundColor: const Color(0xFF18b6b2),
        ),
        drawer: const MyDrawer(),
        body: const Center(
          child: Text(
            'Sign in / Sign up page',
            style: TextStyle(fontSize: 24),
          ),
        ),
      );
   }
}