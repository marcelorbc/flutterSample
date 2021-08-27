import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:gxp/src/components/templates/pages/PageWithTopAndBottomBars.dart';

class Orders extends StatelessWidget {
  Widget build(BuildContext context) {
    return PageWithTopAndBottomBars(
      showButtonBar: false,
      bottomSelectedIndex: 1,
      child: SizedBox(
        height: 400,
        width: 400,
        child: WebviewScaffold(
          url: 'https://www.google.com',
          withJavascript: true,
          withZoom: false,
          withLocalStorage: true,
          withLocalUrl: true,
        ),
      ),
    );
  }
}
