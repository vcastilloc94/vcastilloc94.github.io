import 'package:flutter/material.dart';
import 'package:japoneses/Widgets/Constant.dart';
import 'package:japoneses/my_flutter_app_icons.dart';

class GamePage extends StatefulWidget {
  GamePage({Key key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(
          'Game',
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
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'TITLE',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'OpenSans'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            _Filters(
              onTapChange: (value) {
                setState(() {
                  _currentIndex = value;
                });
              },
            ),
            SizedBox(height: 20),
            IndexedStack(
              index: _currentIndex,
              children: [
                _All(),
                _Filter1(),
                _Filter2(),
                _Filter3(),
              ],
            )
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

class _Filters extends StatefulWidget {
  ValueChanged<int> onTapChange;

  _Filters({Key key, this.onTapChange}) : super(key: key);
  @override
  __FiltersState createState() => __FiltersState();
}

class __FiltersState extends State<_Filters> {
  int _currentIndex = 0;

  final fields = ['All', 'Filter', 'Filter', 'Filter'];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        4,
        (index) {
          return _currentIndex == index
              ? Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(color: backgroundColor),
                          child: Center(
                            child: Text(
                              fields[index],
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                )
              : Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            _currentIndex = index;
                            setState(() {
                              widget.onTapChange(index);
                            });
                          },
                          child: Container(
                            height: 30,
                            decoration: BoxDecoration(color: containersColor),
                            child: Center(
                              child: Text(
                                fields[index],
                                style: TextStyle(
                                    color: Color.fromARGB(255, 245, 242, 72)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                );
        },
      ),
    );
  }
}

class _All extends StatelessWidget {
  const _All({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _Dendama(),
          _Dendama(),
          _Dendama(),
          _Dendama(),
        ],
      ),
    );
  }
}

class _Filter1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        _Dendama2(),
        _Dendama2(),
        _Dendama2(),
        _Dendama2(),
      ],
    ));
  }
}

class _Filter2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _Dendama(),
          _Dendama(),
          _Dendama(),
          _Dendama(),
        ],
      ),
    );
  }
}

class _Filter3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _Dendama2(),
          _Dendama2(),
          _Dendama2(),
          _Dendama2(),
        ],
      ),
    );
  }
}

class _Dendama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _widht = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.only(top: 5),
          width: _widht,
          height: 120,
          decoration: BoxDecoration(
              color: containersColor, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('DENDAMA 01',
                        style: TextStyle(
                            color: Color.fromARGB(255, 245, 242, 72),
                            fontSize: 15)),
                    Container(
                      width: _widht - 150,
                      child: Text(
                        textExample,
                        maxLines: 3,
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: _widht - 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: SizedBox(),
                          ),
                          Expanded(
                            child: Container(
                              width: 80,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                child: Text(
                                  'Filter',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: Container(
                              width: 80,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                child: Text(
                                  'Filter',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}

class _Dendama2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _widht = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.only(top: 5),
          width: _widht,
          height: 120,
          decoration: BoxDecoration(
              color: containersColor, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('DENDAMA 02',
                        style: TextStyle(
                            color: Color.fromARGB(255, 245, 242, 72),
                            fontSize: 15)),
                    Container(
                      width: _widht - 150,
                      child: Text(
                        textExample,
                        maxLines: 3,
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: _widht - 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            flex: 1,
                            child: SizedBox(),
                          ),
                          Expanded(
                            child: Container(
                              width: 80,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                child: Text(
                                  'Filter',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: Container(
                              width: 80,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                child: Text(
                                  'Filter',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
