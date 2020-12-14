import 'package:flutter/material.dart';
import 'package:my_stats/lesson/ui/widgets/lesson_appbar.dart';
import 'package:my_stats/lesson/ui/widgets/lessons_section.dart';

class LessonScreen extends StatefulWidget {
  @override
  _LessonScreenState createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          LessonAppbar("Sistemas Operativos II"),
          LessonsSection(),
        ],
      ),
    );
  }
}
