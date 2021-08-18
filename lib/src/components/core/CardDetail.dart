import 'package:flutter/material.dart';
import 'package:natura_on_track/src/components/core/CardArguments.dart';
import 'package:natura_on_track/src/components/templates/pages/PageWithTopAndBottomBars.dart';

class CardDetail extends StatelessWidget {
  const CardDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as CardArguments;
    print(" card detail 2");
    return PageWithTopAndBottomBars(
      showButtonBar: false,
      child: Hero(
        tag: args.tagId,
        child: Card(
          child: Column(
            children: [
              SizedBox(
                height: 301,
                width: double.infinity,
                child: args.cardImage,
              ),
              Text(args.title),
            ],
          ),
        ),
      ),
      bottomSelectedIndex: 1,
    );
  }
}
