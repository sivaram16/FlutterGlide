import 'package:flutter/material.dart';
import 'package:flutter_glide/screens/add_post/add_post.dart';
import 'package:flutter_glide/screens/home/gql/feed_gql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class ForYouComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final list = [true, false, false, true];
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AddPostScreen()));
          }),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(icon: Icon(Icons.filter_list), onPressed: () {}),
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
          ],
        ),
      ),
      body: Container(
        child: ListView.separated(
          padding: EdgeInsets.all(20),
          separatorBuilder: (b, i) =>
              Container(margin: EdgeInsets.only(top: 20)),
          itemCount: list.length,
          itemBuilder: (context, index) => feedItems(designer: list[index]),
        ),
      ),
    );
  }

  Widget feedItems({designer = false}) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFF2F2F2)),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
              ),
              Container(margin: EdgeInsets.only(left: 10)),
              Text("SivaPerumal", style: TextStyle(fontFamily: "Poppins")),
              Container(margin: EdgeInsets.only(left: 10)),
              Text(
                "ADDED A TUTORIAL",
                style: TextStyle(color: Color(0xFFA7A7A7)),
              ),
            ],
          ),
          Container(margin: EdgeInsets.only(top: 10)),
          Text("Design for Fluent UI",
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: designer ? "PlayfairDisplay" : "Poppins",
                  color: designer ? Color(0xFF019B3F) : Color(0xFF01579A))),
          Container(margin: EdgeInsets.only(top: 10)),
          Text("How to design user interfaces for Microsoft’s Fluent UI")
        ],
      ),
    );
  }

  Widget queryComponent() {
    return Query(
      options: QueryOptions(document: getPostsQuery),
      builder: (result, {refetch}) {
        if (result.errors == null && result.data != null) {
          print(result.data);
        }
      },
    );
  }
}
