import 'package:flutter/material.dart';

class CommunityBar extends StatefulWidget {
  @override
  _CommunityBarState createState() => _CommunityBarState();
}

class _CommunityBarState extends State<CommunityBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _layout(),
    );
  }

  Widget _layout() {
    return Column(
      children: <Widget>[
        _exploreGroups(),
        // _reviewProjects(),
        // _contributetoProjects(),
        // Text(
        //   "OPEN CHALLENGES",
        //   style: TextStyle(fontSize: 16, color: Colors.black),
        // ),
        // _flutterCreate(),
        // _heroChallenge(),
      ],
    );
  }

  Widget _exploreGroups() {
    return Container(
      margin: EdgeInsets.all(10),
      child: Padding(
          padding: EdgeInsets.only(right: 15, left: 19, bottom: 13, top: 13),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Explore profiles",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Poppins'),
                  ),
                  Text(
                    "Visit people’s profiles and say hi!",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  )
                ],
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.white,
              )
            ],
          )),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color.fromRGBO(191, 18, 18, 1),
      ),
    );
  }
}
