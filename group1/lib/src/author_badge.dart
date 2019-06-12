import 'package:flutter/material.dart';

class AuthorBadge extends StatelessWidget {
  static const RADIUS = 50.0;

  final String profileImagePath;
  final String authorName;

  AuthorBadge({this.profileImagePath, this.authorName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          radius: RADIUS,
          backgroundImage: AssetImage(profileImagePath),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          this.authorName,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
