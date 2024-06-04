import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../Model/app_images.dart';

Widget exploreList() {
  return SizedBox(
    height: 280,
    width: Get.width,
    child: const Column(
      children: [
        ExploreCard(),
        ExploreCard(),
      ],
    ),
  );
}

class ExploreCard extends StatelessWidget {
  const ExploreCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: AppiMages.items.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: const Offset(2, 3),
                            blurStyle: BlurStyle.normal,
                            color: Colors.black.withOpacity(.30),
                          )
                        ],
                        borderRadius: BorderRadius.circular(200),
                        color: Colors.grey,
                        image: DecorationImage(
                          image: NetworkImage(
                            AppiMages.items[index].img,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  AppiMages.items[index].name,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
