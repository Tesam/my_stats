import 'package:flutter/material.dart';
import 'package:my_stats/presentation/home/widgets/home_appbar.dart';
import 'package:my_stats/presentation/home/widgets/home_body.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          HomeAppbar('Bryan','assets/images/person.jpg'),
          SliverPadding(
            padding: EdgeInsets.only(top: 20.0),
            sliver: HomeBody(),
          )
          /*HomeBody(),*/
        ],
      ),
    );
  }

}

