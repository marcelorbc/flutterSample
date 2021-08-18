import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:natura_on_track/generated/l10n.dart';
import 'package:natura_on_track/src/helpers/LocalStorage.dart';
import 'package:natura_on_track/src/helpers/NatdsIcons.dart';
import 'package:natura_on_track/src/helpers/NavigatorNatura.dart';
import 'package:page_transition/page_transition.dart';

class LoginNativo extends StatefulWidget {
  LoginNativo({required this.onSelectCountryToChange});

  final Function onSelectCountryToChange;
  @override
  State<StatefulWidget> createState() => _LoginNativoState();
}

class _LoginNativoState extends State<LoginNativo> {
  @override
  Widget build(BuildContext context) {
    var localStorage = new LocalStorage();
    var pais = localStorage.getValueString('country');

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.grey.shade100, //or set color with: Color(0xFF0000FF)
    ));

    TextField inputUserName = TextField(
      decoration: InputDecoration(border: OutlineInputBorder(), filled: false, fillColor: Colors.white, labelText: S.of(context).helloWorld, hintText: 'informe seu codigo de consultora'),
    );

    TextField passwordInput = TextField(
      enableSuggestions: false,
      autocorrect: false,
      keyboardType: TextInputType.number,
      obscureText: true,
      decoration: InputDecoration(border: OutlineInputBorder(), filled: false, fillColor: Colors.white, labelText: 'Password / Senha', hintText: ''),
    );

    Container logo = Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 35, bottom: 70),
        child: SizedBox(
          width: 150,
          height: 125,
          child: NatDSIcons.naturaBCustom(width: 150, height: 125),
        ),
      ),
    );

    Container flag = Container(
      child: InkWell(
        onTap: () {
          var localStorage = new LocalStorage();
          localStorage.remove('country');
          widget.onSelectCountryToChange();
        },
        child: Image.asset(
          "./lib/assets/images/flags/${pais?.toString().toLowerCase()}.png",
          width: 50,
          height: 25,
        ),
      ),
    );

    SizedBox enterButton = SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        child: Text("INICIAR SESSÃO"),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber[800],
          onPrimary: Colors.white,
          textStyle: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {
          NavigatorNatura.pushHomeStart(context);
        },
      ),
    );

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Center(
          child: Column(
            children: [
              logo,
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: inputUserName,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: passwordInput,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 50, top: 55),
                        child: Container(
                          alignment: Alignment.center,
                          child: new RichText(
                            text: new TextSpan(
                              children: [
                                new TextSpan(
                                  text: 'Primeiro acesso ou Esqueci Minha Senha',
                                  style: new TextStyle(fontSize: 15, decoration: TextDecoration.underline, fontWeight: FontWeight.bold, color: Colors.grey.shade500),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Center(child: flag)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: enterButton,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
