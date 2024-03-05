import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'drawer.dart';


class lookBook_22 extends StatelessWidget {
  const lookBook_22({super.key});
 
 @override
   Widget build(BuildContext context) {
      return Scaffold(
      drawer: const MyDrawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
      title: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
          image:AssetImage('assets/IMG_8162.jpeg'),
          fit:BoxFit.scaleDown),
          ),
            height: 80,
            ),
        elevation: 0.0,
        automaticallyImplyLeading: true,
           actions: <Widget>[
                 IconButton(
                               icon: const Icon(Icons.person),
            tooltip: 'person',
            onPressed: (){
              Navigator.push(context,
              MaterialPageRoute<ProfileScreen>(
                builder: (context) => ProfileScreen(
                  appBar:AppBar(
                    title:const Text('User Profile'),),
                    actions: [
                      SignedOutAction((context){
                        Navigator.of(context).pop();
                      })
                    ],)
                ));
            })
              ],
            ),
        body:  const lookbook_twentytwo(),
      );
   }
}


class lookbook_twentytwo extends StatelessWidget {
  const lookbook_twentytwo({super.key});

  @override
  Widget build(BuildContext context) {
    final images = [
       'WT01-WH.jpg',
       'S01.jpg',
       'T01V2.jpg',
       'T01&T01V2 front.jpg',
       'T01V2-BK02.jpg',
       'T01&T01V2BK-Front 02.jpg',
       'WT01-BU02.jpg',
       '002 look-16.jpg',
       '002 look-02.jpg',
       '002 look-04.jpg'
    ];

    return MaterialApp(
        home: Scaffold(
            body: ListView(
              children: List.generate(images.length, (index) {
                return Column(
                  children: <Widget>[
                    Container(
                      // height: 300,
                      child: Image(
                        image: AssetImage('assets/${images[index]}'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                );
              }),
            )));
  }
}