import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../../../Model/favourite_controller.dart';
import '../../../Widgets/Common/radiobutton.dart';
import '../Animeted screens/order_complete_animation.dart';

class Fooddetl extends StatefulWidget {
  final int selectedIndex;

  Fooddetl({
    super.key,
    required this.selectedIndex,
  });

  @override
  State<Fooddetl> createState() => _FooddetlState();
}

class _FooddetlState extends State<Fooddetl> {
  bool isFavorite = false;
  bool h = true;
  TextEditingController edit = TextEditingController();

  favourtitecontroller controller = Get.put(favourtitecontroller());
  int total = 1;
  int selectedIndex = 0;

  void initState() {
    super.initState();
    selectedIndex = widget.selectedIndex;
  }

  void _incrementTotal() {
    setState(() {
      total += 1;
    });
  }

  void _decrementTotal() {
    setState(() {
      if (total > 1) {
        total -= 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: Get.height / 3,
              width: Get.width,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Shadow color
                    spreadRadius: 5, // Spread radius
                    blurRadius: 7, // Blur radius
                    offset: const Offset(0, 3), // Offset
                  ),
                ],
                image: DecorationImage(
                  image: NetworkImage(
                    controller.mainimg_list[widget.selectedIndex].toString(),
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  height: Get.height / 1.4,
                  width: Get.width,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Shadow color
                        spreadRadius: 5, // Spread radius
                        blurRadius: 7, // Blur radius
                        offset: const Offset(0, 3), // Offset
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            controller.MainimgNm_list[widget.selectedIndex]
                                .toString(),
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            "₹ ${controller.MainPrice_list[widget.selectedIndex].toString()}/-",
                            style: const TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          InkWell(
                              onTap: () {
                                if (controller.foodlist.contains(controller
                                    .mainimg_list[widget.selectedIndex]
                                    .toString())) {
                                  controller.removetofavourite(controller
                                      .mainimg_list[widget.selectedIndex]
                                      .toString());
                                } else {
                                  controller.addtofavourite(controller
                                      .mainimg_list[widget.selectedIndex]
                                      .toString());
                                }
                              },
                              child: Obx(
                                () => Icon(
                                  isFavorite
                                      ? CupertinoIcons.heart
                                      : CupertinoIcons.suit_heart_fill,
                                  color: controller.foodlist.contains(controller
                                          .mainimg_list[widget.selectedIndex]
                                          .toString())
                                      ? Colors.red
                                      : Colors.grey,
                                ),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: Get.height / 50,
                      ),
                      Container(
                        alignment: FractionalOffset.topLeft,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        height: Get.height / 4.5,
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3), // Offset
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Quantity",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: Get.height / 65,
                            ),
                            const Text(
                              "Required.Select any 1 Option",
                              style: TextStyle(fontSize: 16),
                            ),
                            Quantitybutn(),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Get.height / 50,
                      ),
                      Container(
                        height: Get.height / 4.5,
                        width: Get.width,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3), // Offset
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Add acooking request (optional)",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            h
                                ? TextField(
                                    controller: edit,
                                    decoration: const InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent)),
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent)),
                                        hintText: "About food"),
                                  )
                                : Container(
                                    alignment: Alignment.center,
                                    height: Get.height / 20,
                                    width: Get.width / 5,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: const Offset(0, 3), // Offset
                                        ),
                                      ],
                                      border: Border.all(color: Colors.red),
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                    child: Text(controller
                                        .testlist[selectedIndex]
                                        .toString()),
                                  ),
                            Expanded(
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: controller.testlist.length,
                                scrollDirection: Axis.horizontal,
                                physics: ScrollPhysics(),
                                itemBuilder: (BuildContext context, int index) {
                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        h = !h;
                                        selectedIndex = index;
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 35),
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: Get.height / 17,
                                        width: Get.width / 4,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.2),
                                              spreadRadius: 5,
                                              blurRadius: 7,
                                              offset:
                                                  const Offset(0, 3), // Offset
                                            ),
                                          ],
                                          border: Border.all(color: Colors.red),
                                          borderRadius:
                                              BorderRadius.circular(14),
                                        ),
                                        child: Text(controller.testlist[index]
                                            .toString()),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Get.height / 50,
                      ),
                      Container(
                        height: Get.height / 9,
                        width: Get.width,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3), // Offset
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: Get.height / 14,
                              width: Get.width / 3,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.red),
                                borderRadius: BorderRadius.circular(14),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: const Offset(0, 3), // Offset
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CupertinoButton(
                                    child: const Icon(CupertinoIcons.minus),
                                    onPressed: _decrementTotal,
                                  ),
                                  Text(
                                    "$total",
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                  CupertinoButton(
                                      child: const Icon(CupertinoIcons.add),
                                      onPressed: _incrementTotal),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(Ordercomp(
                                  slectTotal: controller.MainPrice_list[widget.selectedIndex] * total,
                                  selectIndex: selectedIndex,
                                ),
                                );
                                // Get.to(Ordercomp());
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: Get.height / 14,
                                width: Get.width / 2.2,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.red),
                                  borderRadius: BorderRadius.circular(14),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: const Offset(0, 3), // Offset
                                    ),
                                  ],
                                ),
                                child: Text(
                                  "Add Item  ₹ ${controller.MainPrice_list[widget.selectedIndex] * total}/-",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
