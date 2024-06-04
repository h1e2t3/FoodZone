import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testdemo/view/Screens/widget/profile_screen.dart';
import 'package:testdemo/view/Screens/widget/explore_list.dart';
import '../../Model/app_images.dart';
import '../../Model/container_list.dart';
import '../../Model/favourite_controller.dart';
import '../../Widgets/Common/radiobutton.dart';

class H1 extends StatefulWidget {
  const H1({Key? key}) : super(key: key);

  @override
  State<H1> createState() => _H1State();
}

class _H1State extends State<H1> {
  bool vis1 = false;
  String radio = "";
  bool rdio = false;
  bool isFavorite = false;
  String radio_str = "male";
  int container_color = -1;
  int currentindex = 0;

  final CarouselController carouselController = CarouselController();

  favourtitecontroller controller = Get.put(favourtitecontroller());

  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print("build");
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          itemCount: Appitem.foods.length, // Include header and list items
          itemBuilder: (BuildContext context, int index) {
            if (index == 1) {
              // Header widget
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: AppBar(
                      leading: const Icon(CupertinoIcons.location_solid),
                      automaticallyImplyLeading: false,
                      title: const Text(
                        "Location",
                      ),
                      actions: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Profile(),
                              ),
                            );
                          },
                          child: const Icon(
                            CupertinoIcons.person_solid,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Your other header content here...
                  Container(
                    height: Get.height / 18.5,
                    width: Get.width,
                    color: Colors.transparent,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SearchBar(
                      leading: Icon(CupertinoIcons.search),
                      hintText: "Serach",
                      controller: search,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: Get.height / 5.4,
                    width: Get.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: CarouselSlider(
                        items: OfferImg_list.map((e) => Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Image.network(
                                e["images"],
                            fit: BoxFit.cover,
                            width: double.infinity,
                              ),
                        )).toList(),
                        carouselController: carouselController,
                        options: CarouselOptions(
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentindex = index;
                            });
                          },
                          autoPlay: true,
                          scrollPhysics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                        )),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.center,
                    height: 30,
                    width: Get.width,
                    color: Colors.transparent,
                    child: Stack(
                      children: [
                        const Divider(color: Colors.grey),
                        Padding(
                          padding: const EdgeInsets.only(left: 157),
                          child: Container(
                            alignment: Alignment.center,
                            height: 20,
                            width: 80,
                            color: Colors.white,
                            child: const Text(
                              "EXPLORE",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), //Explore Divider
                  exploreList(),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.center,
                    height: 30,
                    width: Get.width,
                    color: Colors.transparent,
                    child: Stack(
                      children: [
                        const Divider(color: Colors.grey),
                        Padding(
                          padding: const EdgeInsets.only(left: 127),
                          child: Container(
                            alignment: Alignment.center,
                            height: 20,
                            width: 140,
                            color: Colors.white,
                            child: const Text(
                              "ALL RESTAURANTS",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), //All Restaurant divider
                  const SizedBox(height: 25),
                ],
              );
            }
            else {
              // List items
              final int foodIndex = index-1;
              return Container(
                padding: const EdgeInsets.all(10),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Container(
                      alignment: Alignment.bottomCenter,
                      height: Get.height / 2.8,
                      width: Get.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: const Offset(2, 3),
                            blurStyle: BlurStyle.normal,
                            color: Colors.black.withOpacity(.30),
                          )
                        ],
                        image: DecorationImage(
                          image:
                              NetworkImage(controller.mainimg_list[foodIndex]),
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
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        Appitem.foods[foodIndex].name,
                                        style: const TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        padding: const EdgeInsets.all(3),
                                        height: 25,
                                        width: 42,
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                                Appitem.foods[foodIndex].rating,
                                                style: const TextStyle(
                                                    color: Colors.white)),
                                            const Icon(
                                              Icons.star,
                                              color: Colors.white,
                                              size: 13,
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    Appitem.foods[foodIndex].vdrnvg,
                                    style: const TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const Text("Food Prize",
                                      style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w500))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                              onTap: () {
                                if (controller.foodlist.contains(controller
                                    .mainimg_list[index]
                                    .toString())) {
                                  controller.removetofavourite(controller
                                      .mainimg_list[index]
                                      .toString());
                                }
                                else {
                                  controller.addtofavourite(controller
                                      .mainimg_list[index]
                                      .toString());
                                }
                              },
                              child: Obx(
                                () => Icon(
                                  isFavorite
                                      ? CupertinoIcons.heart
                                      : CupertinoIcons.suit_heart_fill,
                                  color: controller.foodlist.contains(controller
                                          .mainimg_list[index]
                                          .toString())
                                      ? Colors.red
                                      : Colors.white,
                                ),
                              )),
                          SizedBox(width: Get.width / 50),
                          const Icon(
                            CupertinoIcons.ellipsis_vertical,
                            color: Colors.white,
                          ),
                        ],
                      ),//Favourite icons finish
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
