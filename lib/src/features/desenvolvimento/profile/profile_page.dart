import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gxp/src/components/templates/body/BodyBlank.dart';
import 'package:gxp/src/components/templates/pages/PageWithTopAndBottomBars.dart';
import 'package:gxp/src/components/templates/widgets_core/stateful_widget_nat.dart';
import 'package:gxp/src/designsystem/ds.dart';
import 'package:gxp/src/features/desenvolvimento/profile/entities/profile.dart';
import 'package:gxp/src/features/desenvolvimento/profile/models/app_data.dart';
import 'package:gxp/src/features/desenvolvimento/profile/view/profile.dart';
import 'package:gxp/src/helpers/nativigator.dart';

class ProfilePage extends StatefullWidgetNatura {
  final Natvigator natvigator;

  ProfilePage(DesignSystem ds, {required this.natvigator}) : super(designSystem: ds);

  @override
  State<StatefulWidget> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  double opacityLevel = 1.0;

  @override
  Widget build(BuildContext context) {
    return PageWithTopAndBottomBars(
      widget.designSystem,
      natvigator: widget.natvigator,
      showButtonBar: true,
      title: "Profile",
      bottomSelectedIndex: 2,
      child: BodyBlank(child: ProfileUi(designSystem: widget.designSystem)),
    );
  }
}

class UserProfilePage extends StatefulWidget {
  UserProfilePage();

  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  late Profile profile;

  @override
  void initState() {
    profile = AppData.profiles[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(height: 20),
        AnimatedSwitcher(
          duration: Duration(milliseconds: 750),
          transitionBuilder: (Widget child, Animation<double> animation) => SlideTransition(
            child: child,
            position: Tween<Offset>(begin: Offset(0.0, 1.0), end: Offset(0.0, 0.0)).animate(animation),
          ),
          child: HeaderSection(
            profile: profile,
          ),
        ),
        SizedBox(height: 40),
        Container(
          child: Wrap(
            children: <Widget>[
              for (int i = 0; i < AppData.profiles.length; i++)
                GestureDetector(
                  onTap: () {
                    profile = AppData.profiles[i];
                    setState(() {});
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.width / 3,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppData.profiles[i].imageUrl), fit: BoxFit.cover)),
                  ),
                )
            ],
          ),
        )
      ],
    );
  }
}

class HeaderSection extends StatelessWidget {
  final Profile profile;
  HeaderSection({required this.profile});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: 110,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(image: AssetImage(profile.imageUrl), fit: BoxFit.cover),
            ),
          ),
          SizedBox(height: 20),
          Container(
            alignment: Alignment.center,
            child: Text(
              profile.title,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.center,
            child: Text(
              profile.subtitle,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      profile.totalPost,
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text('Post')
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      profile.totalFollowers,
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text('Followers')
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      profile.totalFollowing,
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text('Following')
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
