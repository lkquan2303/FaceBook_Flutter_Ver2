import 'package:facebook_flutter_ver2/config/constants.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;

  const CustomTabBar(
      {Key key,
      @required this.icons,
      @required this.selectedIndex,
      @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicator: BoxDecoration(
        border: Border(
          top: BorderSide(color: kPrimaryColor, width: 3.0),
        ),
      ),
      tabs: icons
          .asMap()
          .map(
            (key, value) => MapEntry(
              key,
              Tab(
                icon: Icon(
                  value,
                  color: key == selectedIndex ? kPrimaryColor : Colors.black45,
                  size: 30,
                ),
              ),
            ),
          )
          .values
          .toList(),
          onTap: onTap,
    );
  }
}
