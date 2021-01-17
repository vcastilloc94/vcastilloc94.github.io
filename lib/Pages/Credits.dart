import 'package:flutter/material.dart';

import 'package:japoneses/Widgets/Constant.dart';

class CreditsPage extends StatelessWidget {
  const CreditsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
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
          'DENDAMA',
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: _height * 0.20, left: 30, right: 30),
        child: Container(
          height: _height * 0.80,
          width: _width,
          decoration: BoxDecoration(
              color: containersColor, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: EdgeInsets.only(left: 30, right: 30, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: _width,
                  height: 70,
                  color: Colors.white,
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Developers',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    SizedBox(height: 20),
                    Text(
                      textExample,
                      maxLines: 2,
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Director',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    SizedBox(height: 20),
                    Text(
                      textExample,
                      maxLines: 2,
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Marketing',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    SizedBox(height: 20),
                    Text(
                      textExample,
                      maxLines: 2,
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
