import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gxp/src/features/core/bottomBar/BottomBarNatura.dart';
import 'package:gxp/src/helpers/NatDSIcons.dart';

class PageWithTopAndBottomBars extends StatefulWidget {
  final Widget child;
  final List<Widget>? actions;
  final String? title;
  final bool showButtonBar;
  final int? bottomSelectedIndex;
  final bool? automaticallyImplyLeading;
  final Widget? drawer;

  PageWithTopAndBottomBars({required this.child, required this.bottomSelectedIndex, this.title, this.automaticallyImplyLeading, this.actions, this.drawer, required this.showButtonBar});

  @override
  _PageWithTopAndBottomBarsState createState() => _PageWithTopAndBottomBarsState();
}

class _PageWithTopAndBottomBarsState extends State<PageWithTopAndBottomBars> {
  @override
  Widget build(BuildContext context) {
    Widget titleWidget;
    if (null != widget.title) {
      titleWidget = Text(
        widget.title!,
        style: TextStyle(color: Colors.black87),
      );
    } else {
      titleWidget = SizedBox(
        width: 100,
        height: 40,
        child: NatDSIcons.naturaACustom(width: 100, height: 40),
      );
    }

    return Scaffold(
      appBar: AppBar(
        actions: widget.actions,
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.white),
        shadowColor: Colors.transparent,
        automaticallyImplyLeading: null == widget.automaticallyImplyLeading ? true : widget.automaticallyImplyLeading!,
        iconTheme: IconThemeData(
          color: widget.bottomSelectedIndex == -1 ? Colors.white : Colors.black87,
        ),
        bottom: PreferredSize(
          child: Container(
            color: Colors.grey.shade400,
            height: 1.0,
          ),
          preferredSize: Size.fromHeight(1.0),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: titleWidget,
      ),
      drawer: widget.drawer,
      body: Container(
        color: Colors.grey.shade200,
        child: Padding(
          padding: const EdgeInsets.only(top: 3),
          child: SingleChildScrollView(child: widget.child),
        ),
      ),
      bottomNavigationBar: widget.showButtonBar
          ? BottomBarNatura(
              currentIndex: widget.bottomSelectedIndex!,
            )
          : null,
    );
  }
}
