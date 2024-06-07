import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataList {
  final String name;
  final String email;
  final String numbr;

  DataList({required this.name, required this.email, required this.numbr});
}


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

