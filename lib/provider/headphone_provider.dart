import 'package:buy_headphones_provider/main.dart';
import 'package:flutter/material.dart';

import '../models/headphone.dart';

class HeadphoneProvider extends ChangeNotifier {
  final List<Headphone> _headphones = [
    Headphone(
        name: 'Sony WH-100XM5',
        imgUrl:
            'https://m.media-amazon.com/images/I/61+btxzpfDL._AC_UY218_.jpg',
        brand: 'Sony',
        price: '29,990'),
    Headphone(
        name: 'Sennheiser Momentum 4',
        imgUrl:
            'https://m.media-amazon.com/images/I/81YRykk5UML._AC_UY218_.jpg',
        brand: 'Sennheiser',
        price: '34,990'),
    Headphone(
        name: 'Bose Quietcomfort 45',
        imgUrl:
            'https://m.media-amazon.com/images/I/51JbsHSktkL._AC_UY218_.jpg',
        brand: 'Bose',
        price: '23,899'),
    Headphone(
        name: 'JBL Tune 760NC',
        imgUrl:
            'https://m.media-amazon.com/images/I/61HXCeozUjL._AC_UY218_.jpg',
        brand: 'JBL',
        price: '5,497'),
    Headphone(
        name: 'HiFiMAN HE400SE',
        imgUrl:
            'https://m.media-amazon.com/images/I/51K-mbDk3HL._AC_UY218_.jpg',
        brand: 'HiFiMAN',
        price: '11,999'),
    Headphone(
        name: 'beyerdynamic DT 990 PRO',
        imgUrl:
            'https://m.media-amazon.com/images/I/71TahDFRpPL._AC_UY218_.jpg',
        brand: 'beyerdynamic',
        price: '11,990'),
  ];

  // retrieve all headphones
  List<Headphone> get headphones => _headphones;

  // Cart List
  final List<Headphone> _cartList = [];

  // retrieve headphone list in cart
  List<Headphone> get cartList => _cartList;

  // adding or removing headphones to cart
  void addToCart(Headphone headphone) {
    cartList.add(headphone);

    notifyListeners();
  }

  void removeFromCart(Headphone headphone) {
    cartList.remove(headphone);

    notifyListeners();
  }
}
