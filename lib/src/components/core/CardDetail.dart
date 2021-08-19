import 'package:flutter/material.dart';
import 'package:natura_on_track/src/components/core/CardArguments.dart';
import 'package:natura_on_track/src/components/templates/pages/PageWithTopAndBottomBars.dart';

class CardDetail extends StatelessWidget {
  final CardArguments arguments;
  const CardDetail({Key? key, required this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(" card detail 2");
    return PageWithTopAndBottomBars(
      showButtonBar: false,
      child: Hero(
        tag: arguments.tagId,
        child: Card(
          child: Column(
            children: [
              SizedBox(
                height: 301,
                width: double.infinity,
                child: arguments.cardImage,
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
