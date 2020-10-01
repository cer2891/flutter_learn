import 'package:flutter/material.dart';

import '../constant.dart';



class iconConten extends StatelessWidget {
  final IconData iconCard;
  final String stringCard;

  iconConten({@required this.iconCard, @required this.stringCard});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconCard,
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          stringCard,
          style: kLabelStyle,
        ),
      ],
    );
  }
}
