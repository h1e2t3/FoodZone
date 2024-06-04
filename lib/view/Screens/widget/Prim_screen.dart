import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testdemo/view/Screens/widget/profile_screen.dart';

class Prim extends StatefulWidget {
  const Prim({super.key});

  @override
  State<Prim> createState() => _PrimState();
}

class _PrimState extends State<Prim> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                 Navigator.push(context,MaterialPageRoute(builder: (context) =>Profile()));
                  },
                  child: Icon(
                    Icons.arrow_back_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: Text(
                    "Get Membership",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
