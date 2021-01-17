import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:japoneses/Widgets/Constant.dart';
import 'package:japoneses/my_flutter_app_icons.dart';

class ThirdArcadePage extends StatelessWidget {
  const ThirdArcadePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _widht = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
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
          children: [
            SizedBox(height: 35),
            _Header(),
            SizedBox(height: 20),
            _Infomation(widht: _widht),
            SizedBox(height: 20),
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
            _SecondInformation(
              title: 'DENDAMILE',
            ),
            SizedBox(height: 10),
            _SecondInformation(
              title: 'DENDAMA',
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
                color: Color.fromARGB(255, 250, 170, 20),
                borderRadius: BorderRadius.circular(35),
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: Icon(
                MyFlutterApp.bat2,
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

class _Infomation extends StatelessWidget {
  const _Infomation({
    Key key,
    @required double widht,
  })  : _widht = widht,
        super(key: key);

  final double _widht;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: _widht,
        height: 200,
        decoration: BoxDecoration(
          color: containersColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'DENDAMA CARD',
                style: TextStyle(color: titleColor),
              ),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 140,
                    width: 100,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name: James Cameron',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'ID: 0949402DV7YT',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Information: 12',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'KENTEI: BASIC',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'DENDAMILE:  100pts',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      SizedBox(height: 30),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SecondInformation extends StatelessWidget {
  const _SecondInformation({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Container(
        width: _width,
        height: 150,
        decoration: BoxDecoration(
            color: containersColor, borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(
                  title,
                  style: TextStyle(color: titleColor),
                ),
                SizedBox(height: 10),
                Container(
                  width: _width <= 320 ? _width / 2 - 25 : _width / 2,
                  height: 80,
                  child: Text(
                    textExample,
                    maxLines: 4,
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
