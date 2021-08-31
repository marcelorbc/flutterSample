import 'package:flutter/material.dart';
import 'package:gxp/src/designsystem/design_system.dart';

abstract class StatefullWidgetNatura extends StatefulWidget {
  final DesignSystem designSystem;

  StatefullWidgetNatura({required this.designSystem, Key? key}) : super(key: key);
}
