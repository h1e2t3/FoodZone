import 'package:flutter/material.dart';
class NonvegFood extends StatefulWidget {
  const NonvegFood({super.key});

  @override
  State<NonvegFood> createState() => _NonvegFoodState();
}

class _NonvegFoodState extends State<NonvegFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("All Punjabi food Item",
        style: TextStyle(fontSize: 24, color: Colors.blue),),
    );
  }
}