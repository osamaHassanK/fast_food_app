import 'package:flutter/cupertino.dart';

class BigText extends StatelessWidget {
  Color?  color;
  final double size;
  final String text;
  TextOverflow overFlow;


  BigText({Key? key,this.color,required this.text,this.size=18

  ,this.overFlow= TextOverflow.ellipsis}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,overflow: overFlow,style:TextStyle(color:color?? Color(0xFF332d2b),
        fontSize: size,),maxLines: 1,
    );
  }
}
