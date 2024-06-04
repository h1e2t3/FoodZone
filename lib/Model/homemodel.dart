import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataList {
  final String name;
  final String email;
  final String numbr;

  DataList({required this.name, required this.email, required this.numbr});
}

List<DataList> datalist = [
  DataList(name: "Het", email: "hetk266@gmail.com", numbr: "10"),
  DataList(name: "raju", email: "raju6@gmail.com", numbr: "50"),
  DataList(name: "kansra", email: "kansara20@gmail.com", numbr: "80"),
  DataList(name: "hk", email: "hk@gmail.com", numbr: "60"),
  DataList(name: "Het", email: "hetk266@gmail.com", numbr: "10"),
  DataList(name: "raju", email: "raju6@gmail.com", numbr: "50"),
  DataList(name: "kansra", email: "kansara20@gmail.com", numbr: "80"),
  DataList(name: "hk", email: "hk@gmail.com", numbr: "60"),
  DataList(name: "Het", email: "hetk266@gmail.com", numbr: "10"),
  DataList(name: "raju", email: "raju6@gmail.com", numbr: "50"),
  DataList(name: "kansra", email: "kansara20@gmail.com", numbr: "80"),
  DataList(name: "hk", email: "hk@gmail.com", numbr: "60"),
];


class Fooditem{
  static final foodlist = [
    FoodList(Data:"Your orders",
        suffix:const Icon(Icons.chevron_right_outlined),
        icons:const Icon(Icons.backpack_outlined)),
    FoodList(Data:"Favorite orders",
        suffix: const Icon(Icons.chevron_right_outlined),
        icons: const Icon(Icons.backpack_outlined)),
    FoodList(Data:"Address book",
        suffix: const Icon(Icons.chevron_right_outlined),
        icons: const Icon(Icons.backpack_outlined)),
    FoodList(Data:"Hidden Restaurants",
        suffix: const Icon(Icons.chevron_right_outlined),
        icons: const Icon(Icons.backpack_outlined)),
    FoodList(Data:"Online ordering help",
        suffix: const Icon(Icons.chevron_right_outlined),
        icons: const Icon(Icons.backpack_outlined)),
  ];
}

class FoodList {
  final String Data;
  final Icon? icons;
  final Icon?suffix;

  FoodList({
    required this.Data,
    required this.icons,
    required this.suffix,
  });
}

