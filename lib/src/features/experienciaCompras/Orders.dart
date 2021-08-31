import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:gxp/src/components/templates/pages/PageWithTopAndBottomBars.dart';
import 'package:gxp/src/designsystem/ds.dart';
import 'package:gxp/src/helpers/nativigator.dart';

class Orders extends StatelessWidget {
  final DesignSystem ds;
  final Natvigator natvigator;

  Orders({Key? key, required this.ds, required this.natvigator}) : super(key: key);

  Widget build(BuildContext context) {
    return PageWithTopAndBottomBars(
      ds,
      natvigator: natvigator,
      showButtonBar: false,
      bottomSelectedIndex: 1,
      child: SizedBox(
        height: 400,
        width: double.infinity,
        child: WebviewScaffold(
          url: 'https://gsp.natura.net',
          withJavascript: true,
          withZoom: false,
          withLocalStorage: true,
          withLocalUrl: true,
        ),
      ),
    );
  }
}
