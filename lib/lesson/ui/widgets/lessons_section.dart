import 'package:flutter/material.dart';
import 'package:my_stats/lesson/ui/widgets/lesson_card.dart';

class LessonsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   /* return Container(
      height: 200.0,
      padding: EdgeInsets.only(top: 30.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(60.0)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 4,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: ListView(
        padding: EdgeInsets.only(top: 10.0),
        children: [
          LessonCard("Funciones", "Descripción de fun","U1"),
         /* LessonCard("Funciones", "Descripción de fun","U1"),
          LessonCard("Funciones", "Descripción de fun","U1"),
          LessonCard("Funciones", "Descripción de fun","U1"),
          LessonCard("Funciones", "Descripción de fun","U1"),
          LessonCard("Funciones", "Descripción de fun","U1"),
          LessonCard("Funciones", "Descripción de fun","U1"),
          LessonCard("Funciones", "Descripción de fun","U1"),*/
        ],
      ),
    );*/
    return ListView(
        padding: EdgeInsets.only(top: 10.0),
        children: [
          LessonCard("Funciones", "Descripción de fun","U1"),
          /* LessonCard("Funciones", "Descripción de fun","U1"),
          LessonCard("Funciones", "Descripción de fun","U1"),
          LessonCard("Funciones", "Descripción de fun","U1"),
          LessonCard("Funciones", "Descripción de fun","U1"),
          LessonCard("Funciones", "Descripción de fun","U1"),
          LessonCard("Funciones", "Descripción de fun","U1"),
          LessonCard("Funciones", "Descripción de fun","U1"),*/
        ],
    );
  }
}
