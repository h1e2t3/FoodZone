import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Model/favourite_controller.dart';

class Ordercomp extends StatefulWidget {
  final int slectTotal;
  final int selectIndex;
  const Ordercomp({
    super.key,
    required this.slectTotal,
    required this.selectIndex,
  });

  @override
  State<Ordercomp> createState() => _OrdercompState();
}

class _OrdercompState extends State<Ordercomp>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  int slectTotal = 1;
  int selectIndex = 0;
  favourtitecontroller controller = Get.put(favourtitecontroller());
  @override
  void initState() {
    super.initState();
    slectTotal = widget.slectTotal;
    selectIndex = widget.selectIndex;
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(controller
                        .mainimg_list[widget.selectIndex]
                        .toString())),
              ),
            ),
            FadeTransition(
              opacity: _animation,
              child: ScaleTransition(
                scale: _animation,
                child: Text(
                  'Order Placed Successfully...',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Text(
              "Total: $slectTotal",
              style: TextStyle(fontSize: 18),
            ), //*${controller.MainPrice_list[widget.slectTotal].toString()}
          ],
        ),
      ),
    );
  }
}
