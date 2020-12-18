import 'package:flutter/material.dart';
import 'package:my_stats/home/ui/widgets/home_appbar.dart';
import 'package:my_stats/home/ui/widgets/home_body.dart';

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
          HomeBody(),
        ],
      ),
    );
  }

}

