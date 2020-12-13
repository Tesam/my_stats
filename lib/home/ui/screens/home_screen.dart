import 'package:flutter/material.dart';
import 'package:my_stats/home/ui/widgets/featured_subjects.dart';
import 'package:my_stats/home/ui/widgets/home_appbar.dart';

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
              FeaturedSubjects("Sistemas Operativos II","Física II")
            ],
          ),
        ],
      ),
    );
  }
}

