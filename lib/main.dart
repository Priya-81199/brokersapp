import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:brokersapp/Screens/Screen_1.dart';
import 'package:brokersapp/Screens/Screen_2.dart';
import 'package:brokersapp/Screens/Screen_3.dart';
import 'package:brokersapp/Screens/Screen_4.dart';
import 'package:brokersapp/Screens/Screen_5.dart';
import 'package:brokersapp/Screens/Screen_6.dart';
import 'package:brokersapp/Screens/Components.dart';

void main() {
  runApp(BrokersApp());
}
class BrokersApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Screen_6.id,
      routes: {
        Screen_1.id : (context) => Screen_1(),
        Screen_2.id : (context) => Screen_2(),
        Screen_3.id : (context) => Screen_3(),
        Screen_4.id : (context) => Screen_4(),
        Screen_5.id : (context) => Screen_5(),
        Screen_6.id : (context) => Screen_6(),
        Components.id : (context) => Components(),
      },
    );
  }
}
