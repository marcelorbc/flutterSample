import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gxp/src/components/templates/widgets_core/stateful_widget_nat.dart';
import 'package:gxp/src/designsystem/ds.dart';
import 'package:gxp/src/features/core/bottomBar/BottomBarNatura.dart';
import 'package:gxp/src/helpers/nativigator.dart';

class PageWithTopAndBottomBars extends StatefullWidgetNatura {
  final Widget child;
  final List<Widget>? actions;
  final String? title;
  final bool showButtonBar;
  final int? bottomSelectedIndex;
  final bool? automaticallyImplyLeading;
  final Widget? drawer;
  final Natvigator natvigator;

  PageWithTopAndBottomBars(DesignSystem designSystem, {required this.natvigator, required this.child, required this.bottomSelectedIndex, this.title, this.automaticallyImplyLeading, this.actions, this.drawer, required this.showButtonBar}) : super(designSystem: designSystem);

  @override
  _PageWithTopAndBottomBarsState createState() {
    if (designSystem.isTheBodyShop()) {
      return _PageWithTopAndBottomBarsStateTheBodyShop();
    } else {
      return _PageWithTopAndBottomBarsStateDefault();
    }
  }
}

abstract class _PageWithTopAndBottomBarsState extends State<PageWithTopAndBottomBars> {
  @override
  Widget build(BuildContext context) {
    Widget titleWidget;
    if (null != widget.title) {
      titleWidget = Text(
        widget.title!,
        style: TextStyle(color: widget.designSystem.getColors().appBarText),
      );
    } else {
      titleWidget = getLogoAppBar();
    }

    return Scaffold(
      appBar: AppBar(
        actions: widget.actions,
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: widget.designSystem.getColors().appBarBackground),
        shadowColor: Colors.transparent,
        automaticallyImplyLeading: null == widget.automaticallyImplyLeading ? true : widget.automaticallyImplyLeading!,
        iconTheme: IconThemeData(
          color: widget.designSystem.getColors().appBarButton,
        ),
        bottom: PreferredSize(
          child: Container(
            color: widget.designSystem.getColors().appBarBottomline,
            height: 1.0,
          ),
          preferredSize: Size.fromHeight(1.0),
        ),
        backgroundColor: widget.designSystem.getColors().appBarBackground,
        centerTitle: true,
        title: titleWidget,
      ),
      drawer: widget.drawer,
      body: Container(
        color: widget.designSystem.getColors().background,
        child: Padding(
          padding: const EdgeInsets.only(top: 3),
          child: widget.child,
        ),
      ),
      bottomNavigationBar: widget.showButtonBar
          ? BottomBarNatura(
              widget.designSystem,
              natvigator: widget.natvigator,
              currentIndex: widget.bottomSelectedIndex!,
            )
          : null,
    );
  }

  SizedBox getLogoAppBar() {
    return SizedBox(
      width: 100,
      height: 40,
      child: widget.designSystem.getBrands().aOfficial(width: 100, height: 40),
    );
  }
}

class _PageWithTopAndBottomBarsStateDefault extends _PageWithTopAndBottomBarsState {}

class _PageWithTopAndBottomBarsStateTheBodyShop extends _PageWithTopAndBottomBarsState {
  @override
  SizedBox getLogoAppBar() {
    return SizedBox(
      width: 200,
      height: 50,
      child: widget.designSystem.getBrands().aCustom(width: 100, height: 40, color: widget.designSystem.getColors().appBarBrand),
    );
  }
}
