import 'package:flutter/material.dart';
import 'package:gxp/src/components/templates/widgets_core/stateful_widget_nat.dart';
import 'package:gxp/src/designsystem/ds.dart';

class ProfileUi extends StatefullWidgetNatura {
  final DesignSystem designSystem;

  ProfileUi({required this.designSystem, Key? key}) : super(designSystem: designSystem, key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<ProfileUi> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Stack(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 85),
                  child: SizedBox(
                    width: double.infinity,
                    child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 90, bottom: 25.0),
                              child: Text("Nome consultora", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ValueText("Código", "24758956"),
                                  ValueText("Sector", "3254"),
                                  ValueText("Líder", "Alva Castillo"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Isabel castilho",
                                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  width: 150,
                  height: 175,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [BoxShadow(blurRadius: 10, color: Colors.grey.shade500, spreadRadius: 5, offset: Offset.fromDirection(15))],
                    ),
                    child: CircleAvatar(
                      radius: 15.0,
                      backgroundImage: ExactAssetImage("./lib/assets/images/profile/profile1.jpg"),
                      backgroundColor: Colors.red,
                      child: Text(""),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Text("periodo"),
                      Text("periodo"),
                      Text("periodo"),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  ValueText(String s, String t) => Padding(
        padding: const EdgeInsets.all(2),
        child: Container(
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(7), border: Border.all(width: 0.5, color: Colors.grey.shade300)),
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Column(
              children: [
                Text(s, style: TextStyle(fontSize: 12)),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(t, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
        ),
      );
}
