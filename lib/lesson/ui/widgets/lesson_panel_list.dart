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
          body: goals,
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }

  final goals = Column(
    children: [
      ListTile(
        title: Text(
          'Darse cuenta de la importancia de la relación del ingeniero con la ciencia y la tecnología',
          style: TextStyle(
            fontSize: 14.0,
          ),
        ),
        subtitle: Container(
          alignment: Alignment.centerLeft,
          child: Chip(
            backgroundColor: Colors.lightGreen.shade300,
            label: Text('Procedimental'),
          ),
        ),
        trailing: Icon(
          Icons.done_all,
          color: Colors.green,
          size: 30.0,
        ),
      ),
      ListTile(
        title: Text(
          'Darse cuenta de la importancia de la relación del ingeniero con la ciencia y la tecnología',
          style: TextStyle(
            fontSize: 14.0,
          ),
        ),
        subtitle: Container(
          alignment: Alignment.centerLeft,
          child: Chip(backgroundColor: Colors.lightBlue.shade200,
            label: Text('Conceptual'),
          ),
        ),
        trailing: Icon(
          Icons.schedule,
          color: Colors.red,
          size: 30.0,),
      ),
      ListTile(
        title: Text(
          'Darse cuenta de la importancia de la relación del ingeniero con la ciencia y la tecnología',
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.grey
          ),
        ),
        subtitle:Container(
          alignment: Alignment.centerLeft,
          child: Chip(
            backgroundColor: Colors.grey.shade100,
            label: Text(
              'Actitudinal',
               style: TextStyle(
                 color: Colors.grey
               ),
            ),
          ),
        ),
        trailing: Icon(
          Icons.warning,
          size: 30.0,
          ),
      ),
    ],
  );
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
