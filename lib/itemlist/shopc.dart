import 'package:flutter/material.dart';

class shopc extends StatelessWidget {
  final List<Map<String, dynamic>> cartItems;

  const shopc({Key? key, required this.cartItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(cartItems[index]['image']),
            title: Text(cartItems[index]['name']),
            subtitle: Text(cartItems[index]['price']),
          );
        },
      ),
    );
  }
}
