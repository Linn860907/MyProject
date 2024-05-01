import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:onlineshop/itemlist/cart_product.dart';
import 'package:onlineshop/question_papers/question_paper_controller.dart';
import '../drawer.dart';
import 'package:banner_carousel/banner_carousel.dart';


// 導入 firestore_service.dart 文件

class HomeScreen extends StatelessWidget {
    const HomeScreen({super.key});

    @override
    Widget build(BuildContext context) {
        return const home_title();
    }
}

class home_title extends StatefulWidget {
  const home_title({super.key});

  @override
  State<home_title> createState() => _home_titleState();
}

class _home_titleState extends State<home_title> {
  int _currentIndex = 0;
  
  
    @override

  
    Widget build(BuildContext context) {
        return Scaffold(
      drawer: const MyDrawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/IMG_8162.jpeg'),
              fit: BoxFit.scaleDown,
            ),
          ),
          height: 80,
        ),
        elevation: 0.0,
        automaticallyImplyLeading: true,
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
      
      body: Column(mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[ BannerCarousel(
            banners: BannerImages.listBanners,
            customizedIndicators: const IndicatorModel.animation(
                width: 20, height: 5, spaceBetween: 2, widthAnimation: 30),
            height: 400,
            activeColor: Colors.black,
            disableColor: Colors.white,
            animation: true,
            borderRadius: 10,
            onTap: (id) => print(id),
            width: 412,
            indicatorBottom: false,
          ),
],
    ));
  }
}
class BannerImages {
  static const String banner1 =
      "assets/23ss-14.jpg";
  static const String banner2 =
      "assets/23ss-4.jpg";
  static const String banner3 = 
      "assets/23ss-12.jpg";
  static const String banner4 =
      "assets/23ss-10.jpg";

  static List<BannerModel> listBanners = [
    BannerModel(imagePath: banner1, id: "1"),
    BannerModel(imagePath: banner2, id: "2"),
    BannerModel(imagePath: banner3, id: "3"),
    BannerModel(imagePath: banner4, id: "4"),
  ];
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
        break;
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
    fixedColor: Colors.grey
    );
  }
}
//picture
class px extends StatelessWidget {
  const px({super.key});

  @override
  Widget build(BuildContext context) {
  QuestionPaperController _questionPaperController = Get.find();
  return Scaffold(
    appBar: AppBar(
      actions: [
      ],
    ),
    body: Obx(() => ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return ClipRRect(
          child: Container(
            color:Colors.grey[300],
            padding: const EdgeInsets.all(0),
            
            width: double.infinity,
            child: FadeInImage(          
              image: NetworkImage(_questionPaperController.allPaperImages[index]),
              placeholder: const AssetImage("assets/23ss-14.jpg"),
            )
          )
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 20);  
      },
      itemCount: _questionPaperController.allPaperImages.length
    ))
  );
}
}

