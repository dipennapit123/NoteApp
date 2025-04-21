import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:my_app/widgets/catalog.dart';
import 'package:my_app/widgets/drawer.dart';
import 'package:my_app/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson = await rootBundle.loadString("assets/files/catalog.json");

    final decodeData =  jsonDecode(catalogJson);
    var productsData=decodeData["products"];
    print(productsData);
  }

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(title: Text("Catalog App")),
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context, index) {
          return ItemWidget(item: dummyList[index]);
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
