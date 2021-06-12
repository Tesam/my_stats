import 'package:flutter/material.dart';

class FeaturedSubjectCard extends StatelessWidget {

  static const bestSubjectImage = "assets/images/bestSubjectImage.png";
  static const worseSubjectImage = "assets/images/worseSubjectImage.png";

  Color bestSubjectColor = Colors.lightGreen.shade100;
  Color worseSubjectColor = Colors.red.shade200;

  String subjectName;
  bool bestSubject;

  FeaturedSubjectCard(this.subjectName, this.bestSubject);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 160.0,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 150.0,
              height: 120.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: bestSubject
                        ? AssetImage(bestSubjectImage)
                        : AssetImage(worseSubjectImage),
                    alignment: Alignment.center,
                ),
                   borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            Container(
              padding: EdgeInsets.all(4.0),
              child: Text(
                subjectName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.indigo.shade900,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ],
        ),
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: bestSubject
        ? bestSubjectColor
        : worseSubjectColor,
      ),
    );
  }
}
