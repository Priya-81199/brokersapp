import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:brokersapp/Screens/Components.dart';


class Screen_4 extends StatefulWidget {
  static const String id = "Screen_4";
  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<Screen_4> {
  void Dap(){
    print('Hello');
  }
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController1.dispose();
    myController2.dispose();
    super.dispose();
  }
  bool val = false;
  double amt;
   void calc (double val1,double val2){
     setState(() {
     });
     amt  = val1 * ( val2 / 100 );
    print(amt);
    val = true;
  }
  void reset(){
     setState(() {
     });
    val = false;
  }
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: val ?
      Container(
          child: AlertDialog(
            title: Text("Brokrage amount is"),
            content: Text("\u20B9 $amt"),
            actions: [
              FlatButton(onPressed: () => { reset() }, child: Text("Okay"))
            ],

          )

      )
      : Center(
        child: Container(
          margin: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                SizedBox(
                  height: 120,
                ),
                TextField(
                  controller: myController1,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Amount',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: myController2,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Percentage',
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
                  onPressed: () => {
                    calc(double.parse(myController1.text), double.parse(myController2.text))
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Calculate',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 120,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}


