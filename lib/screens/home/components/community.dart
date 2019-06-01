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
    return ListView(
      children: <Widget>[
        _exploreGroups(),
        _reviewProjects(),
        _contributetoProjects(),
        Container(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              "OPEN CHALLENGES",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            )),
        _flutterCreate(),
        _heroChallenge(),
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
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
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

  Widget _reviewProjects() {
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
                    "Review projects",
                    style: TextStyle(
                        color: Color.fromRGBO(70, 12, 165, 1),
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "View projects that invite you to review \n and comment on them",
                    style: TextStyle(
                        color: Color.fromRGBO(70, 12, 165, 1), fontSize: 14),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                  ),
                  Text(
                    "6 projects waiting to be reviewed",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Icon(
                Icons.arrow_forward,
                color: Color.fromRGBO(70, 12, 165, 1),
              )
            ],
          )),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFFC4C4C4)),
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
    );
  }

  Widget _contributetoProjects() {
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
                    "Contribute to projects",
                    style: TextStyle(
                        color: Color.fromRGBO(184, 112, 3, 1),
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Join projects that are \nlooking for collaborators.",
                    style: TextStyle(
                        color: Color.fromRGBO(184, 112, 3, 1), fontSize: 14),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                  ),
                  Text(
                    "15 projects looking for collaborators",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Icon(
                Icons.arrow_forward,
                color: Color.fromRGBO(184, 112, 3, 1),
              )
            ],
          )),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFFC4C4C4)),
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
    );
  }

  Widget _flutterCreate() {
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
                    "Flutter Create 2.0 (2 kb)",
                    style: TextStyle(
                        color: Color.fromRGBO(1, 87, 154, 1),
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Make something awesome, this time \nwith only 2 kilobytes",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 200),
                    child: Text(
                      "15 DAYS TO SUBMIT",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Icon(
                Icons.arrow_forward,
                color: Color.fromRGBO(184, 112, 3, 1),
              )
            ],
          )),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFF01579A)),
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
    );
  }

  Widget _heroChallenge() {
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
                    "Hero Animation Challenge",
                    style: TextStyle(
                        color: Color.fromRGBO(1, 155, 63, 1),
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Make an awesome UI that showcases the\n Hero widget the best.",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 200),
                    child: Text(
                      "NO DEADLINE",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Icon(
                Icons.arrow_forward,
                color: Color.fromRGBO(184, 112, 3, 1),
              )
            ],
          )),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFF019B3F)),
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
    );
  }
}
