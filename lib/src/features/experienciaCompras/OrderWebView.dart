import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:gxp/src/components/templates/pages/PageWithTopAndBottomBars.dart';

class OrderWebView extends StatelessWidget {
  Widget build(BuildContext context) {
    return PageWithTopAndBottomBars(
      showButtonBar: false,
      bottomSelectedIndex: 1,
      child: SizedBox(
        height: 400,
        width: 400,
        child: WebView(initialUrl: 'https://www.google.com'),
      ),
    );
  }
}
