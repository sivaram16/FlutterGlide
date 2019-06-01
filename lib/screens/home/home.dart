import 'package:flutter/material.dart';
import 'package:flutter_glide/screens/home/components/feed.dart';
import 'package:flutter_glide/screens/home/components/tab_bar.dart';
import 'components/community.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarComponent(
        color: Color(0xFF01579A),
        tabs: ["FOR YOU", "COMMUNITY", "PROFILE"],
        tabViews: <Widget>[ForYouComponent(), CommunityBar(), Container()],
      ),
    );
  }
}
