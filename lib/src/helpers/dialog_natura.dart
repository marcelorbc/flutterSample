import 'package:flutter/material.dart';
import 'package:gxp/generated/l10n.dart';
import 'package:gxp/src/designsystem/ds.dart';

class DialogNatura {
  DesignSystem designSystem;
  BuildContext context;

  DialogNatura(this.designSystem, this.context);

  showDialogExitApp(VoidCallback confirm) {
    return this.showDialogNatura(
        title: S.of(context).exitSession,
        cancel: () {
          Navigator.of(context).pop(false);
        },
        confirm: confirm);
  }

  showDialogNatura({required String title, VoidCallback? cancel, VoidCallback? confirm}) {
    return showDialog<bool>(
        context: context,
        useSafeArea: true,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            content: Text(title),
            titlePadding: EdgeInsets.all(5),
            actions: <Widget>[
              ElevatedButton(
                child: Text(
                  'Não',
                  style: TextStyle(color: designSystem.getColors().buttonDarkText),
                ),
                style: designSystem.getStyles().dialogExitSessionElevatedButtonCancel,
                onPressed: () {
                  if (cancel != null) {
                    print("Chamada cancelada para Dialog $title");
                    cancel();
                  }
                },
              ),
              ElevatedButton(
                child: Text(
                  'Sim',
                  style: TextStyle(color: designSystem.getColors().buttonText),
                ),
                style: designSystem.getStyles().dialogExitSessionElevatedButtonConfirm,
                onPressed: () => confirm == null ? () {} : confirm(),
              ),
            ],
          );
        });
  }
}
