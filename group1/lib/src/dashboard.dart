import 'package:flutter/material.dart';
import 'package:meetup_one/components/rounded_icon_button.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'author_badge.dart';
import 'big_list_item.dart';

class Dashboard extends StatelessWidget {
  final RADIUS = 30.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF13665C),
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: SlidingUpPanel(
          maxHeight: 550,
          minHeight: 250,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(RADIUS),
            topRight: Radius.circular(RADIUS),
          ),
          body: SizedBox.expand(
            child: Center(
              child: Container(
                color: Color(0xFF13665C),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 16.0,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.menu),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Text(
                        "Browse",
                        style: TextStyle(
                            fontSize: 36, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Text("Find podcast that suit your interest"),
                      SizedBox(
                        height: 36.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          enabledBorder: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(32.0),
                            ),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          focusedBorder: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(32.0),
                            ),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(32.0),
                            ),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          hintText: 'Type keyword',
                          filled: true,
                          fillColor: Color(0x66FFFFFF),
                          contentPadding:
                              const EdgeInsets.fromLTRB(32, 20, 32, 20),
                        ),
                      ),
                      SizedBox(
                        height: 48.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          RoundIconButton(
                            icon: Icons.star,
                            title: "Popular",
                            onPress: () {},
                          ),
                          RoundIconButton(
                            icon: Icons.trending_up,
                            title: "Trending",
                            onPress: () {},
                          ),
                          RoundIconButton(
                            icon: Icons.access_time,
                            title: "Recent",
                            onPress: () {},
                          ),
                          RoundIconButton(
                            icon: Icons.bubble_chart,
                            title: "Magic",
                            onPress: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          panel: SizedBox.expand(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(RADIUS),
                topRight: Radius.circular(RADIUS),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0, bottom: 20),
                      child: Center(
                        child: Container(
                          child: Text(
                            'Handpicked',
                            style:
                                TextStyle(color: Colors.black, fontSize: 20.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Color(0xfff6ab82),
                          ),
                          height: 6.0,
                          width: 40.0,
                        ),
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            BigListItem(
                              imageFilePath: "assets/back2.jpg",
                              title: "Financial Freedom",
                              author: "Natasha Rose",
                            ),
                            BigListItem(
                              imageFilePath: "assets/back1.jpg",
                              title: "Minimalism Lifestyle",
                              author: "Jane Rose",
                            ),
                            BigListItem(
                              imageFilePath: "assets/back3.jpg",
                              title: "Bisnis Strategy",
                              author: "Ronald Godez",
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 68.0, bottom: 30.0),
                              child: Text(
                                "Top Authors",
                                style:
                                TextStyle(color: Colors.black, fontSize: 20.0),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                AuthorBadge(
                                  authorName: "Jane Rose",
                                  profileImagePath: "assets/image-1.png",
                                ),
                                AuthorBadge(
                                  authorName: "Old Man McGee",
                                  profileImagePath: "assets/image-2.png",
                                ),
                                AuthorBadge(
                                  authorName: "Robert Dun",
                                  profileImagePath: "assets/image-3.png",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
