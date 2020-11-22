import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:brokersapp/Screens/Screen_1.dart';
import 'package:brokersapp/Screens/Screen_4.dart';

class Screen_6 extends StatefulWidget {
  static const String id = "Screen_6";
  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<Screen_6> {
  void Dap() {
    print('Hello');
  }
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        title: Center(
          child: Text(
              'Brokers@pp'
          ),
        ),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    Hero(
                      tag: 'user',
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://cdn3.iconfinder.com/data/icons/avatars-round-flat/33/avat-01-512.png'),
                        radius: 30,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Search',
                  ),
                ),
               Scrollbar(child: Column(
                 children: [
                 TextField(
                 textAlign: TextAlign.center,
                 decoration: InputDecoration(
                   labelText: 'Search',
                 ),
               ),



                 ],
               ))

              ],
            ),
          ),
        ),
      ),
    );
  }
}
