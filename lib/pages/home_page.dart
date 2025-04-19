import 'package:flutter/material.dart';
import 'package:my_app/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "Code";
    return Scaffold(
      appBar: AppBar(title: Text("Catalog App")),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of flutter $name "),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
