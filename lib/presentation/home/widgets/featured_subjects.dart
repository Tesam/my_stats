import 'package:flutter/material.dart';
import 'package:my_stats/presentation/home/widgets/featured_subject_card.dart';

class FeaturedSubjects extends StatelessWidget {

  String bestSubjectName;
  String worseSubjectName;

  FeaturedSubjects(this.bestSubjectName, this.worseSubjectName);

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FeaturedSubjectCard(bestSubjectName, true),
        FeaturedSubjectCard(worseSubjectName,false),
      ],
    );
  }
}
