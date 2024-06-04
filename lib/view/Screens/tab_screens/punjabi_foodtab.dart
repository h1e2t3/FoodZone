import 'package:flutter/material.dart';
class PunjabiFood extends StatefulWidget {
  const PunjabiFood({super.key});

  @override
  State<PunjabiFood> createState() => _PunjabiFoodState();
}

class _PunjabiFoodState extends State<PunjabiFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Text(
        "All Punjabi food Item",
        style: TextStyle(fontSize: 24, color: Colors.blue),
      ),
    );
  }
}
