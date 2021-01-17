import 'package:flutter/material.dart';
import 'package:japoneses/Widgets/Constant.dart';
import 'package:japoneses/my_flutter_app_icons.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          'ACCOUNT',
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
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Text(
                'TITLE',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'OpenSans'),
              ),
            ),
            _Fields(),
            SizedBox(height: 20),
            Center(
              child: SizedBox(
                width: 170,
                height: 40,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: Color.fromARGB(255, 200, 10, 10),
                  splashColor: Color.fromARGB(255, 255, 0, 0),
                  child: Center(
                    child: Text(
                      'DELETE ACCOUNT',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(height: 50),
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

class _Fields extends StatelessWidget {
  const _Fields({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 40.0, right: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: _width,
            height: 370,
            decoration: BoxDecoration(
              color: containersColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: SizedBox(),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          'ID: 7780',
                          style: TextStyle(color: titleColor),
                        ),
                      ),
                    ],
                  ),
                  _AllField(
                    label: 'Name',
                  ),
                  _AllField(
                    label: 'Language',
                  ),
                  _AllField(
                    label: 'Country',
                  ),
                  _AllField(
                    label: 'Information',
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: SizedBox(
                      width: 80,
                      height: 30,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        color: Colors.black45,
                        splashColor: Colors.black,
                        child: Center(
                          child: Text(
                            'ADD',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _AllField extends StatelessWidget {
  const _AllField({Key key, this.label}) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Text(
          label,
          style: TextStyle(color: titleColor),
        ),
        SizedBox(height: 10),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: SizedBox(
            width: _width - 40,
            height: 30,
            child: TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(color: Colors.white, fontSize: 12),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(bottom: 18, left: 10),
                hintText: label,
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 11,
                ),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: containColor)),
                fillColor: containColor,
                filled: true,
                focusedBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: containColor),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
