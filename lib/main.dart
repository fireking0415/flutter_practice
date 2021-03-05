import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter实验室',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<BottomNavigationBarItem> bottomNavigationBarItemList = [
    BottomNavigationBarItem(
      icon: Icon(Icons.bathtub_sharp),
      label: "基础",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.photo_library_outlined),
      label: "实验室",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.gamepad_outlined),
      label: "战场",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter实验室"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavigationBarItemList,
      ),
    );
  }
}
