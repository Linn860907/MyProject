import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:onlineshop/firebase/home.dart';
import 'package:onlineshop/services/firebase_storage_service.dart';
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
import 'firebase/app.dart';
import 'firebase_options.dart';
import 'package:get/get.dart';
import 'question_papers/question_paper_controller.dart';

const clientId = 'YOUR_CLIENT_ID';
void main() async {
WidgetsFlutterBinding.ensureInitialized();  // 初始化 Flutter 應用程序綁定
await Firebase.initializeApp(  // 初始化 Firebase 應用
    options: DefaultFirebaseOptions.currentPlatform,  // 使用默認 Firebase 選項
);
Get.put(FirebaseStorageService());
Get.put(QuestionPaperController());

runApp(const MyApp());  // 運行我們的 Flutter 應用程序
}

// class MyApp extends StatelessWidget {
  // const MyApp({super.key});
// 
  // @override
  // Widget build(BuildContext context) {
    // return MaterialApp(
      // theme: ThemeData(
      // primaryColor: Colors.blue,  // 将此颜色与您期望的 selected 颜色一致
// ),
      // initialRoute: '/',
      // routes: {
        // '/': (context) =>  const home_page(),
        // '/currency': (context) => const Currency(),
        // '/language': (context) => const language(),
        // '/store': (context) =>  store(),
        // '/lookbook_21': (context) => const lookBook_21(),
        // '/lookbook_22': (context) => const lookBook_22(),
        // '/lookbook_23': (context) => const lookBook_23(),
        // '/concept project': (context) => const ConceptProject(),
        // '/about millionflash': (context) => const AboutMillionFlash(),
        // '/drawer': (context) => const MyDrawer(),
        // '/person_1': (context) => const person_1(),
        // '/shopping_cart': (context) => const Shopping_cart(),
        // '/category_page': (context) => const CategoryPage(),
      // },
    // );
  // }
// }
// 
