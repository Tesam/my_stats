import 'package:flutter/material.dart';

class HomeAppbar extends StatelessWidget {
  static const greeting = "Hola!";
  String userName;
  String userImage;

  HomeAppbar(this.userName, this.userImage);

  Widget _buildGoalsContainer(Goals goals){
    return new Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            goals.goalPercent,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            goals.goalTitle,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 16.0,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      width: 80.0,
      height: 80.0,
    );
  }

  @override
  Widget build(BuildContext context) {

    return SliverAppBar(
      title: Text.rich(
        TextSpan(
          text: 'Hola!', // default text style
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          children: <TextSpan>[
            TextSpan(
              text: ' $userName ',
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: goals.map(_buildGoalsContainer).toList(),
            ),
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(48.0)),
      ),
      actions: [
        Container(
          margin: EdgeInsets.only(right: 16.0),
          child: CircleAvatar(
            radius: 18,
            backgroundColor: Colors.black12,
            child: CircleAvatar(
              radius: 16,
              backgroundImage: AssetImage(userImage),
            ),
          ),
        ),
      ],
      expandedHeight: 200.0,
      pinned: true,
      floating: true,
      snap: true,
    );
  }
}

class Goals {
  final String goalPercent;
  final String goalTitle;

  const Goals({
    this.goalPercent,
    this.goalTitle,
  });

}

final goals = [
  new Goals(goalPercent: '10%', goalTitle: 'Completo'),
  new Goals(goalPercent: '30%', goalTitle: 'Pendiente'),
  new Goals(goalPercent: '10%', goalTitle: 'En trámite')
];
