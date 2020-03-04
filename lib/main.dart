import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var appColors = [Color.fromRGBO(231, 129, 109, 1.0),Color.fromRGBO(99, 138, 223, 1.0),Color.fromRGBO(111, 194, 173, 1.0)];
  var cardIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "TODO",
          style: TextStyle(fontSize: 16.0),
        ),
        backgroundColor: appColors[cardIndex],
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.search),
          )
        ],
        elevation: 0.0,
      ),
      drawer: Drawer(),
      body: new Center(),
      backgroundColor: appColors[cardIndex],
    );
  }
}
