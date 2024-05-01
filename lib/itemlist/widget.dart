import 'package:flutter/material.dart';
import 'package:onlineshop/itemlist/product_detail.dart';
import 'store.dart';


class shopC {
  static List<Map<String, dynamic>> items_list = [];
}

class store_items{
  static var items_list = [
    {
      "name":"Cutting Leather Skirt BU",
      "s_name":"MillionFlash™ 23Spring/Summer 'Cutting Leather Skirt'",
      "image":"assets/items/1.jpg",
      "old_price":"定價NT 1,980",
      "price":"1,188",
      "detail":"選用Vegan Leather皮革質地帶有特殊金屬光澤,裡層裡布,去除一般人造革背面給肌膚帶來的不適感,裙身剪接設計使層次加分"

    },
    {
      "name":"Graphic Leather Boot Cut BK",
      "s_name":"MillionFlash™ 22Winter 'Graphic Leather Boot Cut'",
      "image":"assets/items/2.jpg",
      "old_price":"定價NT 5,980",
      "price":"3,588",
      "detail":"微喇吧版型,剪接設計及圖形印刷,膝蓋部位折子增加活動量,帶有裡布及手工貼標",
    },
    {
      "name":"MNFH Hoodie DKGY",
      "s_name":"MillionFlash™ 22Winter 'MNFH Hoodie'",
      "image":"assets/items/3.jpg",
      "old_price":"定價NT 2,980",
      "price":"1,788",
      "detail":"厚磅混紡面料親膚保暖不易皺,面料背面增加刷毛防寒性加倍,工作室開發版型使比例更完美,無光紗電繡使圖形效果更突出",
    },
    {
      "name":"MNFH Hoodie LTGY",
      "s_name":"MillionFlash™ 22Winter 'MNFH Hoodie'",
      "image":"assets/items/4.jpg",
      "old_price":"定價NT 2,980",
      "price":"1,788",
      "detail":"厚磅混紡面料親膚保暖不易皺,面料背面增加刷毛防寒性加倍,工作室開發版型使比例更完美,無光紗電繡使圖形效果更突出",
    },
    {
      "name":"MillionFlash Tote",
      "s_name":"MillionFlash™ 22Winter 'MillionFlash Tote'",
      "image":"assets/items/5.jpg",
      "old_price":"定價NT 1,680",
      "price":"1,080",
      "detail":"利用版型的剪裁讓正面表現出流星般的俐落線條,下方LOGO字型的印刷,呈現屬於MNFH獨有的風貌",
    },
    {
      "name":"Multi-Logo Cap",
      "s_name":"MillionFlash™ 22Winter 'Multi-Logo Cap'",
      "image":"assets/items/6.jpg",
      "old_price":"定價NT 1,180",
      "price":"680",
      "detail":"採用特殊的”鎖鏈繡”技法呈現出豐富的層次感,外星人圖像及多個文字使穿戴的每一面都有不同的呈現方式",
    },
    {
      "name":"Coating Jean",
      "s_name":"MillionFlash™ 22Winter 'Coating Jean'",
      "image":"assets/items/7.jpg",
      "old_price":"定價NT 5,480",
      "price":"3,280",
      "detail":"布料表面富有塗層使整體具有仿皮的效,褲口設定成微喇叭的輪廓,提升本體的實穿性與造型感",
    },
    {
      "name":"Denium Basketball",
      "s_name":"MillionFlash™ 22Winter 'Denium Basketball'",
      "image":"assets/items/8.jpg",
      "old_price":"定價NT 3,980",
      "price":"2,380",
      "detail":"以籃球短褲為靈感出發並採用丹寧面料來呈現屬於MillionFlash™自家的風貌,運用螺紋布料來搭配整體的色彩配置及層次,前襠的位置繡上品牌logo,褲口及logo地方留下線頭,營造出牛仔褲的流蘇感",
    },
    {
      "name":"Foam Printing Sweater",
      "s_name":"MillionFlash™ 22Winter 'Foam Printing Sweater'",
      "image":"assets/items/9.jpg",
      "old_price":"定價NT 2,180",
      "price":"1,280",
      "detail":"寬鬆加上微高領的版型,袖型剪接的細節及正背面的印刷增加了本體的層次感",
    },
    {
      "name":"Zipper Pocket Shirt WH",
      "s_name":"MillionFlash™ 22Winter 'Zipper Pocket Shirt'",
      "image":"assets/items/10.jpg",
      "old_price":"定價NT 2,480",
      "price":"1,488",
      "detail":"胸前品牌Logo圖形印刷,衣身剪接設計,左右兩側隱形拉鍊口袋",
    },
    {
      "name":"Simple Logo Tee BK",
      "s_name":"MillionFlash™ 22Autumn 'Simple Logo Tee'",
      "image":"assets/items/11.jpg",
      "old_price":"定價NT 1,380",
      "price":"828",
      "detail":"胸前品牌Logo圖形印刷,領圈版型服貼不勒脖",
    },
    {
      "name":"Simple Logo Tee LT",
      "s_name":"MillionFlash™ 22Autumn 'Simple Logo Tee'",
      "image":"assets/items/12.jpg",
      "old_price":"定價NT 1,380",
      "price":"828",
      "detail":"胸前品牌Logo圖形印刷,領圈版型服貼不勒脖",
    },
    {
      "name":"Pixel Garden Tee BK",
      "s_name":"MillionFlash™ 22Autumn 'Pixel Garden Tee'",
      "image":"assets/items/13.jpg",
      "old_price":"定價NT 1,880",
      "price":"1,128",
      "detail":"胸前品牌Logo圖形印刷,背後像素花朵圖形印刷,領圈版型服貼不勒脖",
    },
    {
      "name":"Pixel Garden Tee LT",
      "s_name":"MillionFlash™ 22Autumn 'Pixel Garden Tee'",
      "image":"assets/items/14.jpg",
      "old_price":"定價NT 1,880",
      "price":"1,128",
      "detail":"胸前品牌Logo圖形印刷,背後像素花朵圖形印刷,領圈版型服貼不勒脖",
    },
    {
      "name":"MNFH Girls Tee BU",
      "s_name":"MillionFlash™ 22Autumn 'MNFH Girls Tee'",
      "image":"assets/items/15.jpg",
      "old_price":"定價NT 1,180",
      "price":"708",
      "detail":"胸前品牌標誌印刷,16支超爽棉,親膚透氣,修身版型設計,使身形更加俐落",
    },
    {
      "name":"MNFH Girls Tee LT",
      "s_name":"MillionFlash™ 22Autumn 'MNFH Girls Tee'",
      "image":"assets/items/16.jpg",
      "old_price":"定價NT 1,180",
      "price":"708",
      "detail":"胸前品牌標誌印刷,16支超爽棉,親膚透氣,修身版型設計,使身形更加俐落",
    },
  ];
}