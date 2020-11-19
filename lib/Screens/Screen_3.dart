import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Screen_3 extends StatefulWidget {
  static const String id = "Screen_3";
  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<Screen_3> {
  void Dap(){
    print('Hello');
  }

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
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

                SizedBox(
                  height: 20,
                ),
                TextField(
                  maxLines: 4,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Description',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                    foregroundColor:MaterialStateProperty.all<Color>(Colors.white),
                    overlayColor: MaterialStateProperty.all<Color>(Colors.lightGreenAccent),
                    shadowColor: MaterialStateProperty.all<Color>(Colors.lightGreen),
                  ),
                  autofocus: true,
                  onPressed: Dap,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Set Reminder',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}

