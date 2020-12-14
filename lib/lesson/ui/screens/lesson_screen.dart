import 'package:flutter/material.dart';
import 'package:my_stats/lesson/ui/widgets/lesson_appbar.dart';

class LessonScreen extends StatefulWidget {
  @override
  _LessonScreenState createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LessonAppbar("Sistemas Operativos II"),
    );
  }
}
