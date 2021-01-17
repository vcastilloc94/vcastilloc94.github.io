import 'package:flutter/material.dart';
import 'package:japoneses/my_flutter_app_icons.dart';

class CustomBottonNavigatorBar extends StatefulWidget {
  final ValueChanged<int> onTapChanged;
  CustomBottonNavigatorBar({Key key, this.onTapChanged}) : super(key: key);

  @override
  _CustomBottonNavigatorBarState createState() =>
      _CustomBottonNavigatorBarState();
}

class _CustomBottonNavigatorBarState extends State<CustomBottonNavigatorBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    final icons = [
      MyFlutterApp.trending_up,
      MyFlutterApp.gamepad,
      MyFlutterApp.settings,
    ];
    return Container(
      width: _width,
      color: Colors.black,
      height: kBottomNavigationBarHeight,
      child: Row(
        children: List.generate(icons.length, (index) {
          return index == _currentIndex
              ? Expanded(
                  child: Container(
                      height: kBottomNavigationBarHeight,
                      color: Colors.transparent,
                      child: Icon(
                        icons[index],
                        color: Colors.white,
                        size: 25,
                      )),
                )
              : Expanded(
                  child: GestureDetector(
                    onTap: () {
                      _currentIndex = index;
                      setState(
                        () {
                          widget.onTapChanged(index);
                        },
                      );
                    },
                    child: Container(
                        color: Colors.transparent,
                        height: kBottomNavigationBarHeight,
                        child: Icon(
                          icons[index],
                          color: Colors.grey,
                          size: 25,
                        )),
                  ),
                );
        }),
      ),
    );
  }
}
