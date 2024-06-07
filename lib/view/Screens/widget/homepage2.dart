import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Model/container_list.dart';
import '../../../Model/favourite_controller.dart';
import '../tab_screens/All_foodtab.dart';
import '../tab_screens/Nonved_foodtab.dart';
import '../tab_screens/jain_foodtab.dart';
import '../tab_screens/punjabi_foodtab.dart';

import 'profile_screen.dart';
import 'explore_list.dart';

class Home11 extends StatefulWidget {
  @override
  State<Home11> createState() => _Home11State();
}

class _Home11State extends State<Home11> with SingleTickerProviderStateMixin {
  int currentindex = 0;
  bool isFavorite = false;
  List<Widget> Tabscreens = [
    Allfood(),
    JainFood(),
    PunjabiFood(),
    NonvegFood()
  ];

  final CarouselController carouselController = CarouselController();
  favourtitecontroller controller = Get.put(favourtitecontroller());
  TextEditingController search = TextEditingController();
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: Tabscreens.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: AppBar(
                  leading: const Icon(CupertinoIcons.location_solid),
                  automaticallyImplyLeading: false,
                  title: const Text("Location"),
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
              SizedBox(height: Get.height / 80),
              Container(
                height: Get.height / 18.5,
                width: Get.width,
                color: Colors.transparent,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SearchBar(
                  leading: Icon(CupertinoIcons.search),
                  hintText: "Search",
                  controller: search,
                ),
              ),
              SizedBox(height: Get.height / 40),
              Container(
                height: Get.height / 5.4,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: CarouselSlider(
                  items: OfferImg_list.map((e) => Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            e["images"],
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
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
                  ),
                ),
              ),
              SizedBox(height: Get.height / 40),
              Stack(
                children: [
                  Divider(
                    color: Colors.grey,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 20,
                    width: 80,
                    color: Colors.white,
                    child: const Text(
                      "EXPLORE",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Get.height / 40),
              exploreList(),
              SizedBox(height: Get.height / 40),
              PreferredSize(
                preferredSize: Size(200, 200),
                child: TabBar(
                  controller: _tabController,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.red),
                  ),
                  tabs: [
                    Tab(text: "All"),
                    Tab(text: "Jain"),
                    Tab(text: "Punjabi"),
                    Tab(text: "Non-veg"),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height *3.8,
                child: TabBarView(
                  controller: _tabController,
                  children: Tabscreens,
                ),
              ),
              // Stack(
              //   children: [
              //     const Divider(color: Colors.grey),
              //     Padding(
              //       padding: const EdgeInsets.only(left: 127),
              //       child: Container(
              //         alignment: Alignment.center,
              //         height: 20,
              //         width: 140,
              //         color: Colors.white,
              //         child: const Text(
              //           "ALL RESTAURANTS",
              //           style: TextStyle(color: Colors.black),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              SizedBox(height: Get.height / 40),
            ],
          ),
        ),
      ),
    );
  }
}
