import 'package:flutter/material.dart';
import 'package:flutter_glide/screens/home/gql/feed_gql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class AddPostScreen extends StatefulWidget {
  @override
  _AddPostScreenState createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  Map<String, String> input;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(context),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Add new post",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }

  Widget body(context) {
    return Column(
      children: <Widget>[
        Container(margin: EdgeInsets.only(top: 40)),
        Text(
          "Select the category of post",
          style: TextStyle(color: Colors.black),
          textAlign: TextAlign.center,
        ),
        Container(margin: EdgeInsets.only(top: 40)),
        textField("Title"),
        Container(margin: EdgeInsets.only(top: 20)),
        textField("Description"),
        Container(margin: EdgeInsets.only(top: 20)),
        textField("Type"),
        Container(margin: EdgeInsets.only(top: 20)),
        // mutationComponent(context),
        Container(
          padding: EdgeInsets.only(left: 40, right: 40),
          child: RaisedButton(
            color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Icon(Icons.done,color: Colors.white,), Text("Submit",style: TextStyle(color: Colors.white),)],
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        )
      ],
    );
  }

  Widget mutationComponent(context) {
    return Mutation(
      options: MutationOptions(document: createPostMutation),
      onCompleted: (result) {},
      builder: (runMutaion, res) {
        // return OutlineButton(
        //   child: Text("Submit"),
        //   onPressed: () {
        //     runMutaion({
        //       "title": input["Title"],
        //       "description": input["Description"],
        //       "type": input["Type"]
        //     });
        //   },
        // );
        return OutlineButton(
          child: Text("he"),
        );
      },
    );
  }

  Widget textField(String text) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(left: 40, right: 40),
      child: TextField(
          onChanged: (val) {
            setState(() {
              input[text] = val;
            });
          },
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
}
