import 'package:flutter/material.dart';
import 'package:my_stats/home/ui/widgets/featured_subjects.dart';
import 'package:my_stats/home/ui/widgets/home_appbar.dart';
import 'package:my_stats/home/ui/widgets/subject_card.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            alignment: const Alignment(2.5, 2.5),
            children: [
              HomeAppbar("Bryan Pirille","assets/images/person.jpg"),
              FeaturedSubjects("Sistemas Operativos II","Física II"),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 120.0, left: 20.0),
            child: Text(
              "Materias en curso",
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.indigo.shade900
              ),
            ),
          ),
          SubjectCard("Sistemas Operativos II","12 Lecciones"),
          SubjectCard("Sistemas Operativos II","12 Lecciones"),
          SubjectCard("Sistemas Operativos II","12 Lecciones"),
          SubjectCard("Sistemas Operativos II","12 Lecciones"),
          SubjectCard("Sistemas Operativos II","12 Lecciones"),
          SubjectCard("Sistemas Operativos II","12 Lecciones"),
          SubjectCard("Sistemas Operativos II","12 Lecciones"),
        ],
      ),
    );
  }
}

