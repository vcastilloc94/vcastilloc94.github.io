import 'package:flutter/material.dart';
import 'package:japoneses/Pages/ArcadePage.dart';
import 'package:japoneses/Pages/ThirdArcadePage.dart';
import 'package:japoneses/Widgets/Constant.dart';
import 'package:japoneses/my_flutter_app_icons.dart';

class SecondArcadePage extends StatelessWidget {
  const SecondArcadePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        toolbarHeight: kToolbarHeight / 1.5,
        elevation: 0,
        title: Text(
          'ARCADE',
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 35),
            _Header(),
            SizedBox(height: 35),
            _Information(width: _width, height: _height),
            SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: Row(
                children: [
                  _Senior(width: _width),
                  SizedBox(width: 20),
                  _INTERMEDIATE(width: _width),
                ],
              ),
            ),
            SizedBox(height: 30)
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
            ),
          ),
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

class _Information extends StatelessWidget {
  const _Information({
    Key key,
    @required double width,
    @required double height,
  })  : _width = width,
        _height = height,
        super(key: key);

  final double _width;
  final double _height;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Text(
            'TITLE',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                fontFamily: 'OpenSans'),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Container(
            width: _width,
            height: 150,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 0, 0),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('THIS IS A TITLE',
                      style: TextStyle(color: Colors.white, fontSize: 13)),
                  SizedBox(height: 10),
                  Text(
                    textExample,
                    maxLines: 4,
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _Senior extends StatelessWidget {
  const _Senior({
    Key key,
    @required double width,
  })  : _width = width,
        super(key: key);

  final double _width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _continue(context, 'MOBILE DATA');
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            width: (_width / 2) - 25 - 10,
            decoration: BoxDecoration(
                color: containColor, borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                Container(
                  width: 70,
                  height: 70,
                  color: Colors.white,
                ),
                SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mobile Data',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Montserrat'),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Information:  89',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    Text(
                      'Inf:  12',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 40,
            width: (_width / 2) - 25 - 10,
            decoration: BoxDecoration(
                color: containColor, borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: Text(
                'SENIOR',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _INTERMEDIATE extends StatelessWidget {
  const _INTERMEDIATE({
    Key key,
    @required double width,
  })  : _width = width,
        super(key: key);

  final double _width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _continue(context, 'ARCADE DATA');
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            width: (_width / 2) - 25 - 10,
            decoration: BoxDecoration(
                color: containersColor,
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                Container(
                  width: 70,
                  height: 70,
                  color: Colors.white,
                ),
                SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Arcade Data',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Montserrat'),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Information:  59',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    Text(
                      'Inf:  12',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    Text(
                      'DENDAMILE:  100 pts',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    Text(
                      'Date:  2020/10/19',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 40,
            width: (_width / 2) - 25 - 10,
            decoration: BoxDecoration(
                color: containersColor, borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: Text(
                'INTERMEDIATE',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          )
        ],
      ),
    );
  }
}

Future _continue(BuildContext context, String title) {
  return showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) {
      return AlertDialog(
        backgroundColor: containColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        title: Center(
          child: Text(
            title,
            style: TextStyle(color: titleColor, fontSize: 14),
          ),
        ),
        content: Text(
          textExample,
          maxLines: 2,
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
        actions: [
          Container(width: 30),
          FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => ArcadePage(),
                  ),
                  (route) => false);
            },
            color: Colors.black,
            child: Center(
              child: Text(
                'Back',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(width: 30),
          FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ThirdArcadePage(),
              ));
            },
            color: Colors.black,
            child: Center(
              child: Text('Continue', style: TextStyle(color: Colors.white)),
            ),
          ),
          Container(width: 30),
        ],
      );
    },
  );
}
