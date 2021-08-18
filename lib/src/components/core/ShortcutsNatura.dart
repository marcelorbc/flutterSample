import 'package:flutter/material.dart';

class ShortcutsNatura extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var shortcut = Column(
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Icon(
            Icons.add_reaction_outlined,
            color: Colors.grey.shade800,
            size: 25,
          ),
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            primary: Color.fromRGBO(233, 174, 78, 1),
            padding: EdgeInsets.all(22),
            shadowColor: Colors.black,
            elevation: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 7),
          child: Text(
            "Teste",
            style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
          ),
        )
      ],
    );

    var shortcutsContainer = Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            shortcut,
            shortcut,
            shortcut,
            shortcut,
          ],
        ),
      ),
    );

    return shortcutsContainer;
  }
}
