import 'package:flutter/material.dart';

AppBar topbar = AppBar(
  backgroundColor: Colors.white,
  title: Image.asset(
    'assests/logo.png',
    fit: BoxFit.cover,
    width: 100.0,
  ),
  actions: <Widget>[
    Padding(
      padding: EdgeInsets.only(right: 20.0),
    ),
    Padding(
      padding: EdgeInsets.only(right: 20.0),
    ),
    Padding(
      padding: EdgeInsets.only(right: 20.0),
    ),
  ],
);

Color normalcolor = Colors.white24;
Color selectedcolor = Colors.white;

BottomAppBar bottomappbar = BottomAppBar(
  color: Colors.black,
  child: Container(
    color: Colors.black,
    height: 55.0,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.home,
              color: selectedcolor,
            ),
            Text(
              "Home",
              style: TextStyle(color: selectedcolor),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.favorite,
              color: normalcolor,
            ),
            Text(
              "Moms",
              style: TextStyle(color: normalcolor),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.build,
              color: normalcolor,
            ),
            Text(
              "Tools",
              style: TextStyle(color: normalcolor),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.list,
              color: normalcolor,
            ),
            Text(
              "Inbox",
              style: TextStyle(color: normalcolor),
            ),
          ],
        ),
      ],
    ),
  ),
);
