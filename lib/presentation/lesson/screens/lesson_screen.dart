import 'package:flutter/material.dart';
import 'package:my_stats/presentation/lesson/widgets/lesson_panel_list.dart';

class LessonScreen extends StatefulWidget {
  String subjectName;

  LessonScreen(this.subjectName);
  @override
  _LessonScreenState createState() => _LessonScreenState(subjectName);
}

class _LessonScreenState extends State<LessonScreen> {
  String subjectName;

  _LessonScreenState(this.subjectName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(subjectName),
        backgroundColor: Colors.indigo,
        centerTitle: true,
        toolbarHeight: 100.0,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: LessonPanelList("Funciones", "3 Objetivos","U1"),

    );
  }
}
