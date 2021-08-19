import 'package:flutter/material.dart';
import 'package:natura_on_track/src/components/core/CardArguments.dart';
import 'package:natura_on_track/src/helpers/NavigatorNatura.dart';

class CardTemplateNatura extends StatefulWidget {
  final int id;
  final String title;
  final String subTitle;
  final String text;
  final String? image;

  CardTemplateNatura({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.text,
    this.image,
    required this.id,
  }) : super(key: key);

  @override
  _CardTemplateNaturaState createState() => _CardTemplateNaturaState();
}

class _CardTemplateNaturaState extends State<CardTemplateNatura> {
  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];
    Widget? cardImage;

    children.add(ListTile(
      title: Text(widget.title),
      subtitle: Text(widget.subTitle),
    ));

    if (null != widget.image) {
      children.add(InkWell(
        onTap: () {
          NavigatorNatura.pushCardDetail(context,
              arguments: CardArguments(
                title: widget.title,
                cardImage: cardImage!,
                tagId: 'card ${widget.id}',
              ));
        },
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: SizedBox(
            height: 200,
            width: double.infinity,
            child: cardImage = Image.asset(
              widget.image!,
              isAntiAlias: true,
            ),
          ),
        ),
      ));
    }

    children.add(Padding(
      padding: EdgeInsets.all(5),
      child: Text(widget.text),
    ));

    children.add(
      ButtonBar(
        alignment: MainAxisAlignment.start,
        children: [
          TextButton(
            style: ButtonStyle(),
            onPressed: () {
              print("card detail");
              Navigator.of(context).pushNamed(
                "/cardDetail",
                arguments: CardArguments(
                  title: widget.title,
                  cardImage: cardImage!,
                  tagId: 'card ${widget.id}',
                ),
              );
            },
            child: const Text('ACTION 1'),
          ),
          TextButton(
            style: ButtonStyle(),
            onPressed: () {},
            child: const Text('ACTION 2'),
          ),
        ],
      ),
    );

    return Hero(
      tag: 'card ${widget.id}',
      transitionOnUserGestures: true,
      child: Card(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: children,
          ),
        ),
      ),
    );
  }
}
