import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gxp/src/designsystem/ds.dart';
import 'package:gxp/src/helpers/nativigator.dart';

class SplashScreen extends StatefulWidget {
  final Natvigator natvigator;
  final DesignSystem designSystem;

  const SplashScreen({Key? key, required this.designSystem, required this.natvigator}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = Duration(seconds: 2);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    widget.natvigator.pushLogin(context);
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
            color: widget.designSystem.getColors().background,
          ),
          Center(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Hero(
                      tag: 'splashLogo',
                      child: widget.designSystem.getBrands().aOfficial(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        "",
                        style: TextStyle(color: Colors.grey.shade400, fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        "",
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
