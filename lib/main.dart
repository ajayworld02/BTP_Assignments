import 'package:flutter/material.dart';

import 'appbars.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        accentColor: Colors.black,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget eachpart(String asset, String title) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Image.asset(asset),
          ],
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          color: Colors.white,
          child: ListTile(
            title: Text(
              "$title",
              textAlign: TextAlign.start,
            ),
            trailing: Icon(Icons.more_vert, color: Colors.white),
          ),
        ),
        SizedBox(
          height: 10.0,
          child: Container(
            color: Colors.white,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topbar,
      bottomNavigationBar: bottomappbar,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            eachpart("assests/thumb0.png",
                "This week your baby is starting to look more like,well,a baby-your little one's head is taking shape while the cheeks chin and jaws are also beginning.....Read more"),
            eachpart("assests/thumb1.png", ""),
            eachpart("assests/thumb2.png", ""),
            eachpart("assests/thumb3.png", ""),
            eachpart("assests/thumb4.png",
                "Moms like you                           "),
          ],
        ),
      ),
    );
  }
}
