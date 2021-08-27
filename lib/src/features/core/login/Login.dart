import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gxp/generated/l10n.dart';
import 'package:gxp/src/helpers/CountryConfig.dart';
import 'package:gxp/src/helpers/LocalStorage.dart';
import 'package:gxp/src/features/core/login/auth/LoginWebView.dart';

import 'countryList/ListaPaises.dart';
import 'auth/LoginNativo.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var pais = LocalStorage.getValueString('country');
    Widget widgetResult;

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.grey.shade100, //or set color with: Color(0xFF0000FF)
    ));

    if (pais == null) {
      widgetResult = Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Choose your Country ${S.of(context).helloWorld}",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontFamily: "Roboto"),
          ),
          backgroundColor: Colors.grey.shade100,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Expanded(
                child: ListaPaises(
                  onSelectCountry: (pais, lang) {
                    print("Pais selecionado após evento $pais");
                    S.load(Locale(lang)).then(
                          (value) => setState(() {}),
                        );
                  },
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("OK"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orangeAccent,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    } else {
      // ignore: dead_code
      if (true || CountryConfig.paises[pais]['auth'] == 'native') {
        widgetResult = LoginNativo(
          onSelectCountryToChange: () {
            setState(() {});
          },
        );
        // ignore: dead_code
      } else {
        widgetResult = LoginWebView();
      }
    }
    return widgetResult;
  }
}
