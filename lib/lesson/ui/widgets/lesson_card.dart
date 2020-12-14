import 'package:flutter/material.dart';

class LessonCard extends StatelessWidget {
  String lessonName;
  String lessonDescription;
  String lessonUnity;

  LessonCard(this.lessonName, this.lessonDescription, this.lessonUnity);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      margin: EdgeInsets.only(left:16.0, right: 16.0, bottom: 8.0),
      child: Card(
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(8.0),
              child:
              CircleAvatar(
                backgroundColor: Colors.indigo,
                radius: 30.0,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    lessonUnity,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    lessonName,
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    lessonDescription,
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
        color: Colors.indigo.shade100,
      ),
    );
  }
}
