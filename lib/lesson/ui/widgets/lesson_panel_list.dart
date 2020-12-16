import 'package:flutter/material.dart';

class LessonPanelList extends StatefulWidget {
  String lessonName;
  String lessonDescription;
  String lessonUnity;

  LessonPanelList(this.lessonName, this.lessonDescription, this.lessonUnity);
  @override
  _LessonPanelListState createState() =>
      _LessonPanelListState(this.lessonName, this.lessonDescription, this.lessonUnity);
}

class _LessonPanelListState extends State<LessonPanelList> {
  String lessonName ;
  String lessonDescription;
  String lessonUnity;

  _LessonPanelListState(this.lessonName, this.lessonDescription, this.lessonUnity);

  List<Item> _data = generateItems(15);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  _buildPanel()
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
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
      expandedValue: 'This is item number $index',
    );
  });
}
