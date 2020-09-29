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
  final List<NavigationModel> _items = [
    NavigationModel(title: "Dashboard", icon: Icons.insert_chart),
    NavigationModel(title: "Errors", icon: Icons.error),
    NavigationModel(title: "Search", icon: Icons.search),
    NavigationModel(title: "Notifications", icon: Icons.notifications),
    NavigationModel(title: "Settings", icon: Icons.settings),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: drawerBackgroundColor,
        title: Text("Collapsing Navigation Drawer/Sidebar",),
      ),
      //drawer: CollapsingNavigationDrawer(_items),
      body: Stack(
        children: <Widget>[
          Container(color: selectedColor,),
          CollapsingNavigationDrawer(_items)
        ],
      )
    );
  }
}
