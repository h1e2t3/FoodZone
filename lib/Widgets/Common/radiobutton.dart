// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../view/Screens/widget/Favourite_screen.dart';

class Radio_Button extends StatefulWidget {
  const Radio_Button({super.key});

  @override
  State<Radio_Button> createState() => _Radio_ButtonState();
}

class _Radio_ButtonState extends State<Radio_Button> {
  String radio = "";

  // String radio_str = "male";
  // String radio_str2 = "female";
  // String radio_str3 = "othres";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text(
            "Sort",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        Divider(color: Colors.grey),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Relevance",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
            ),
            RadioMenuButton(
              value: "0",
              groupValue: radio,
              onChanged: (val) {
                setState(() {
                  radio = val!;
                });
              },
              child: Text(""),
            )
          ],
        ),
        //Sort 1
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Rating:High To Low",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
            ),
            RadioMenuButton(
              value: "1",
              groupValue: radio,
              onChanged: (val) {
                setState(() {
                  radio = val!;
                  /* print(radio_str);*/
                });
              },
              child: Text(""),
            )
          ],
        ),
        //Sort 2
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Delivery Time:Low To High",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
            ),
            RadioMenuButton(
              value: "2",
              groupValue: radio,
              onChanged: (val) {
                setState(() {
                  radio = val!;
                  /* print(radio_str);*/
                });
              },
              child: Text(""),
            )
          ],
        ),
        //Sort 3
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Delivery Time & relevance",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
            ),
            RadioMenuButton(
              value: "3",
              groupValue: radio,
              onChanged: (val) {
                setState(() {
                  radio = val!;
                  /* print(radio_str);*/
                });
              },
              child: Text(""),
            )
          ],
        ),
        //Sort 4
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Cost:Low To High",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
            ),
            RadioMenuButton(
              value: "5",
              groupValue: radio,
              onChanged: (val) {
                setState(() {
                  radio = val!;
                  /* print(radio_str);*/
                });
              },
              child: Text(""),
            )
          ],
        ),
        //Sort 5
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Cost:High To Low",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
            ),
            RadioMenuButton(
              value: "6",
              groupValue: radio,
              onChanged: (val) {
                setState(() {
                  radio = val!;
                  /* print(radio_str);*/
                });
              },
              child: Text(""),
            )
          ],
        ),
        //Sort 6
        Divider(color: Colors.grey),
        // Container(alignment: Alignment.center,
        //   height: Get.height/22,
        //   width: Get.width/4,
        //   color:Colors.transparent,
        //   child: Text("Clear all",style: TextStyle(fontWeight: FontWeight.w600),),
        // )
        Container(
          height: Get.height / 22,
          width: Get.width / 4,
          child: FloatingActionButton(
            elevation: 0,
            onPressed: () {},
            backgroundColor: Colors.transparent,
            child: Text(
              "Clear all",
              style: TextStyle(color: Colors.red, fontSize: 18),
            ),
          ),
        )
      ],
    );
  }
}

class fav extends StatefulWidget {
  const fav({super.key});

  @override
  State<fav> createState() => _favState();
}

class _favState extends State<fav> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return Favourite();
              },
            ));
          },
          child: Container(
            height: 120,
            width: 170,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: Offset(2, 3),
                    blurStyle: BlurStyle.normal,
                    color: Colors.black.withOpacity(.30)),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.favorite_outline,
                  color: Colors.red,
                ),
                Text(
                  "Favourites",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        ),
        Container(
          height: 120,
          width: 170,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  spreadRadius: 2,
                  blurRadius: 8,
                  offset: Offset(2, 3),
                  blurStyle: BlurStyle.normal,
                  color: Colors.black.withOpacity(.30)),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.currency_rupee,
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Money",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 45,
                    decoration: BoxDecoration(
                        color: Colors.green.shade100,
                        borderRadius: BorderRadius.circular(16)),
                    child: Text(
                      "0",
                      style: TextStyle(color: Colors.green, fontSize: 20),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

class Quantitybutn extends StatefulWidget {
  Quantitybutn({super.key});

  @override
  State<Quantitybutn> createState() => _QuantitybutnState();
}

class _QuantitybutnState extends State<Quantitybutn> {
  String quantity = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Regular",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
            RadioMenuButton(
              value: "1",
              groupValue: quantity,
              onChanged: (val) {
                setState(() {
                  quantity = val!;
                });
              },
              child: Text(""),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Large",style: TextStyle(fontSize: 18,fontWeight:FontWeight.w500),),
            RadioMenuButton(
              value: "2",
              groupValue: quantity,
              onChanged: (val) {
                setState(() {
                  quantity = val!;
                });
              },
              child: Text(""),
            ),
          ],
        )

      ],
    );
  }
}
