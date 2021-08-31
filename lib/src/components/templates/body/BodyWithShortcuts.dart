import 'package:flutter/material.dart';
import 'package:gxp/src/components/templates/widgets_core/stateful_widget_nat.dart';
import 'package:gxp/src/designsystem/ds.dart';
import 'package:gxp/src/features/core/shortcuts/ShortcutsNatura.dart';
import 'package:gxp/src/helpers/nativigator.dart';

class BodyWithShortcuts extends StatefullWidgetNatura {
  final Widget child;
  final Natvigator natvigator;
  final DesignSystem designSystem;

  BodyWithShortcuts({required this.natvigator, required this.child, required this.designSystem}) : super(designSystem: designSystem);

  @override
  _BodyWithShortcutsState createState() => _BodyWithShortcutsState();
}

class _BodyWithShortcutsState extends State<BodyWithShortcuts> {
  double opacityLevel = 1;

  ScrollController? _scrollController;

  _scrollListener() {
    setState(() {
      print(1 - (_scrollController!.position.pixels / 100));
      opacityLevel = 1 - (_scrollController!.position.pixels / 100);
      if (1 - (_scrollController!.position.pixels / 100) < 0) {
        opacityLevel = 0;
      }
    });
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController!.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ScrollConfiguration(
          behavior: ScrollBehavior(),
          child: GlowingOverscrollIndicator(
            axisDirection: AxisDirection.down,
            color: widget.designSystem.getColors().scrollGlow,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 97.0),
                child: widget.child,
              ),
              controller: _scrollController,
            ),
          ),
        ),
        ShortcutsNatura(
          natvigator: widget.natvigator,
          opacityLevel: opacityLevel,
          designSystem: widget.designSystem,
        ),
      ],
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
