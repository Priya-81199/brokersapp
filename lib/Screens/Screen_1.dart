import 'package:brokersapp/Screens/Screen_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen_1 extends StatefulWidget {
  static const String id = "Screen_1";
  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<Screen_1> {
  void Dap(){
    print('Hello');
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            automaticallyImplyLeading: false,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText: true,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Hero(
                    tag : 'green_button',
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                        foregroundColor:MaterialStateProperty.all<Color>(Colors.white),
                        overlayColor: MaterialStateProperty.all<Color>(Colors.lightGreenAccent),
                        shadowColor: MaterialStateProperty.all<Color>(Colors.lightGreen),
                      ),
                      autofocus: true,
                      onPressed: () { Navigator.pushNamed(context, Screen_2.id);},
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlatButton(
                          onPressed: Dap,
                          child: Text(
                            'Forgot Password',
                            style: TextStyle(
                              color: Colors.blueGrey,
                            ),
                          )
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      FlatButton(
                          onPressed: Dap,
                          child: Text(
                            'New User?\n''  Register',
                            style: TextStyle(
                              color: Colors.blueGrey,

                            ),
                          )
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
  }

}
