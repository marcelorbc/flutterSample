import 'package:flutter/material.dart';
import 'package:natura_on_track/src/features/core/menu/MenuTiles.dart';

class Menu extends StatefulWidget {
  Menu();

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.orange.shade300, //change your color here
        ),
        title: Text(
          "Menu",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontFamily: "Roboto"),
        ),
        backgroundColor: Colors.grey.shade100,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Expanded(
              child: MenuTiles(
                generateListView: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
