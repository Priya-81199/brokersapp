import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:brokersapp/Screens/Screen_1.dart';
import 'package:brokersapp/Screens/Screen_4.dart';

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
      appBar: AppBar(
        backgroundColor:Colors.blueGrey.shade900,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                      foregroundColor:MaterialStateProperty.all<Color>(Colors.white),
                      overlayColor: MaterialStateProperty.all<Color>(Colors.redAccent),
                      shadowColor: MaterialStateProperty.all<Color>(Colors.pinkAccent),
                    ),
                      autofocus: true,
                        onPressed: () { Navigator.pushNamed(context, Screen_1.id);},
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Logout',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                    ),
                    Hero(
                      tag: 'user',
                      child: CircleAvatar(
                        backgroundImage: NetworkImage('https://cdn3.iconfinder.com/data/icons/avatars-round-flat/33/avat-01-512.png'),
                        radius: 30,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children : [
                    buildIcon(Icons.home_rounded,null),
                    buildIcon(Icons.add_alert_rounded,null),
                  ]
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildIcon(Icons.person_search_rounded,null),
                    buildIcon(Icons.calculate_rounded,Screen_4.id),
                  ]
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children : [
                      buildIcon(Icons.settings_rounded,null),
                      buildIcon(Icons.person_add_alt_1_rounded,null),
                    ]
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildIcon(Icons.call_rounded,null),
                    buildIcon(Icons.menu_book_rounded,null),
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

  IconButton buildIcon(IconData icon , var screen) {
    return IconButton(
        color: Colors.blueGrey.shade900,
        iconSize: 60,
        icon: Icon(icon),
        onPressed: () { Navigator.pushNamed(context, screen);}
    );
  }

}
