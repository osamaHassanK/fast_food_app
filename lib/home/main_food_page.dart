import 'package:flutter/material.dart';
import 'package:shop_app/Widget/smalltext.dart';
import 'package:shop_app/Widget/textwidget.dart';
import 'package:shop_app/home/food_page_body.dart';
import 'package:shop_app/utilis/color.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  _MainFoodPageState createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
             children:[
               Container(
                 child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Column( children: [
                       BigText(text:'Pakistan',color: AppColor.mainColor),
                       Row(
                         children: [
                           SizedBox(width: 12,),
                           SmallText(text:'Shah faisal'),
                           Icon(Icons.arrow_drop_down),
                         ],
                       ),

                     ]),
                     Container(
                       margin:EdgeInsets.only(bottom: 5),
                       height: 35.0,
                         width: 35,
                         decoration:BoxDecoration(color: AppColor.mainColor,
                             borderRadius:BorderRadius.circular(10) ) ,
                        child:Icon(Icons.search,color:Colors.white),
                     )
                   ],
                 ),
               ),
               FoodPageBody(), ],
          ),
        ),

      ),
    );
  }
}
