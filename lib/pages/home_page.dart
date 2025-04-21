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
    await Future.delayed(Duration(seconds: 4));
    final catalogJson = await rootBundle.loadString(
      "assets/files/catalog.json",
    );

    final decodeData = jsonDecode(catalogJson);
    var productsData = decodeData["products"];
    CatalogModel.items =
        List.from(
          productsData,
        ).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Catalog App")),
      body:
          (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
              ? ListView.builder(
                itemCount: CatalogModel.items.length,
                itemBuilder: (context, index) {
                  return ItemWidget(item: CatalogModel.items[index]);
                },
              )
              : Center(
                child: CircularProgressIndicator()),
      drawer: MyDrawer(),
    );
  }
}
