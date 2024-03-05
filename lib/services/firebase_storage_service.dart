import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';

Reference get firebaseStorage => FirebaseStorage.instance.ref();


class FirebaseStorageService extends GetxService {
Future<String?> getImage(String? imgName) async {
    if (imgName == null) {
      return null;
    }
    try { 
    var urlRef = firebaseStorage
          .child("mfonlineshop") //folder name
          .child('imgName.toLowerCase().jpg');
      var imgUrl = await urlRef.getDownloadURL(); //images name
    } catch (e) {
      return null;
    }
  }
}