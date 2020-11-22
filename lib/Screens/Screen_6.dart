import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:brokersapp/Screens/Screen_1.dart';
import 'package:brokersapp/Screens/Screen_4.dart';
import 'package:brokersapp/Screens/Components.dart';


class Screen_6 extends StatefulWidget {
  static const String id = "Screen_6";
  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<Screen_6> {
  void Dap() {
    print('Hello');
  }

  List<String> abc = ['1','2','3','4','5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      labelText: 'Search',
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                 buildCarouselSlider(abc)
                ],
              ),

            ),

          ),
        ),
      ),
    );
  }



}
