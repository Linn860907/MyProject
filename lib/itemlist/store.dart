// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:onlineshop/itemlist/cart_product.dart';
import '../drawer.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'product_detail.dart';
import 'widget.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';

class store extends StatefulWidget {
  const store({super.key});

  @override
  State<store> createState() => _storeState();
}

class _storeState extends State<store> {
  int _currentIndex = 0;

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
        body: items_()
    );
  }
}

void _navigateToPage(int index, BuildContext context) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/');
        break;
      case 1:
        Navigator.pushNamed(context, '/store');
        break;
      case 2:
        Navigator.pushNamed(context, '/cart');
        break;
      // Add cases for other pages
    }
  }

class items_ extends StatefulWidget {
  const items_({super.key});

  @override
  State<items_> createState() => _items_State();
}

class _items_State extends State<items_> {
  final items = store_items();
  @override
  Widget build(BuildContext context) {
  return GridView.builder(
    itemCount: store_items.items_list.length,
    gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
    itemBuilder: (BuildContext context, int index) {
      return Single_prod(
        prod_name: store_items.items_list[index]['name'], 
        prod_images: store_items.items_list[index]['image'],
        prod_s_name: store_items.items_list[index] ['s_name'],
        prod_old_price: store_items.items_list[index]['old_price'],
        prod_price: store_items.items_list[index]['price'],
        prod_detail: store_items.items_list[index]['detail'],
      );
    }
  );
}
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_s_name;
  final prod_images;
  final prod_old_price;
  final prod_price;
  final prod_detail;

  Single_prod({
    this.prod_name,
    this.prod_s_name,
    this.prod_images,
    this.prod_old_price,
    this.prod_price,
    this.prod_detail
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child:Hero(
        tag: prod_name,
       child: Material(
        child:InkWell(onTap: () => Navigator.of(context).push( MaterialPageRoute(
            builder: (context) =>  ProductDetails(
              product_detail_name: this.prod_name,
              product_detail_s_name: this.prod_s_name,
              product_detail_old_price: this.prod_old_price,
              product_detail_new_price: this.prod_price,
              product_detail_images: this.prod_images,
              product_detail_detail: this.prod_detail,
            ))),
        child: GridTile(
          footer: Container(
            color:Colors.white,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize:16.0),),
                  ),

                   Text("$prod_old_price", style: TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough),),
                   Text("NT ${prod_price}", style: TextStyle(color: Colors.black),)
              ],
            ),          
          ),
           child: Image.asset(prod_images,
           fit: BoxFit.cover,)),
           ),
        )),
    );
  }
}