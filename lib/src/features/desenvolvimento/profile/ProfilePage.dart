import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gxp/src/components/templates/body/BodyBlank.dart';
import 'package:gxp/src/components/templates/pages/PageWithTopAndBottomBars.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  double opacityLevel = 1.0;

  @override
  Widget build(BuildContext context) {
    return PageWithTopAndBottomBars(
      showButtonBar: true,
      title: "Profile",
      bottomSelectedIndex: 2,
      child: BodyBlank(child: Container()),
    );
  }
}
