import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:testdemo/Model/container_list.dart';

import '../../../Model/favourite_controller.dart';

class Favourite extends StatelessWidget {
   Favourite({super.key});
  favourtitecontroller controller = Get.put(favourtitecontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: controller.foodlist.isEmpty
            ? Center(
          child: Text(
            "You Have Not Added Favourite List",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        )
            : ListView.builder(
          shrinkWrap: true,
          itemCount: controller.foodlist.length,
          itemBuilder: (BuildContext context, int index) {
            return Obx(() => Padding(
              padding: const EdgeInsets.symmetric(vertical:10),
              child: Container(
                height: Get.height / 4,
                width: Get.width,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: NetworkImage(controller.foodlist[index]),
                        fit: BoxFit.cover)),
              ),
            ));
          },
        ),
      ),
    );;
  }
}

