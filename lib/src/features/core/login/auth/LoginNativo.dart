import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gxp/generated/l10n.dart';
import 'package:gxp/src/features/commons/entities/commons_entities.dart';
import 'package:gxp/src/helpers/LocalStorage.dart';
import 'package:gxp/src/helpers/NatdsIcons.dart';
import 'package:gxp/src/helpers/NavigatorNatura.dart';
import 'package:http/http.dart' as http;

class AuthResponse {
  final int id;
  final String name;
  final String nameComplete;
  final String aliais;
  final String document;
  final String email;
  final String image;

  AuthResponse({required this.image, required this.id, required this.name, required this.nameComplete, required this.aliais, required this.document, required this.email});

  factory AuthResponse.fromJson(Map<String, dynamic> json) {
    return AuthResponse(
      id: int.parse(json['id']),
      name: json['name'],
      nameComplete: json['nameComplete'],
      aliais: json['aliais'],
      document: json['document'],
      email: json['email'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id.toString(),
        "name": name,
        "nameComplete": nameComplete,
        "aliais": aliais,
        "document": document,
        "email": email,
        "image": image,
      };
}

class LoginNativo extends StatefulWidget {
  LoginNativo({required this.onSelectCountryToChange});

  final Function onSelectCountryToChange;
  @override
  State<StatefulWidget> createState() => _LoginNativoState();
}

class _LoginNativoState extends State<LoginNativo> {
  Future<http.Response> authValidate({String? title}) {
    return http.post(
      Uri.parse('http://192.168.1.16:3000/auth/validate'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: null,
    );
  }

  @override
  Widget build(BuildContext context) {
    var pais = LocalStorage.getValueString('country');

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

    Hero logo = Hero(
        tag: 'splashLogo',
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 70),
            child: SizedBox(
              width: 150,
              height: 125,
              child: NatDSIcons.naturaBCustom(width: 150, height: 125),
            ),
          ),
        ));

    Container flag = Container(
      child: InkWell(
        onTap: () {
          LocalStorage.remove('country');
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
          /*
          authValidate().then((response) {
            var authResponse = AuthResponse.fromJson(jsonDecode(response.body));
            LocalStorage.setAuthResponse(authResponse);
            
          });*/
          var company = Company(uid: '1', name: 'Natura');
          var country = Country(lang: 'pt', initials: 'BR', uid: '1', name: 'Brazil');
          var businessModel = BusinessModel(sequence: 1, uid: '1', name: 'Venda Direta');

          LocalStorage.setBusinessUnit(BusinessUnit(company: company, country: country, businessModel: businessModel));
          NavigatorNatura.pushHomeStart(context);
        },
      ),
    );

    return Scaffold(
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
              padding: const EdgeInsets.all(20),
              child: enterButton,
            ),
          ],
        ),
      ),
    );
  }
}
