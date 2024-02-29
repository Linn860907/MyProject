// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'drawer.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



// class store extends StatefulWidget {
//   const store({super.key});

//   @override
//   State<store> createState() => _storeState();
// }

// class _storeState extends State<store> {
//   int _currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: const MyDrawer(),
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: Container(
//           decoration: const BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage('assets/IMG_8162.jpeg'),
//               fit: BoxFit.scaleDown,
//             ),
//           ),
//           height: 80,
//         ),
//         elevation: 0.0,
//         automaticallyImplyLeading: true,
//         actions: <Widget>[
//           IconButton(
//             icon: const Icon(Icons.search),
//             tooltip: 'Search',
//             onPressed: () => debugPrint('Search button is pressed.'),
//           ),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationWidget(
//         currentIndex: _currentIndex,
//         onTap: (int index) {
//           setState(() {
//             _currentIndex = index;
//             _navigateToPage(index, context);
//           });
//         },
//         fixedHeight: 56.0,
//       ),
//                  body: GridView.count(
//               crossAxisCount: 2,
//               padding: const EdgeInsets.all(16.0),
//               childAspectRatio: 8.0 / 9.0,
//               children: _MyWidgetState()._buildGridCards(10) // Replace
//             ),
//     );
//   }
// }

// void _navigateToPage(int index, BuildContext context) {
//     switch (index) {
//       case 0:
//         Navigator.pushNamed(context, '/');
//         break;
//       case 1:
//         Navigator.pushNamed(context, '/store');
//         break;
//       case 2:
//         Navigator.pushNamed(context, '/lookbook_21');
//         break;
//       // Add cases for other pages
//     }
//   }


// class ShowItem extends StatefulWidget {
//   const ShowItem({super.key});

//   @override
//   State<ShowItem> createState() => _MyWidgetState();
// }
//     final images = [
//  "22AW Vol白底商品圖-10.jpg",
//  "Graphic pant1.jpg",
//  "Hoodie Dark1.jpg",
//  "Hoodie Light1.jpg",
//  "MNFH-B01-01.jpg",
//  "MNFH-C01-01.jpg",
//  "MNFH-JP01_01.jpg",
//  "MNFH-JPSP01_01.jpg",
//  "MNFH-SW01_01.jpg",
//  "S01.jpg",
//  "T01-LogoTee-BK.jpg",
//  "T01-LogoTee-WH.jpg",
//  "T01V2-Pixel-BK.jpg",
//  "T01V2-Pixel-WH.jpg",
//  "WT01-BU.jpg",
//  "WT01-WH.jpg"
//     ];

//     final text1 =[
//   "Cutting Leather Skirt BU",
//   "Graphic Leather Boot Cut BK",
//   "MNFH Hoodie DKGY",
//   "MNFH Hoodie LTGY",
//   "MillionFlash Tote",
//   "Multi-Logo Cap",
//   "Coating Jean",
//   "Denium Basketball",
//   "Foam Printing Sweater",
//   "Zipper Pocket Shirt WH"
//     ];

//     final text2 = [
//   "MillionFlash™ 23Spring/Summer 'Cutting Leather Skirt'",
//   "MillionFlash™ 22Winter 'Graphic Leather Boot Cut'",
//   "MillionFlash™ 22Winter 'MNFH Hoodie'",
//   "MillionFlash™ 22Winter 'MNFH Hoodie'",
//   "MillionFlash™ 22Winter 'MillionFlash Tote'",
//   "MillionFlash™ 22Winter 'Multi-Logo Cap'",
//   "MillionFlash™ 22Winter 'Coating Jean'",
//   "MillionFlash™ 22Winter 'Denium Basketball'",
//   "MillionFlash™ 22Winter 'Foam Printing Sweater'",
//   "MillionFlash™ 22Winter 'Zipper Pocket Shirt'"
//   ];

//   final text3 = [
//     "定價NT\$ 1,980",
//     "定價NT\$ 5,980",
//     "定價NT\$ 2,980",
//     "定價NT\$ 2,980",
//     "定價NT\$ 1,680",
//     "定價NT\$ 1,180",
//     "定價NT\$ 5,480",
//     "定價NT\$ 3,980",
//     "定價NT\$ 2,180",
//     "定價NT\$ 2,480"
//   ];

//   final text4 = [
//     "定價NT\$ 1,188",
//     "定價NT\$ 3,588",
//     "定價NT\$ 1,788",
//     "定價NT\$ 1,788",
//     "定價NT\$ 1,080",
//     "定價NT\$ 680",
//     "定價NT\$ 3,280",
//     "定價NT\$ 2,380",
//     "定價NT\$ 1,280",
//     "定價NT\$ 1,488"
//   ];

// class _MyWidgetState extends State<ShowItem> {

// List<Card> _buildGridCards(int count) {
//     List<Card> cards = List.generate(
//       count,
//       (int index) {
//         return Card(
//           clipBehavior: Clip.antiAlias,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               AspectRatio(
//                 aspectRatio: 5.0 / 4.0,
//                 child: Image(
//                   image: AssetImage('assets/items/${images[index]}'),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(16.0, 6.0, 16.0, 8.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       text1[index],
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                       style: const TextStyle(fontSize: 20),
//                       textAlign: TextAlign.center,
//                     ),
//                     const SizedBox(height: 8.0),
//                     Text(
//                       text2[index],
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                       style: const TextStyle(fontSize: 12),
//                       textAlign: TextAlign.center,
//                     ),
//                     Text(
//                       text3[index],
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                       style: TextStyle(
//                         fontSize: 12,
//                         decoration: TextDecoration.lineThrough,
//                         ),
//                       textAlign: TextAlign.center,
//                     ),
//                     Text(
//                       text4[index],
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                       style: TextStyle(
//                         fontSize: 14,
//                         fontWeight:FontWeight.bold,),
//                       textAlign: TextAlign.left,
                      
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//     return cards;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

// class BottomNavigationWidget extends StatelessWidget {
//   const BottomNavigationWidget({
//     Key? key,
//     required this.currentIndex,
//     required this.onTap,
//     required this.fixedHeight,
//   }) : super(key: key);
//   final int currentIndex;
//   final ValueChanged<int> onTap;
//   final double fixedHeight;

//   @override
// Widget build(BuildContext context) {
//   return BottomNavigationBar(
//     items: const [
//       BottomNavigationBarItem(
//         icon: Icon(Icons.home),
//         label: 'Home',
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(Icons.photo_library),
//         label: 'Shop',
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(Icons.add_shopping_cart),
//         label: 'Shopping_cart',
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(Icons.person),
//         label: 'Person',
//       ),
//     ],
//     currentIndex: currentIndex,
//     onTap: onTap,
//     selectedItemColor: Colors.red,
//     unselectedItemColor: Colors.grey,
//     );
//   }
// }

class store extends StatefulWidget {
   store({super.key});
   int _currentIndex = 0;

  @override
  State<store> createState() => _storeState();
}

 
    final images = [
 "22AW Vol白底商品圖-10.jpg",
 "Graphic pant1.jpg",
 "Hoodie Dark1.jpg",
 "Hoodie Light1.jpg",
 "MNFH-B01-01.jpg",
 "MNFH-C01-01.jpg",
 "MNFH-JP01_01.jpg",
 "MNFH-JPSP01_01.jpg",
 "MNFH-SW01_01.jpg",
 "S01.jpg",
 "T01-LogoTee-BK.jpg",
 "T01-LogoTee-WH.jpg",
 "T01V2-Pixel-BK.jpg",
 "T01V2-Pixel-WH.jpg",
 "WT01-BU.jpg",
 "WT01-WH.jpg"
    ];

    final text1 =[
  "Cutting Leather Skirt BU",
  "Graphic Leather Boot Cut BK",
  "MNFH Hoodie DKGY",
  "MNFH Hoodie LTGY",
  "MillionFlash Tote",
  "Multi-Logo Cap",
  "Coating Jean",
  "Denium Basketball",
  "Foam Printing Sweater",
  "Zipper Pocket Shirt WH"
    ];

    final text2 = [
  "MillionFlash™ 23Spring/Summer 'Cutting Leather Skirt'",
  "MillionFlash™ 22Winter 'Graphic Leather Boot Cut'",
  "MillionFlash™ 22Winter 'MNFH Hoodie'",
  "MillionFlash™ 22Winter 'MNFH Hoodie'",
  "MillionFlash™ 22Winter 'MillionFlash Tote'",
  "MillionFlash™ 22Winter 'Multi-Logo Cap'",
  "MillionFlash™ 22Winter 'Coating Jean'",
  "MillionFlash™ 22Winter 'Denium Basketball'",
  "MillionFlash™ 22Winter 'Foam Printing Sweater'",
  "MillionFlash™ 22Winter 'Zipper Pocket Shirt'"
  ];

  final text3 = [
    "定價NT\$ 1,980",
    "定價NT\$ 5,980",
    "定價NT\$ 2,980",
    "定價NT\$ 2,980",
    "定價NT\$ 1,680",
    "定價NT\$ 1,180",
    "定價NT\$ 5,480",
    "定價NT\$ 3,980",
    "定價NT\$ 2,180",
    "定價NT\$ 2,480"
  ];

  final text4 = [
    "定價NT\$ 1,188",
    "定價NT\$ 3,588",
    "定價NT\$ 1,788",
    "定價NT\$ 1,788",
    "定價NT\$ 1,080",
    "定價NT\$ 680",
    "定價NT\$ 3,280",
    "定價NT\$ 2,380",
    "定價NT\$ 1,280",
    "定價NT\$ 1,488"
  ];

class _storeState extends State<store> {
  int Page = 1;
  List<Map> salesitem = [];
  
  get index => null;
  @override
  Widget build(BuildContext context) {
    return Container();
  }


  Widget hotTitle = Container(
    margin: EdgeInsets.only(top:10.0),
    alignment: Alignment.center,
    color:Colors.transparent,
    child: Text('MillionFlash'),
  );

  Widget ?_wrapList(){
    if(salesitem.length!=0){
      List<Widget> listWidget = salesitem.map((val){
        return Container(
          child: InkWell(
            onTap:(){},
            child:Container(width: ScreenUtil().setWidth(203),
            color: Colors.white,
            padding:EdgeInsets.all(5.0),
            margin:EdgeInsets.only(bottom:3.0),
            child:Column(
              children: <Widget>[
                Image.asset('assets/${val['image']}',width: ScreenUtil().setWidth(203),),
                Text(
                   text1[index],
                   maxLines: 1,
                   overflow: TextOverflow.ellipsis,
                   style: const TextStyle(fontSize: 20),
                   textAlign: TextAlign.center,
                 ),
                 const SizedBox(height: 8.0),
                 Text(
                   text2[index],
                   maxLines: 1,
                   overflow: TextOverflow.ellipsis,
                   style: const TextStyle(fontSize: 12),
                   textAlign: TextAlign.center,
                 ),
                 Row(               
                  children:<Widget>[
                    Text(
                   text3[index],
                 ),
                 Text(
                   text4[index],
                   maxLines: 1,
                   overflow: TextOverflow.ellipsis,
                   style: TextStyle(color:Colors.black26,decoration: TextDecoration.lineThrough)
                   )]),
                 ],
               ),
            ),
        ),);
      }).toList();

      return Wrap(
        spacing:2,
        children: listWidget,
      );
    }else{
      return Text('');
    }
  }
}
