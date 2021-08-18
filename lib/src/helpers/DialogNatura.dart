import 'package:flutter/material.dart';

class DialogNatura {
  static showDialogNatura({required BuildContext context, required String title, VoidCallback? cancel, VoidCallback? confirm}) {
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
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.orange.shade700),
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
                  style: TextStyle(color: Colors.orangeAccent),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.white),
                onPressed: () => confirm == null ? () {} : confirm(),
              ),
            ],
          );
        });
  }
}
