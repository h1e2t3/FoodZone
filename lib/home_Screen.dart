import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Home",style: TextStyle(color: Colors.white),),
        leading: Icon(CupertinoIcons.person,color: Colors.white,),
        actions: [Icon(CupertinoIcons.add,color: Colors.white,)],
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://w0.peakpx.com/wallpaper/356/273/HD-wallpaper-lauterbrunnen-switzerland-windows-desktop-switzerland-lauterbrunnen-thumbnail.jpg",),fit: BoxFit.cover)),
            )
          ],
        ),
      ),
    );
  }
}
