import 'package:flutter/material.dart';
import 'package:gxp/src/components/templates/widgets_core/stateful_widget_nat.dart';
import 'package:gxp/src/designsystem/ds.dart';
import 'package:gxp/src/features/core/cards/CardArguments.dart';
import 'package:gxp/src/helpers/nativigator.dart';
import 'package:cached_network_image/cached_network_image.dart';

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

    children.add(ListTile(
      leading: (widget.icon == null ? null : CircleAvatar(backgroundColor: Colors.transparent, backgroundImage: NetworkImage(widget.icon!))),
      title: Text(
        widget.title,
        style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        widget.subTitle,
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
    ));

    if (null != widget.image) {
      Widget? cardImage = CachedNetworkImage(imageUrl: widget.image!);
      children.add(InkWell(
        onTap: () {
          widget.natvigator.pushCardDetail(context,
              arguments: CardArguments(
                title: widget.title,
                subTitle: widget.subTitle,
                text: widget.text,
                cardImage: cardImage,
                tagId: 'card ${widget.id}',
              ));
        },
        child: Padding(
          padding: EdgeInsets.all(2.0),
          child: SizedBox(
            width: double.infinity,
            child: CachedNetworkImage(
              placeholder: (context, url) => SizedBox(width: 17, height: 17, child: Center(child: CircularProgressIndicator(color: widget.designSystem.getColors().appBarBackground))),
              imageUrl: widget.image!,
            ),
          ),
        ),
      ));
    }

    children.add(Padding(
      padding: EdgeInsets.only(top: 15, bottom: 15),
      child: Text(
        widget.subTitle,
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
