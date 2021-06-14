import 'package:flutter/material.dart';
import 'package:my_stats/domain/usecases/home_use_case.dart';
import 'package:my_stats/presentation/home/home_provider.dart';
import 'package:my_stats/presentation/home/widgets/home_appbar.dart';
import 'package:my_stats/presentation/home/widgets/home_body.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen._({Key key}) : super(key: key);

  static Widget init(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) =>
          HomeProvider(
              homeUseCase: context.read<HomeUseCase>()
          ),
      builder: (_, __) => HomeScreen._(),
    );
  }

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

