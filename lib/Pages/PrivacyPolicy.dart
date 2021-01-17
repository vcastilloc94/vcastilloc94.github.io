import 'package:flutter/material.dart';
import 'package:japoneses/Widgets/Constant.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key key}) : super(key: key);

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
        padding: EdgeInsets.only(top: _height * 0.15, left: 30, right: 30),
        child: Container(
          height: _height * 0.75,
          width: _width,
          decoration: BoxDecoration(
              color: containersColor, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: EdgeInsets.only(left: 30, right: 30, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Privacy Policy',
                  style: TextStyle(color: titleColor),
                ),
                SizedBox(height: 20),
                Center(
                  child: Container(
                    width: _width - 100,
                    child: Text(
                      textExample,
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Container(
                    width: _width - 100,
                    child: Text(
                      textExample,
                      maxLines: 5,
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
