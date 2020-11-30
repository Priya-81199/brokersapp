import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:brokersapp/Screens/Screen_1.dart';
import 'package:brokersapp/Screens/Screen_4.dart';
import 'package:brokersapp/Screens/Screen_6.dart';
import 'package:brokersapp/Screens/Screen_3.dart';
import 'package:brokersapp/Screens/Components.dart';

class Screen_5 extends StatefulWidget {
  static const String id = "Screen_5";
  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<Screen_5> {
  void Dap(){
    print('Hello');
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children : [
                    buildIcon(Icons.home_rounded,null,context),
                    buildIcon(Icons.add_alert_rounded,Screen_3.id,context),
                  ]
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildIcon(Icons.person_search_rounded,null,context),
                    buildIcon(Icons.calculate_rounded,Screen_4.id,context),
                  ]
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children : [
                      buildIcon(Icons.settings_rounded,null,context),
                      buildIcon(Icons.person_add_alt_1_rounded,Screen_6.id,context),
                    ]
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildIcon(Icons.call_rounded,null,context),
                    buildIcon(Icons.menu_book_rounded,null,context),
                  ]
                ),
                SizedBox(
                  height: 80,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }


}
