import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index){
        return ListTile(
          leading: Icon(subjects[index].subjectIcon),
          title: Text(subjects[index].subjectTitle),
          subtitle: Text(subjects[index].lessonQuantity),
        );
      },
      childCount: subjects.length,
      ),
    );
  }
}

class Subject {
  final String subjectTitle;
  final String lessonQuantity;
  final IconData subjectIcon;

  const Subject({
    this.subjectTitle,
    this.lessonQuantity,
    this.subjectIcon
  });

}

final subjects = [
  new Subject(
    subjectTitle: 'Sistemas Operativos II',
    lessonQuantity: '12 lecciones',
    subjectIcon: Icons.access_alarm
  ),
  new Subject(
      subjectTitle: 'Álgebra Lineal',
      lessonQuantity: '10 lecciones',
      subjectIcon: Icons.access_alarm
  ),
  new Subject(
      subjectTitle: 'Bases de Datos',
      lessonQuantity: '15 lecciones',
      subjectIcon: Icons.access_alarm
  ),
  new Subject(
      subjectTitle: 'Matemática II',
      lessonQuantity: '12 lecciones',
      subjectIcon: Icons.access_alarm
  ),
  new Subject(
      subjectTitle: 'Programación I',
      lessonQuantity: '20 lecciones',
      subjectIcon: Icons.access_alarm
  ),
  new Subject(
      subjectTitle: 'Misterio Cristiano',
      lessonQuantity: '5 lecciones',
      subjectIcon: Icons.access_alarm
  ),
  new Subject(
      subjectTitle: 'Inglés I',
      lessonQuantity: '12 lecciones',
      subjectIcon: Icons.access_alarm
  ),
  new Subject(
      subjectTitle: 'Sistemas Operativos II',
      lessonQuantity: '12 lecciones',
      subjectIcon: Icons.access_alarm
  ),
  new Subject(
      subjectTitle: 'Sistemas Operativos II',
      lessonQuantity: '12 lecciones',
      subjectIcon: Icons.access_alarm
  ),
  new Subject(
      subjectTitle: 'Sistemas Operativos II',
      lessonQuantity: '12 lecciones',
      subjectIcon: Icons.access_alarm
  ),
  new Subject(
      subjectTitle: 'Sistemas Operativos II',
      lessonQuantity: '12 lecciones',
      subjectIcon: Icons.access_alarm
  ),
  new Subject(
      subjectTitle: 'Sistemas Operativos II',
      lessonQuantity: '12 lecciones',
      subjectIcon: Icons.access_alarm
  ),
  new Subject(
      subjectTitle: 'Sistemas Operativos II',
      lessonQuantity: '12 lecciones',
      subjectIcon: Icons.access_alarm
  ),
  new Subject(
      subjectTitle: 'Sistemas Operativos II',
      lessonQuantity: '12 lecciones',
      subjectIcon: Icons.access_alarm
  ),
];