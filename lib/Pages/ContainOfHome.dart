import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:japoneses/Widgets/Constant.dart';

class ContainOfHome extends StatelessWidget {
  const ContainOfHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
        automaticallyImplyLeading: false,
        toolbarHeight: kToolbarHeight / 2.5,
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 35),
            _Header(),
            SizedBox(height: 20),
            _Number(width: _width),
            SizedBox(height: 40),
            _Information(width: _width)
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
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 35,
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

class _Number extends StatelessWidget {
  const _Number({
    Key key,
    @required double width,
  })  : _width = width,
        super(key: key);

  final double _width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      width: _width,
      height: 170,
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text('TITLE',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'OpenSans')),
              ),
              Center(
                child: Container(
                  width: _width - 20,
                  height: 120,
                  decoration: BoxDecoration(
                      color: containColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      '17.30',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 60,
                          fontFamily: 'Montserrat'),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: _width / 2 - (_width - 110 - 50) / 2,
            child: Container(
              width: _width - 200,
              height: 40,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 45, 45, 45),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                'Senior',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Montserrat'),
              )),
            ),
          )
        ],
      ),
    );
  }
}

class _Information extends StatelessWidget {
  const _Information({
    Key key,
    @required double width,
  })  : _width = width,
        super(key: key);

  final double _width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'DENDAMA01',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(width: 10),
              Text(
                'GAME01',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          SizedBox(height: 13),
          Container(width: _width, height: 180, color: Colors.white),
          SizedBox(height: 30),
          Text('TITLE',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'OpenSans')),
          Container(
            width: _width,
            height: 100,
            child: Text(
              textExample,
              maxLines: 5,
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
