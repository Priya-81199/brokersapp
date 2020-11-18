import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:brokersapp/Screens/Screen_1.dart';
import 'package:brokersapp/Screens/Screen_2.dart';
import 'package:brokersapp/Screens/Screen_3.dart';
void main() {
  runApp(BrokersApp());
}
class BrokersApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Screen_3.id,
      routes: {
        Screen_1.id : (context) => Screen_1(),
        Screen_2.id : (context) => Screen_2(),
        Screen_3.id : (context) => Screen_3(),
      },
    );
  }
}
