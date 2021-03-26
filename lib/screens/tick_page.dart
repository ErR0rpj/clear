import 'package:flutter/material.dart';

class TickPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Image.asset(
          "images/tick.gif",
          height: 125.0,
          width: 125.0,
        ),
      ),
    );
  }
}
