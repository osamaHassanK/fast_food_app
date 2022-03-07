import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/Widget/icon_and_text_widget.dart';
import 'package:shop_app/Widget/smalltext.dart';
import 'package:shop_app/Widget/textwidget.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  _FoodPageBodyState createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  @override
  PageController pageController =PageController(viewportFraction: 0.1);
  Widget build(BuildContext context) {
    return Container(
      height: 340,
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
       Align(
         alignment: Alignment.topCenter,
         child: Container(
           height: 250,
    margin: EdgeInsets.only(left: 10,right: 10),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
    color: index.isEven?Color(0xff69c5df):Color(0xFF924cc)
    ,image: DecorationImage(
    fit:BoxFit.cover,
    image: index.isEven?AssetImage("assets/image/food.jpg",):
    AssetImage("assets/image/foood2.jpg",))
    ),
    ),
       ),
        Align(
          alignment: Alignment.bottomCenter,
          child:Container(
            margin: EdgeInsets.only(bottom: 10),
            height:120,
            width: 270,
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(30),color:Colors.white,
            ),
            child: Container(
                padding: EdgeInsets.only( bottom: 10,left: 10,right: 10,top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   BigText(text: 'Chinese Side',),
                   SizedBox(height: 4,),
                   Row(children: [
                     Wrap(children:
                       List.generate(5, (index) =>
                           Icon(Icons.star,size: 15,color: Colors.blue,),
                       ),),
                     SizedBox(width: 7,),
                     SmallText(text: "4.5"),
                     SizedBox(width: 7,),
                     SmallText(text: "1287"),
                     SizedBox(width: 7,),
                     SmallText(text: "comments"),
                   ],)
                 ],
              ),
            ),
          ) ,
        ),
      ],
    );
  }
}
