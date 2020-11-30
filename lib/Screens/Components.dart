import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:brokersapp/Screens/Screen_1.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Components extends StatefulWidget {
  static const String id = "Components";
  @override
  _MyState createState() => _MyState();

}

class _MyState extends State<Components> {
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }


}



AppBar buildAppBar(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    toolbarOpacity: 0.7,
    backgroundColor: Colors.blueGrey.shade900,
    title: Row(
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
            padding: const EdgeInsets.all(0.2),
            child: Text(
              'Logout',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ),
        ),
        Text(
            "Brokers@pp"
        ),
        Hero(
          tag: 'user',
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://cdn3.iconfinder.com/data/icons/avatars-round-flat/33/avat-01-512.png'),
            radius: 20,
          ),
        ),
      ],
    ),
  );

}

IconButton buildIcon(IconData icon , var screen, BuildContext context) {
  return IconButton(
      color: Colors.blueGrey.shade900,
      iconSize: 60,
      icon: Icon(icon),
      onPressed: () { Navigator.pushNamed(context, screen);}
  );
}

CarouselSlider buildCarouselSlider(List<String> arr) {
  return CarouselSlider(
    options: CarouselOptions(
      height: 300.0,
      scrollDirection: Axis.vertical,
      aspectRatio: 2.0,
      enlargeCenterPage: true,
      enlargeStrategy: CenterPageEnlargeStrategy.height,
    ),
    items: arr.map((i) {
      return Builder(
        builder: (BuildContext context) {
          return Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10 ),
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                  color: Colors.blueGrey[900]
              ),
              child: Text('Broadcast $i', style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0
              ),
              )
          );
        },
      );
    }).toList(),
  );
}
