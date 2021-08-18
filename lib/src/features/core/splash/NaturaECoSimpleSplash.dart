/*
import 'package:flutter/material.dart';
import '../login/auth/LoginNativo.dart';
import '../login/countryList/ListaPaises.dart';
import '../helpers/LocalStorage.dart';
import 'package:flutter_native_splash';

class NaturaECoSimpleSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var localStorage = new LocalStorage();
    localStorage.getValueString('country');

    return MaterialApp(
      home: SplashScreen(
        backgroundColor: Colors.black38,
        image: Image.network('https://bit.ly/3uyZZ9N'),
        seconds: 5,
        title: Text(
          'Natura',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        navigateAfterSeconds: ListaPaises(),
      ),
    );
  }
}
*/