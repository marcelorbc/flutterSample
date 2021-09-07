import 'package:flutter/material.dart';

class CardArguments {
  final String tagId;
  final String title;
  final String subTitle;
  final String text;
  final Widget cardImage;

  CardArguments({required this.subTitle, required this.text, required this.tagId, required this.cardImage, required this.title});
}
