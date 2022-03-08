import 'package:flutter/material.dart';
import 'package:shop_app/Widget/smalltext.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  IconAndTextWidget({Key? key, required this.icon, required this.text,
    required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
       children: [
         Icon(icon,color: color,size: 20,),
         SizedBox(width: 5,),
         SmallText(text: text,)
       ],
    );
  }
}
