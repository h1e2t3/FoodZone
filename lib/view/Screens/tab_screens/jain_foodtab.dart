import 'package:flutter/material.dart';
class JainFood extends StatefulWidget {
  const JainFood({super.key});

  @override
  State<JainFood> createState() => _JainFoodState();
}

class _JainFoodState extends State<JainFood> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text(
        "All Jain Food Item",
        style: TextStyle(fontSize: 24, color: Colors.blue),
      ),
    );
  }
}
