import 'package:cloud_firestore/cloud_firestore.dart';

class Product{
  static const ID = 'id';
  static const PRICE = 'price';
  static const OLD_PRICE = 'old_price';
  static const S_NAME = 's_name';
  static const QUANTITY = 'quantity';
  static const SIZE ='size';
  static const FUTURED = 'futured';
  static const IMAGE_URL = 'image_url';

  late String _id;
  late double _price;
  late double _old_price;
  late int _quantity;
  late String _s_name;
  late List _size;
  late bool _futured;
  late String _image_url;

  String get id => _id;
  double get price => _price;
  double get old_price => _old_price;
  int get quantity => _quantity;
  String get s_name => _s_name;
  List get size => _size;
  bool get futured => _futured;
  String get image_url => _image_url;

  Product.fromSnapshot(DocumentSnapshot snapshot){
    Map data = snapshot.data as Map;
    _id = data[ID];
    _price = data[PRICE];
    _old_price = data[OLD_PRICE];
    _quantity = data[QUANTITY];
    _s_name = data[S_NAME];
    _size = data[SIZE];
    _futured = data[FUTURED];
    _image_url = data[IMAGE_URL];

  }
}

