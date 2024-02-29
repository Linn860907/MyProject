import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Shopping_cart extends StatefulWidget {
  const Shopping_cart({super.key});

  @override
  State<Shopping_cart> createState() => _Shopping_cartState();
}

class _Shopping_cartState extends State<Shopping_cart> {

  List<String> testList = [];

  @override
  Widget build(BuildContext context) {
    _show();
    return Container(
      child:Column(
        children: <Widget>[
          Container(
            height:500.0,
            child:ListView.builder(
              itemCount: testList.length,
              itemBuilder: (context,index){
                return ListTile(
                  title:Text(testList[index]),
                );
              })
          ),
          ElevatedButton(onPressed: (){
            _add();},
            child:Text('增加'),),
          ElevatedButton(onPressed: (){
            _clear();},
            child:Text('清空'),)
        ],
      )
    );
  }


void _add() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String temp = "商品";
  testList.add(temp);
  prefs.setStringList("testInfo", testList);
  _show();
  
  }

  //查詢
void _show() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  if(prefs.getStringList('testInfo')!=null){
    setState((){
      testList = prefs.getStringList('testInfo')!;
    });
  }
}


//刪除
void _clear() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //prefs.clear();
  prefs.remove('testInfo');
  setState((){
    testList.clear();
  });
}
}