import 'package:flutter/material.dart';

class HomeAppbar extends StatelessWidget {
  static const greeting = "Hola!";
  String userName;
  String userImage;

  HomeAppbar(this.userName, this.userImage);

  @override
  Widget build(BuildContext context) {

    return  SliverAppBar(
      title:Text.rich(
        TextSpan(
          text: 'Hola!', // default text style
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          children: <TextSpan>[
            TextSpan(text: ' $userName ',
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
      expandedHeight: 200.0,
      pinned: true,
      floating: true,
      snap: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  //alignment: Alignment.bottomCenter,
                  color: Colors.red,
                  width: 80.0,
                  height: 80.0,
                ),
                Container(
                  //alignment: Alignment.bottomCenter,
                  color: Colors.indigo,
                  width: 80.0,
                  height: 80.0,
                ),
                Container(
                  //alignment: Alignment.bottomCenter,
                  color: Colors.yellow,
                  width: 80.0,
                  height: 80.0,
                )
              ],
            )
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(48.0)),
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
    );
  }
}
