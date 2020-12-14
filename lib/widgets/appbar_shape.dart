import 'package:flutter/material.dart';

class AppbarShape extends StatelessWidget {
  static const shapeHeight = 300.0;
  Color color;

  AppbarShape(this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: shapeHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(60.0)),
        color: color,
      ),
    );
  }
}
