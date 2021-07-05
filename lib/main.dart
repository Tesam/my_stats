import 'package:flutter/material.dart';
import 'package:my_stats/dependencies.dart';
import 'package:my_stats/presentation/extra/app_light_theme.dart';
import 'package:my_stats/presentation/splash/screens/splash.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: dependencies,
      child: Builder(builder: (context) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: appLightTheme(),
          home: Splash()
        );
      }),
    );
  }
}

