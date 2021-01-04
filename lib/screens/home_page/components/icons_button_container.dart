import 'package:flutter/material.dart';

class IconsButtonContainer extends StatelessWidget {
  const IconsButtonContainer({
    Key key,
    @required this.icon,
    @required this.onPress,
  }) : super(key: key);
  final IconData icon;
  final GestureTapCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        color: Colors.black,
        icon: Icon(icon),
        onPressed: onPress,
      ),
    );
  }
}
