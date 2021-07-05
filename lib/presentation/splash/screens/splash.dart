import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_stats/presentation/splash/widgets/splash_button.dart';

class Splash extends StatelessWidget {
  const Splash({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Theme.of(context).primaryColor,
                Theme.of(context).primaryColorLight,
              ],
            )
          ),
          child: Column(
            children: [
              Flexible(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  alignment: Alignment.bottomCenter,
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Image.asset('assets/images/peaks-icon.png'),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Text(
                    'Peaks',
                    style: Theme.of(context).textTheme.headline3,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    children: [
                      SplashButton(
                        onPressed: (){},
                        buttonText: 'SOY PROFE',
                        isActive: true,
                      ),
                      SplashButton(
                        onPressed: (){},
                        buttonText: 'SOY ALUMNO',
                        isActive: false,
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        )
      ),
    );
  }
}
