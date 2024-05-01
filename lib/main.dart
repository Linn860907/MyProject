import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:onlineshop/firebase/home.dart';
import 'package:onlineshop/services/firebase_storage_service.dart';
import 'drawer.dart';
import 'lookbook/lookbook_21.dart';
import 'lookbook/lookbook_22.dart';
import 'lookbook/lookbook_23.dart';
import 'itemlist/store.dart';
import 'itemlist/AboutMillionFlash.dart';
import 'firebase/app.dart';
import 'firebase_options.dart';
import 'package:get/get.dart';
import 'question_papers/question_paper_controller.dart';
import '../itemlist/shopc.dart';
import 'firebase/home.dart';

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




