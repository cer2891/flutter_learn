import 'package:flutter/material.dart';
import '../constant.dart';

class RoundIconButtom extends StatelessWidget {

  final IconData icon;
  final Function onPress;

  RoundIconButtom({this.icon, this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPress,
      elevation: 6,
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
      constraints: BoxConstraints(minWidth: 60, minHeight: 50.0),
    );
  }
}

class BottomButton extends StatelessWidget {

  final Function OnTap;
  final String  buttonText;

  BottomButton({@required this.OnTap,@required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Container(
        child: Center(
          child: Text(
            buttonText,
            style: kStyleLarge,
          ),
        ),
        color: kBottomContainer,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: 80,
      ),
    );
  }
}

