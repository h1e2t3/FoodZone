import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Model/favourite_controller.dart';
import '../widget/In _food_Screen.dart';

class Allfood extends StatefulWidget {
  const Allfood({super.key});

  @override
  State<Allfood> createState() => _AllfoodState();
}

class _AllfoodState extends State<Allfood> {
  int currentindex = 0;
  bool isFavorite = false;
  favourtitecontroller controller = Get.put(favourtitecontroller());

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: controller.mainimg_list.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Stack(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Fooddetl(selectedIndex: index),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.bottomCenter,
                  height: Get.height / 2.8,
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey,
                    image: DecorationImage(
                      image: NetworkImage(
                          controller.mainimg_list[index].toString()),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        height: Get.height / 7.8,
                        width: Get.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    controller.MainimgNm_list[index].toString(),
                                    style: const TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 4),
                                    height: Get.height / 24,
                                    width: Get.width / 7.4,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          controller.MainRating_list[index]
                                              .toString(),
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                        const Icon(
                                          CupertinoIcons.star_fill,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                controller.MainVeg_list[index].toString(),
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "₹ ${controller.MainPrice_list[index].toString()}",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            if (controller.foodlist.contains(
                                controller.mainimg_list[index].toString())) {
                              controller.removetofavourite(
                                  controller.mainimg_list[index].toString());
                            } else {
                              controller.addtofavourite(
                                  controller.mainimg_list[index].toString());
                            }
                          },
                          child: Obx(
                                () => Icon(
                              controller.foodlist.contains(
                                  controller.mainimg_list[index].toString())
                                  ? CupertinoIcons.suit_heart_fill
                                  : CupertinoIcons.heart,
                              color: controller.foodlist.contains(
                                  controller.mainimg_list[index].toString())
                                  ? Colors.red
                                  : Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: Get.width / 50),
                        const Icon(
                          CupertinoIcons.ellipsis_vertical,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
