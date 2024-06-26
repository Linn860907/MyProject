import 'package:get/get.dart';
import 'package:onlineshop/services/firebase_storage_service.dart';

class QuestionPaperController extends GetxController {
  final allPaperImages = <String>[].obs;

  @override
  void onReady() {
    getAllPapers();
    super.onReady();
  }


  Future<void> getAllPapers() async {
    List<String> imgName = ['002 look-02','002 look-04','002 look-16'];
    try {
      for(var img in imgName){
        final imgUrl = await Get.find<FirebaseStorageService>().getImage(img);
        allPaperImages.add(imgUrl!);
      }

    } catch (e) {
      print(e);
    }
  }
}