import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gxp/src/designsystem/ds.dart';
import 'package:gxp/src/features/core/cards/CardTemplateNatura.dart';
import 'package:gxp/src/components/templates/body/BodyWithShortcuts.dart';
import 'package:gxp/src/components/templates/pages/PageWithTopAndBottomBars.dart';
import 'package:gxp/src/features/core/cards/view/cards.dart';
import 'package:gxp/src/features/core/menu/menu.dart';
import 'package:gxp/src/helpers/dialog_natura.dart';
import 'package:gxp/src/helpers/local_storage.dart';
import 'package:gxp/src/helpers/nativigator.dart';

class HomeSimple extends StatefulWidget {
  final Natvigator natvigator;
  final DesignSystem designSystem;

  const HomeSimple({Key? key, required this.designSystem, required this.natvigator}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeSimpleState();
}

class _HomeSimpleState extends State<HomeSimple> {
  double opacityLevel = 1.0;

  @override
  Widget build(BuildContext context) {
    var pais = LocalStorage.getValueString('country');

    return PageWithTopAndBottomBars(
      widget.designSystem,
      natvigator: widget.natvigator,
      showButtonBar: true,
      bottomSelectedIndex: 0,
      drawer: MenuDrawer(
        LocalStorage.getBusinessUnit()!,
        LoadMenuImpl(repository: MenuRepositoryHardCoded()),
        designSystem: widget.designSystem,
        natvigator: widget.natvigator,
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: InkWell(
            onTap: () async => await DialogNatura(widget.designSystem, context).showDialogExitApp(() => Navigator.of(context).popAndPushNamed("/")),
            child: widget.designSystem.getIcons().outlinedNavigationExit(color: widget.designSystem.getColors().appBarButton),
          ),
        ),
      ],
      child: BodyWithShortcuts(
        natvigator: widget.natvigator,
        designSystem: widget.designSystem,
        child: Cards(natvigator: widget.natvigator, designSystem: widget.designSystem),
      ),
    );
  }
}
