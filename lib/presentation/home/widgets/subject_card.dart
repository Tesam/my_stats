import 'package:flutter/material.dart';

class SubjectCard extends StatelessWidget {
  String subjectName;
  String subjectDescription;

  SubjectCard(this.subjectName, this.subjectDescription);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      margin: EdgeInsets.only(left:8.0, right: 8.0, top: 8.0),
      child: Card(
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(8.0),
              child:
              CircleAvatar(
                backgroundColor: Colors.indigo,
                radius: 30.0,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    subjectName,
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    subjectDescription,
                    style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.grey
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        elevation: 1.5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
