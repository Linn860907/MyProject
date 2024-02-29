import 'package:flutter/material.dart';
import './firebase/home.dart';
import 'drawer.dart';
import 'conceptproject.dart';
import 'currency.dart';
import 'language.dart';
import 'lookbook_21.dart';
import 'lookbook_22.dart';
import 'lookbook_23.dart';
import 'store.dart';
import 'AboutMillionFlash.dart';
import 'person.dart';
import 'shopping_cart.dart';
import 'category_page.dart';


class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label:'首頁'),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label:'搜尋'),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart),
      label:'購物車'),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label:'個人中心'),
  ];

  final List tabBodies = [
    home_page(),
    CategoryPage(),
    Shopping_cart(),
    person_1()
  ];

  int currentIndex = 0;
  var currentPage;

  @override
  void initState() {
    currentPage = tabBodies[currentIndex];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
      bottomNavigationBar: BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: bottomTabs,
        onTap: (index){
          setState(() {
            currentIndex = index;
            currentPage = tabBodies[currentIndex];
          });
        }
      ),          
      body:currentPage,
    );
  }
}

