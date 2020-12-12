import 'package:flutter/material.dart';
import 'package:my_stats/widgets/appbar_shape.dart';

class HomeAppbar extends StatelessWidget {
  static const greeting = "Hola!";
  String userName;
  String userImage;

  HomeAppbar(this.userName, this.userImage);

  @override
  Widget build(BuildContext context) {
    final AppbarContent = Row(
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
                  style: TextStyle(fontSize: 20.0, color: Colors.white70),
                ),
              ),
              Container(
                width: 200.0,
                child: Text(
                  userName,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.black12,
            child: CircleAvatar(
              radius: 48,
              backgroundImage: AssetImage(userImage),
            ),
          ),
        ]);

    return Stack(
      alignment: const Alignment(-0.6, -0.6),
      children: [
        AppbarShape(),
        AppbarContent,
      ],
    );
  }
}
