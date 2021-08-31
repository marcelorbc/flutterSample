import 'package:flutter/material.dart';
import 'package:gxp/src/designsystem/ds.dart';
import 'package:gxp/src/features/core/cards/CardArguments.dart';
import 'package:gxp/src/components/templates/pages/PageWithTopAndBottomBars.dart';
import 'package:gxp/src/helpers/nativigator.dart';

class CardDetail extends StatelessWidget {
  final CardArguments arguments;
  final DesignSystem designSystem;
  final Natvigator natvigator;

  CardDetail({required this.designSystem, required this.arguments, required this.natvigator});

  @override
  Widget build(BuildContext context) {
    print(" card detail 2");
    return PageWithTopAndBottomBars(
      designSystem,
      natvigator: natvigator,
      showButtonBar: false,
      child: Hero(
        tag: arguments.tagId,
        child: Card(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  height: 301,
                  width: double.infinity,
                  child: arguments.cardImage,
                ),
              ),
              Text(arguments.title),
            ],
          ),
        ),
      ),
      bottomSelectedIndex: 1,
    );
  }
}
