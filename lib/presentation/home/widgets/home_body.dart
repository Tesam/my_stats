import 'package:flutter/material.dart';
import 'package:my_stats/presentation/home/home_provider.dart';
import 'package:provider/provider.dart';

class HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Consumer<HomeProvider>(
      builder: (_, homeProvider, __){
        return SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index){
                return ListTile(
                  leading: Icon(homeProvider.subjects[index].subjectIcon),
                  title: Text(homeProvider.subjects[index].subjectTitle),
                  subtitle: Text(homeProvider.subjects[index].lessonQuantity),
                );
              },
              childCount: homeProvider.subjects.length,
            )
        );
      }
    );
  }
}