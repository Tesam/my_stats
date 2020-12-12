import 'package:flutter/material.dart';

class HomeAppbar extends StatelessWidget {
  static const greeting = "Hola!";
  String userName;
  String userImage;

  HomeAppbar(this.userName, this.userImage);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                child: Text(
                  greeting,
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                child: Text(
                  userName,
                  textAlign: TextAlign.left,
                ),
              )
            ],
          ),
          CircleAvatar(
          radius: 50,
          backgroundColor: Colors.red,
          ),
        ]
      );
  }
}
