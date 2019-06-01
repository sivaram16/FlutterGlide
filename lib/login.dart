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
          margin: ,
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _button(),
            _button(),
          ],
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

  Widget _button() {
    return RaisedButton();
  }
}
