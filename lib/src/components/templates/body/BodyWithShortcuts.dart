import 'package:flutter/material.dart';
import 'package:natura_on_track/src/components/core/ShortcutsNatura.dart';

class BodyWithShortcuts extends StatelessWidget {
  final Widget child;

  BodyWithShortcuts({required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ShortcutsNatura(), child],
    );
  }
}
