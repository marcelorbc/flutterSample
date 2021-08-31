import 'package:flutter/material.dart';
import 'package:gxp/src/helpers/country_config.dart';
import 'package:gxp/src/helpers/local_storage.dart';
import 'package:gxp/extensions/ListFromMap.dart';

class ListaPaises extends StatefulWidget {
  ListaPaises({required this.onSelectCountry});

  final Function onSelectCountry;

  @override
  _ListaPaisesState createState() => _ListaPaisesState();
}

class _ListaPaisesState extends State<ListaPaises> {
  @override
  Widget build(BuildContext context) {
    var localStorage = new LocalStorage();
    var paises = CountryConfig.paises.toList((e) => e.value);

    return Container(
      child: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: paises.length,
        itemBuilder: (BuildContext context, int index) {
          var children = [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 40,
                child: Image.asset("./lib/assets/images/flags/${paises[index]['code'].toString().toLowerCase()}.png"),
              ),
            ),
            Text(
              '${paises[index]['name']}',
              style: TextStyle(color: Colors.black),
            ),
          ];
          /*
          if (pais == countrieCodes[index]) {
            children.add(Text("Checked"));
          }
          */

          return ListTile(
            subtitle: Container(
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // background color
                    shadowColor: Colors.transparent,
                    primary: Colors.grey.shade100,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                  child: Container(
                    child: Row(
                      children: children,
                    ),
                  ),
                  onPressed: () {
                    LocalStorage.setValueString('country', paises[index]['code']);
                    widget.onSelectCountry(paises[index]['code'], paises[index]['lang']);
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
