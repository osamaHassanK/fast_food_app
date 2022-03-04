import 'package:flutter/material.dart';
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
               Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Column( children: [
                     Text("Bangladesh",style: TextStyle(color:AppColor.mainColor,fontSize: 18),),
                     Text("shah Faisal",style: TextStyle(color: Colors.black,fontSize: 14),),
                   ]),
                   Container(
                       height: 45,width: 45,
                       decoration:BoxDecoration(color: AppColor.mainColor,
                           borderRadius:BorderRadius.circular(12) ) ,
                      child:Icon(Icons.search,color:Colors.white) ,
                   )
                 ],
               ),
             ],
          ),
        ),
      ),
    );
  }
}
