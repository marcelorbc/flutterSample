import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gxp/src/helpers/NatDSIcons.dart';
import 'package:gxp/src/helpers/NavigatorNatura.dart';

class NaturaECoSimpleSplash extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<NaturaECoSimpleSplash> {
  startTime() async {
    var _duration = Duration(seconds: 2);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    NavigatorNatura.pushLogin(context);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.grey.shade100,
          ),
          Center(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Hero(
                      tag: 'splashLogo',
                      child: NatDSIcons.naturaBCustom(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        "Bem estar bem",
                        style: TextStyle(color: Colors.grey.shade400, fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        "Natura & CO",
                        style: TextStyle(color: Colors.grey.shade400, fontWeight: FontWeight.bold, fontSize: 10, wordSpacing: 2, letterSpacing: 4),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
