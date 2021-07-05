import 'package:flutter/material.dart';
import 'package:my_stats/presentation/extra/utils.dart';

class SplashButton extends StatelessWidget {
  final bool isActive;
  final Function onPressed;
  final String buttonText;

  const SplashButton({Key key, this.isActive, this.onPressed, this.buttonText}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    TextStyle buttonTextStyle = extend(
      style1: Theme.of(context).textTheme.subtitle1,
      style2: TextStyle(
        color: (isActive) ? Colors.white : Theme.of(context).primaryColor,
      )
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor: (isActive)
                ? MaterialStateProperty.all<Color>(Theme.of(context).primaryColor)
                : MaterialStateProperty.all<Color>(Colors.white),
            fixedSize: MaterialStateProperty.all<Size>(Size(260.0, 65.0))
        ),
        child: Text(
          buttonText,
          style: buttonTextStyle,

        ),
      ),
    );
  }
}
