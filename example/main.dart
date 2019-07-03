import 'package:custom_navigation_drawer/custom_navigation_drawer.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Navigation Drawer Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: drawerBackgroundColor,
        title: Text("Collapsing Navigation Drawer/Sidebar",),
      ),
      //drawer: CollapsingNavigationDrawer(),
      body: Stack(
        children: <Widget>[
          Container(color: selectedColor,),
          CollapsingNavigationDrawer()
        ],
      )
    );
  }
}
