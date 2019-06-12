import 'package:flutter/material.dart';
import 'package:meetup_one/src/secondScreen.dart';

class BigListItem extends StatelessWidget {
  static const SQUARE_SIDE = 110.0;
  static const RADIUS_IMG = 20.0;

  final String imageFilePath;
  final String title;
  final String author;

  BigListItem({this.imageFilePath, this.title, this.author});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => SecondScreen(),
            ),
          );
        },
        child: Row(
          children: <Widget>[
            Container(
              height: SQUARE_SIDE,
              width: SQUARE_SIDE,
              child: SizedBox.expand(
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(RADIUS_IMG)),
                  child: Image.asset(
                    imageFilePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    this.title,
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    this.author,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
