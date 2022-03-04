import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/utilis/color.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  _FoodPageBodyState createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,
       color: Colors.red,
       child: PageView.builder(
           itemCount: 5,
           itemBuilder:(context,position){
         return _buildPageItem(position);
       }),
    );
  }
  Widget _buildPageItem(int index){
    return Stack(
      children: [
       Container(
         height: 300,
    margin: EdgeInsets.only(left: 5,right: 5),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
    color: index.isEven?Color(0xff69c5df):Color(0xFF924cc)
    ,image: DecorationImage(
    fit:BoxFit.cover ,
    image: index.isEven?AssetImage("assets/image/food.jpg",):
    AssetImage("assets/image/foood2.jpg",))
    ),
    ),
        Align(
          alignment: Alignment.bottomCenter,
          child:Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(10),color:AppColor.yellowColor,
              // 56:32 video timing
            ),
          ) ,
        ),
      ],
    );
  }
}
