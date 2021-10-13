import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:josnplacholder/screens/users_screen/bloc/user_bloc.dart';
import 'package:josnplacholder/screens/users_screen/bloc/user_event.dart';
import 'package:josnplacholder/screens/users_screen/bloc/user_state.dart';

import '../../../../injection.dart';

class MessageTab extends StatefulWidget {
  final String? imageURL;
  final int? id;
  final String? name;
  final String? username;

  const MessageTab({
    Key? key,
    required this.imageURL,
    required this.id,
    required this.name,
    required this.username,
  }) : super(key: key);

  @override
  _MessageTabState createState() => _MessageTabState();
}

class _MessageTabState extends State<MessageTab> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.green
        ),
        //color: Colors.green,
        height: 70,
        child: Row(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(widget.imageURL!),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("${widget.name}"),
                      Text("${widget.username}")
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 178.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("5 min ago"),
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    child: Center(
                      child: Text("${widget.id}"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
