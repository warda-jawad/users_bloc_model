import 'package:flutter/material.dart';

class PostTap extends StatefulWidget {
  final int? id;
  final String? title;
  const PostTap({Key? key, required this.id, required this.title})
      : super(key: key);

  @override
  _PostTapState createState() => _PostTapState();
}

class _PostTapState extends State<PostTap> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          trailing: Column(
            children: [
              Text(
                "5 min ago",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red, // inner circle color
                ),
                child: Center(
                  child: Text("${widget.id}"),
                ),
              )
            ],
          ),
          title: Padding(
            padding: const EdgeInsets.only(right: 88.0),
            child: Column(
              children: [
                Text("${widget.title}"),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 55.0, right: 5),
          child: Divider(
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
