import 'package:flutter/material.dart';
import 'package:gxp/src/components/templates/widgets_core/stateful_widget_nat.dart';
import 'package:gxp/src/designsystem/ds.dart';
import 'package:gxp/src/features/core/cards/CardArguments.dart';
import 'package:gxp/src/helpers/nativigator.dart';
import 'package:flutter_html/flutter_html.dart';

class CardTemplateNatura extends StatefullWidgetNatura {
  final String id;
  final String? icon;
  final String title;
  final String subTitle;
  final String text;
  final String? image;
  final Natvigator natvigator;

  CardTemplateNatura(DesignSystem ds, {this.icon, required this.natvigator, Key? key, required this.title, required this.subTitle, required this.text, this.image, required this.id}) : super(designSystem: ds);

  @override
  _CardTemplateNaturaState createState() => _CardTemplateNaturaState();
}

class _CardTemplateNaturaState extends State<CardTemplateNatura> {
  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];
    Widget? cardImage;

    children.add(ListTile(
      leading: (widget.icon == null ? null : CircleAvatar(backgroundColor: Colors.transparent, backgroundImage: NetworkImage(widget.icon!))),
      title: Html(data: widget.title),
      subtitle: Text(widget.subTitle),
    ));

    if (null != widget.image) {
      children.add(InkWell(
        onTap: () {
          widget.natvigator.pushCardDetail(context,
              arguments: CardArguments(
                title: widget.title,
                cardImage: Image.network(widget.image!),
                tagId: 'card ${widget.id}',
              ));
        },
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: SizedBox(
            height: 200,
            width: double.infinity,
            child: Image.network(widget.image!),
          ),
        ),
      ));
    }

    children.add(Padding(
      padding: EdgeInsets.all(5),
      child: Text(widget.text,
        style: TextStyle(fontSize: 11),
      ),
    ));

    return Hero(
      tag: 'card ${widget.id}',
      transitionOnUserGestures: true,
      child: Card(
        color: widget.designSystem.getColors().backgroundCard,
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
