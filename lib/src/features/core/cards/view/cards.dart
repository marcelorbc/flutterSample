import 'dart:convert';

import 'package:gxp/src/features/core/cards/entities/card_entity.dart'
    as cardsEntity;
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:gxp/src/components/templates/widgets_core/stateful_widget_nat.dart';
import 'package:gxp/src/designsystem/ds.dart';
import 'package:gxp/src/features/core/cards/CardTemplateNatura.dart';
import 'package:gxp/src/helpers/nativigator.dart';

class Cards extends StatefullWidgetNatura {
  final DesignSystem designSystem;
  final Natvigator natvigator;

  Cards({required this.natvigator, required this.designSystem})
      : super(designSystem: designSystem);

  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  cardsEntity.Cards? cards;
  bool cardsLoaded = false;

  @override
  void initState() {
    http.get(
      Uri.parse(
          'https://apigw-proxy-gke-prd-sp-ssl.naturacloud.com/cards/card/user?key=AIzaSyB93O8z6HurOKauoyhuaavsS_Q5uRTkAHU'),
      headers: {
        "country": "BR",
        "userid": "49507184",
        "clientid": "a9df5608-3ee0-3c45-b305-84ec53797449",
      },
    ).then((response) {
      setState(() {
        this.cards = cardsEntity.Cards.fromJson(jsonDecode(response.body));
        this.cardsLoaded = true;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var children = <Widget>[
      Center(
        child: SizedBox(
          width: 17,
          height: 17,
          child: Center(
            child: CircularProgressIndicator(
              color: widget.designSystem.getColors().loading,
            ),
          ),
        ),
      )
    ];

    if (this.cardsLoaded) {
      var cardsWidgets = <CardTemplateNatura>[];

      this.cards!.response!.cards!.forEach((card) {
        var header = card!.metadata![0]!.title;
        var headerIcon = card.metadata![0]!.icon;
        var image = card.metadata![1]!.image;
        var summary = card.metadata![2]!.summary;
        var summaryText = card.metadata![2]!.text;

        cardsWidgets.add(CardTemplateNatura(
          widget.designSystem,
          natvigator: widget.natvigator,
          icon: headerIcon,
          image: image,
          title: header!,
          subTitle: summary!,
          text: summaryText!,
          id: card.combination!,
        ));
      });

      children = cardsWidgets;
    }

    return Container(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: children,
          ),
        ),
      ),
    );
  }
}
