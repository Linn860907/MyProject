import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:onlineshop/firebase/home.dart';
import 'package:onlineshop/itemlist/cart_product.dart';
import 'package:onlineshop/itemlist/store.dart';
import '../drawer.dart';
import 'widget.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_s_name;
  final product_detail_old_price;
  final product_detail_images;
  final product_detail_detail;

  const ProductDetails({
    this.product_detail_name,
    this.product_detail_s_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_images,
    this.product_detail_detail,
  });

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int _currentIndex = 0;
  void _addToCart() {

    shopC.items_list.add({
      'name': widget.product_detail_name,
      'image': widget.product_detail_images,
      'price': widget.product_detail_new_price,
    });
    

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Product added to cart'),
        duration: Duration(seconds: 1),
      ),
    );
  }
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
      body: ListView(
        children: <Widget>[
          Container(
            height: 350.0,
            child: GridTile(
              child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.product_detail_images)),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  widget.product_detail_name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  widget.product_detail_s_name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  '${widget.product_detail_old_price}',
                  style: const TextStyle(
                      fontSize: 12.0,
                      decoration: TextDecoration.lineThrough,
                      color: Colors.grey),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: Text('NT ${widget.product_detail_new_price}',
                      style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.red)))
            ],
          ),
          const Divider(),

          Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                onPressed: _addToCart,
                elevation: 0.2,
                color: Colors.red,
                textColor: Colors.white,
                child: Text('Buy Now'),
              )),
              IconButton(
                  icon: const Icon(Icons.add_shopping_cart, color: Colors.red),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const cart_product()));
                  }),
            ],
          ),
          const Divider(),
           ListTile(
            title: Text("Product details"),
            subtitle: Text(
              widget.product_detail_detail,
                ),
          ),
          const Divider(),
          Row(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child:
                    Text("Product name", style: TextStyle(color: Colors.grey)),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(widget.product_detail_name),
              )
            ],
          ),
          const Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child:
                    Text("Product brand", style: TextStyle(color: Colors.grey)),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text('Brand MillionFlash'),
              )
            ],
          ),
          const Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text("Product condition",
                    style: TextStyle(color: Colors.grey)),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text('NEW'),
              ),
            ],
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Similar Products"),
          ),
          const Divider(),
          Container(
            height: 360.0,
            child: const items_(),
          ),
        ],
      ),
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
    // Add cases for other pages
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


