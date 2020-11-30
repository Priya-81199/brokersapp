import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:brokersapp/Screens/Components.dart';

class Screen_3 extends StatefulWidget {
  static const String id = "Screen_3";
  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<Screen_3> {

  bool val = false;

  void setReminder(){
    setState(() {

    });
    val = true;
  }
  void reset(){
    setState(() {
      
    });
    val = false;
  }
  List<String> Properties = ['Property','Property 1','Property 2','Property 3','Property 4','Property 5'];
  String Property_default = 'Property';
  List<String> Customers = ['Customer','Customer 1','Customer 2','Customer 3','Customer 4','Customer 5'];
  String Customer_default = 'Customer';
  List<String> Months = ['MM','Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sept','Oct','Nov','Dec'];
  String Month_default = 'MM';
  List<String> Dates = ['DD','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31'];
  String Date_default = 'DD';
  List<String> Years = ['YY','2020','2021'];
  String Year_default = 'YY';
  List<String> Hours = ['HH','01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23'];
  String Hour_default = 'HH';
  List<String> Mins = ['Ms','00','15','30','45'];
  String Min_default = 'Ms';


  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body:  val ?
      Container(
          child: AlertDialog(
            title: Text('Added Reminder!'),
            actions: [
              FlatButton(onPressed: () => { reset() }, child: Text("Okay"))
            ],
          )

      ): Center(
        child: Container(
          margin: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              buildDropdownButton(Property_default,Properties, 'property'),
                buildDropdownButton(Customer_default,Customers,'customer'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildDropdownButton(Month_default, Months,'month'),
                    buildDropdownButton(Date_default, Dates,'date'),
                    buildDropdownButton(Year_default, Years,'year')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildDropdownButton(Hour_default, Hours,'hour'),
                    buildDropdownButton(Min_default, Mins,'mins'),
                  ],
                ),
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
                  onPressed: setReminder,
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

  DropdownButton<String> buildDropdownButton(String default_name, List<String> names, String fieldname) {

    return DropdownButton<String>(
      value: default_name,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(
          color: Colors.lightGreen
      ),
      underline: Container(
        height: 2,
        color: Colors.blueGrey[900],
      ),
      onChanged: (String newValue) {
        setState(() {
          if(fieldname == 'property')
            Property_default = newValue;
          else if(fieldname == 'customer')
            Customer_default = newValue;
          else if(fieldname == 'month')
            Month_default = newValue;
          else if(fieldname == 'date')
            Date_default = newValue;
          else if(fieldname == 'year')
            Year_default = newValue;
          else if(fieldname == 'hour')
            Hour_default = newValue;
          else if(fieldname == 'mins')
            Min_default = newValue;
        });
      },
      items: names
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      })
          .toList(),
    );
  }

}

