import 'dart:ui';

import 'package:flutter/cupertino.dart';

class SmallText extends StatelessWidget {
  Color?  color;
  final double size;
  final String text;
  double height;


  SmallText({Key? key,this.color=const Color(0xffccc7cf),required this.text,this.size=12,
  this.height=1.2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,style:TextStyle(color:color,
        fontSize: size,height: height),
    );
  }
}
