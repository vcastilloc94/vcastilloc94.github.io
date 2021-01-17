import 'package:flutter/material.dart';
import 'package:japoneses/Pages/AccountPage.dart';
import 'package:japoneses/Pages/ArcadePage.dart';
import 'package:japoneses/Pages/Credits.dart';
import 'package:japoneses/Pages/DefaultPage.dart';
import 'package:japoneses/Pages/PrivacyPolicy.dart';
import 'package:japoneses/Pages/TermsOfService.dart';
import 'package:japoneses/Widgets/Constant.dart';
import 'package:japoneses/my_flutter_app_icons.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.white),
        ),
        automaticallyImplyLeading: false,
        toolbarHeight: kToolbarHeight / 2.5,
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 35),
            _Header(),
            SizedBox(height: 35),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text('TITLE',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'OpenSans')),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Container(
                        width: _width / 2 - 20,
                        height: _width / 2 - 40,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      _Container(
                        title: 'ARCADE SETTINGS',
                        route: ArcadePage(),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 30, bottom: 10),
              child: Text('TITLE',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'OpenSans')),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      _Container(
                        title: 'MY ACCOUNT',
                        route: AccountPage(),
                      ),
                      SizedBox(width: 10),
                      _Container(
                        title: 'CHECK  DENDAMA',
                        route: DefaultPage(),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  _Container(
                    title: 'SUPPORT',
                    route: DefaultPage(),
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: _width / 2 - 125),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => TermOfService(),
                      ),
                    ),
                    child: Text('Terms of Service',
                        style: TextStyle(color: titleColor, fontSize: 12)),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => PrivacyPolicy(),
                      ),
                    ),
                    child: Text('Privacy Policy',
                        style: TextStyle(color: titleColor, fontSize: 12)),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => CreditsPage(),
                      ),
                    ),
                    child: Text('Credits',
                        style: TextStyle(color: titleColor, fontSize: 12)),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
              child: Container(
            width: 35.0 * 2,
            height: 35.0 * 2,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(35),
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: Icon(
              MyFlutterApp.bat4,
              color: Colors.white,
              size: 45,
            ),
          )),
        ),
        Expanded(
          child: Center(),
        ),
        Expanded(
          child: Center(
            child: Container(
              height: 100,
              width: 80,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}

class _Container extends StatelessWidget {
  final String title;

  final route;

  const _Container({Key key, this.title, this.route}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Container(
      height: _width / 2 - 40,
      width: _width / 2 - 20,
      decoration: BoxDecoration(
          color: containersColor, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(fontSize: 10, color: titleColor),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  textExample,
                  style: TextStyle(color: Colors.white, fontSize: 10),
                  maxLines: 2,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  textExample,
                  style: TextStyle(color: Colors.white, fontSize: 10),
                  maxLines: 2,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Container(
                  width: 80,
                  height: 20,
                  decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(10)),
                  child: FlatButton(
                    splashColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    onPressed: () =>
                        Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => route,
                    )),
                    child: Center(
                      child: Text(
                        'BUTTON',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
