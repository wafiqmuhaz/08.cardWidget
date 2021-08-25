import 'package:flutter/material.dart';

void main() {
  runApp(allone());
}

class allone extends StatelessWidget {
  const allone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Container(
          margin: EdgeInsets.all(20),
          child: ListView(
            children: <Widget>[
              buildCard(Icons.mail, "E-Mail"),
              buildCard(Icons.map_sharp, "Maps"),
              buildCard(Icons.lock_clock, "Clock"),
              buildCard(Icons.alarm, "Alarm"),
              buildCard(Icons.account_box, "Account"),
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
      elevation: 5,
      child: Row(
        children: <Widget>[
          Container(
              margin: EdgeInsets.all(5),
              child: Icon(iconData, color: Colors.green)),
          Text(text),
        ],
      ),
    );
  }
}
