import 'package:facebook_flutter_ver2/models/user_model.dart';
import 'package:flutter/material.dart';
import 'components/button_social_action.dart';
import 'components/user_status.dart';

class BodyHomePage extends StatelessWidget {
  const BodyHomePage({
    Key key,
    @required this.currentUser,
  }) : super(key: key);

  final User currentUser;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        child: Column(
          children: [
            UserStatus(currentUser: currentUser),
            Divider(height: 4.0),
            ButtonSocialAction(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Container(
                height: 50,
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
