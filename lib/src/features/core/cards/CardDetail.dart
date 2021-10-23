import 'package:flutter/material.dart';
import 'package:gxp/src/designsystem/ds.dart';
import 'package:gxp/src/features/core/cards/CardArguments.dart';
import 'package:gxp/src/components/templates/pages/PageWithTopAndBottomBars.dart';
import 'package:gxp/src/helpers/nativigator.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:url_launcher/url_launcher.dart';

class CardDetail extends StatelessWidget {
  final CardArguments arguments;
  final DesignSystem designSystem;
  final Natvigator natvigator;

  CardDetail({required this.designSystem, required this.arguments, required this.natvigator});

  @override
  Widget build(BuildContext context) {
    Map<String, Style> stylesCss = Map<String, Style>();
    stylesCss["*"] = Style(fontSize: FontSize(16));

    return PageWithTopAndBottomBars(
      designSystem,
      natvigator: natvigator,
      showButtonBar: false,
      child: Hero(
        tag: arguments.tagId,
        child: Card(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: arguments.cardImage,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    arguments.title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Html(
                    data: arguments.text,
                    style: stylesCss,
                    onLinkTap: (url, _, __, ___) {
                      launch(url!);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSelectedIndex: 1,
    );
  }
}
