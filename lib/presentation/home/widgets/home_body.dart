import 'package:flutter/material.dart';
import 'package:my_stats/presentation/home/home_bloc.dart';
import 'package:provider/provider.dart';

class HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Consumer<HomeBloc>(
      builder: (_, homeBloc, __){
        return SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index){
                return ListTile(
                  leading: Icon(homeBloc.subjects[index].subjectIcon),
                  title: Text(homeBloc.subjects[index].subjectTitle),
                  subtitle: Text(homeBloc.subjects[index].lessonQuantity),
                );
              },
              childCount: homeBloc.subjects.length,
            )
        );
      }
    );
  }
}