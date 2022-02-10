import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:io' show Platform;

List<String> listpassenger = ['Adult(s)', 'Child(ren)', 'Infant(s)'];
List<String> starsRating = [
  'All',
  'OneStarOrLess',
  'TwoStarOrLess',
  'ThreeStarOrLess',
  'FourStarOrLess',
  'FiveStarOrLess',
  'OneStarOrMore',
  'TwoStarOrMore',
  'ThreeStarOrMore',
  'FourStarOrMore',
  'FiveStarOrMore'
];
//Style
ButtonStyle flatButtonStyle = TextButton.styleFrom(
  primary: Colors.black87,
  textStyle: TextStyle(fontSize: 20),
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(30)),
  ),
);

ButtonStyle elevaButtonStyle1 = ElevatedButton.styleFrom(
  primary: Colors.blue,
  //textStyle: TextStyle(fontSize: 50),

  padding: EdgeInsets.symmetric(horizontal: 20.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(30)),
  ),
);
ButtonStyle elevaButtonStyle2 = ElevatedButton.styleFrom(
  primary: Colors.white70,
  //textStyle: TextStyle(fontSize: 50),
  padding: EdgeInsets.symmetric(horizontal: 20.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(30)),
  ),

);
ButtonStyle elevaButtonSearch = ElevatedButton.styleFrom(
    primary: Colors.blue  ,
    //textStyle: TextStyle(fontSize: 50),
    padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
    ),
);
final headerStyle = TextStyle(fontSize: 32, fontWeight: FontWeight.bold);
final subHeaderStyle =
    TextStyle(fontSize: 32, fontWeight: FontWeight.w300, color: Colors.black38);
final cityTitleStyle = TextStyle(fontSize: 40, color: Colors.white);
final textStyle =
    TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold);
final ButtonStyle flattButtonStyle = TextButton.styleFrom(
  primary: Colors.black87,
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2.0)),
  ),
);
final titleStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
final grayStyle =
    TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Colors.grey);
final subtitleStyle =
    TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.black38);
final subtitleStyle2 =
    TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.black);
final moneyStyle =
    TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.green);
final italic = TextStyle(
  fontSize: 22.0,
  fontStyle: FontStyle.italic,
  fontWeight: FontWeight.w300,
  color: Colors.black,
  letterSpacing: 2.0,
);
AppBar appbar1 = AppBar(
  // title: new Text(
  //   "Hello World",
  //   style: TextStyle(color: Colors.amber),
  // ),
  backgroundColor: Colors.transparent,
  elevation: 0.0,
);




Widget showLoading(BuildContext context) {
  return Stack(
    children: <Widget>[
      ModalBarrier(
        dismissible: false,
        color: Colors.black.withOpacity(0.2),
      ),
      Center(
        child: Container(
          height: 50,
          width: 50,
          alignment: Alignment.center,
          child: CircularProgressIndicator(
            backgroundColor: Colors.white,
          ),
        ),
      ),
    ],
  );
}
