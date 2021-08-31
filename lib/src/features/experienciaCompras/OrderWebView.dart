import 'package:flutter/material.dart';
import 'package:gxp/src/designsystem/ds.dart';
import 'package:gxp/src/helpers/nativigator.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:gxp/src/components/templates/pages/PageWithTopAndBottomBars.dart';

class OrderWebView extends StatelessWidget {
  final DesignSystem ds;
  final Natvigator natvigator;

  const OrderWebView({Key? key, required this.ds, required this.natvigator}) : super(key: key);

  Widget build(BuildContext context) {
    return PageWithTopAndBottomBars(
      ds,
      natvigator: natvigator,
      showButtonBar: false,
      bottomSelectedIndex: 1,
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: WebView(
          initialUrl: 'https://www.avon.com.br',
          allowsInlineMediaPlayback: true,
          javascriptMode: JavascriptMode.unrestricted,
          gestureNavigationEnabled: true,
        ),
      ),
    );
  }
}
