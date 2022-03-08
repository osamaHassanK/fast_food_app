import 'package:flutter/material.dart';
import 'package:shop_app/home/main_food_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:MainFoodPage());
  }
}



/*
github token
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
 */
