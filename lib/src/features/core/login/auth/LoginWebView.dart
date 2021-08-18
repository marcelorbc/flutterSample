import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:natura_on_track/src/helpers/LocalStorage.dart';

class LoginWebView extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            var localStorage = new LocalStorage();
            localStorage.remove('country');
            Navigator.of(context).pushNamed("/");
          },
          child: Text("Voltar"),
        ),
        Expanded(
          child: WebviewScaffold(
            url:
                'https://sso-auth.naturacloud.com/natura-auth/?scope=openid&state=c0sh8az-YimPDzImiYlB_veHj0NlGTu8okJjGsvtMNs.fhwIZ3WH3Jk.MiNegocio&response_type=token&client_id=MiNegocio&redirect_uri=https%3A%2F%2Fsso-auth.naturacloud.com%2Fauth%2Frealms%2FNatura%2Fbroker%2Fcorporate-oidc%2Fendpoint&UC=Q0w%3D',
            withJavascript: true,
            withZoom: false,
            withLocalStorage: true,
            withLocalUrl: true,
          ),
        ),
      ],
    );
  }
}
