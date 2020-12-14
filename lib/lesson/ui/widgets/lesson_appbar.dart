import 'package:flutter/material.dart';
import 'package:my_stats/widgets/appbar_shape.dart';

class LessonAppbar extends StatelessWidget {
  String subjectName;

  LessonAppbar(this.subjectName);

  @override
  Widget build(BuildContext context) {
    final AppbarContent =
    Container(
      width: 300.0,
      height: 200.0,
      //alignment: Alignment.topLeft,
      //color: Colors.blue,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/lessons_background.png"),
          //alignment: Alignment.bottomCenter,
        ),
      ),
    );

    final aaa = Container(
      alignment: Alignment.topCenter,
      margin: EdgeInsets.only(top: 45.0),
      child: Column(
        children: [
          Container(
            child: Text(
              subjectName,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  color: Colors.indigo.shade900
              ),
            ),
          ),
          AppbarContent,
        ],
      ),
    );

    return Stack(
      //alignment: Alignment.bottomCenter,
      children: [
        AppbarShape(Color(0xFFF9A826)),
        aaa,
      ],
    );
  }
}
