import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _layout(),
    );
  }

  Widget _layout() {
    return Column(
      children: <Widget>[
        Container(margin: EdgeInsets.only(top: 30)),
        Padding(
            padding: EdgeInsets.all(20), child: Image.asset('assets/logo.png')),
        Expanded(child: Container(), flex: 1),
        _textField("Name"),
        Container(margin: EdgeInsets.only(top: 30)),
        _textField("Email Address"),
        Container(margin: EdgeInsets.only(top: 30)),
        _textField("Password"),
        Container(margin: EdgeInsets.only(top: 30)),
        Container(
            margin: EdgeInsets.only(left: 40, right: 40, bottom: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[_googleButton(), _nextbutton()],
            ))
      ],
    );
  }

  Widget _textField(String text) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(left: 40, right: 40),
      child: TextField(
          decoration: InputDecoration(
        hintText: "$text",
        hintStyle: TextStyle(fontSize: 18),
        border: InputBorder.none,
      )),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 16,
                offset: Offset(0, 4),
                color: Colors.black.withOpacity(.13))
          ]),
    );
  }

  Widget _googleButton() {
    return Container(
        margin: EdgeInsets.all(5),
        child: OutlineButton(
            onPressed: () {},
            child: Container(
              padding:
                  EdgeInsets.only(left: 30, right: 30, top: 13, bottom: 14),
              child: Image.asset("assets/googleButton.png"),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(16)),
            )));
  }

  Widget _nextbutton() {
    return Container(
      child: RaisedButton(
        padding: EdgeInsets.only(left: 47, right: 47, top: 17, bottom: 17),
        color: Color(0xFF01579A),
        onPressed: () {},
        child: Text(
          "NEXT",
          style: TextStyle(color: Colors.white),
        ),
      ),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
    );
  }
}
