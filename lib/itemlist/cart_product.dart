import 'package:flutter/material.dart';
import 'store.dart';
import 'widget.dart';
class cart_product extends StatefulWidget {
  final cart_product_name;
  final cart_product_images;
  final cart_product_price;
  
  const cart_product({
    this.cart_product_name,
    this.cart_product_images,
    this.cart_product_price,
  });

  @override
  State<cart_product> createState() => _cart_productState();
}

class _cart_productState extends State<cart_product> {
  final items = store_items();
  List<Map<String, dynamic>> cartItems = shopC.items_list;

  // 计算购物车中所有物品的价格总和
  double getTotalPrice() {
    double totalPrice = 0.0;
    for (var item in cartItems) {
      totalPrice += double.parse(item['price'].replaceAll(',', ''));
    }
    return totalPrice;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        title: const Text('Cart'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: Text('Total:'),
                // 显示购物车中所有物品的价格总和
                subtitle: Text('\$${getTotalPrice().toStringAsFixed(2)}'),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {},
                child: const Text('Check out', style: TextStyle(color: Colors.white)),
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Image.asset(cartItems[index]['image']!, width: 80.0, height: 80.0),
              title: Text(cartItems[index]['name']!, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(cartItems[index]['price']!, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
