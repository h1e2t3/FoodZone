import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:testdemo/view/Screens/Login%20&%20signup%20_screens/signUp_Screen.dart';

class Placed extends StatefulWidget {
  const Placed({super.key});

  @override
  State<Placed> createState() => _PlacedState();
}

class _PlacedState extends State<Placed> with SingleTickerProviderStateMixin {
  late AnimationController animat;

  @override
  void initState() {
    super.initState();
    animat = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3), // Set the duration to 4 seconds
    );
    animat.addStatusListener((status){
      if(status==AnimationStatus.completed){
        Get.to(() => const Signup());
      }
    });
    animat.forward();
  }

  @override
  void dispose() {
    animat.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: Get.height,
          width: Get.width,
          child: Lottie.network(
            "https://lottie.host/d0ab4672-b3ee-45f8-aceb-d784b4a952c7/n0gWYbp4Hk.json",
            controller: animat,
            onLoaded: (composition) {
              animat.duration = composition.duration;
            },
          ),
        ),
      ),
    );
  }
}
