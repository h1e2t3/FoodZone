import 'package:flutter/material.dart';


class Fechrs1 extends StatelessWidget {
  final String Data;
  final String? offer;
  final Icon? icons;
  final Color? color;
  final Icon suffix;
  final VoidCallback? callback;

  const Fechrs1(
      {super.key,
      required this.Data,
      required this.icons,
      this.color = Colors.transparent,
      required this.suffix,
      this.offer,
      this.callback});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            elevation: MaterialStatePropertyAll(0),
            backgroundColor: MaterialStatePropertyAll(color)),
        onPressed: () {
          callback!();
        },
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                icons!,
                Text(Data),
                SizedBox(
                  width: 150,
                ),
                suffix,
              ],
            ),
            Divider(

              color: Colors.grey,
            )
          ],
        ));
  }
}
