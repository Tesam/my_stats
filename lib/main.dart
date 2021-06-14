import 'package:flutter/material.dart';
import 'package:my_stats/data/repositories/home_api_impl.dart';
import 'package:my_stats/domain/repositories/home_api_repository.dart';
import 'package:my_stats/domain/usecases/home_use_case.dart';
import 'package:my_stats/presentation/home/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<HomeApiRepository>(
          create: (_) => HomeApiImpl(),
        ),
        Provider<HomeUseCase>(
          create: (context) =>
              HomeUseCase(context.read<HomeApiRepository>(),
          ),
        ),
      ],
      child: Builder(builder: (context) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: HomeScreen.init(context),
        );
      }),
    );
  }
}

