import 'package:flutter/material.dart';

class LessonCard extends StatefulWidget {
  String lessonName;
  String lessonDescription;
  String lessonUnity;

  LessonCard(this.lessonName, this.lessonDescription, this.lessonUnity);
  @override
  _LessonCardState createState() =>
      _LessonCardState(this.lessonName, this.lessonDescription, this.lessonUnity);
}

class _LessonCardState extends State<LessonCard> {
  String lessonName ;
  String lessonDescription;
  String lessonUnity;

  _LessonCardState(this.lessonName, this.lessonDescription, this.lessonUnity);

  List<Item> _data = generateItems(15);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
         // margin: EdgeInsets.all(18.0),
          /*child: Theme(
            data: Theme.of(context).copyWith(cardColor: Colors.indigo.shade100),
            child: _buildPanel(),
        ),*/
        child: _buildPanel()
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(expandedHeaderPadding: EdgeInsets.all(10.0),
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(lessonName),
              subtitle: Text(lessonDescription),
              leading: CircleAvatar(
                backgroundColor: Colors.indigo,
                radius: 20.0,
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
            );
          },
          canTapOnHeader: true,
          body: ListTile(
              title: Text(item.expandedValue),
              subtitle: Text('To delete this panel, tap the trash can icon'),
              trailing: Icon(Icons.delete),
              onTap: () {
                setState(() {
                  _data.removeWhere((currentItem) => item == currentItem);
                });
              }),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}

class Item {
  Item({
    this.expandedValue,
    this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return List.generate(numberOfItems, (int index) {
    return Item(
      headerValue: "lessonName",
      //: lessonDescription,
      expandedValue: 'This is item number $index',
    );
  });
}

/*class LessonCard extends StatelessWidget {
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
}*/
