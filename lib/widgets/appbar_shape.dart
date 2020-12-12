import 'package:flutter/material.dart';

class AppbarShape extends StatelessWidget {
  static const shapeHeight = 350.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: shapeHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(60.0)),
        color: Colors.blue,
      ),
    );
  }
}
