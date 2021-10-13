import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:josnplacholder/screens/posts_screen/bloc/post_bloc.dart';
import 'package:josnplacholder/screens/posts_screen/bloc/post_event.dart';
import 'package:josnplacholder/screens/posts_screen/bloc/post_state.dart';
import 'package:josnplacholder/screens/posts_screen/widget/post_tabs.dart';

import '../../../injection.dart';

class PostUi extends StatefulWidget {
  const PostUi({Key? key}) : super(key: key);

  @override
  _PostUiState createState() => _PostUiState();
}

class _PostUiState extends State<PostUi> {
  final _bloc = sl<PostBloc>();
  @override
  void initState() {
    super.initState();
    _bloc.add(PostData());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocBuilder(
        bloc: _bloc,
        builder: (BuildContext context, PostState state) {
          return SafeArea(
            child: Scaffold(
              body: ListView.builder(
                itemCount: state.postdata.hashCode,
                itemBuilder: (BuildContext context, int index) {
                  return PostTap(
                    id: (state.postdata == null || state.postdata!.id == null)
                        ? 0
                        : state.postdata!.id,
                    title: (state.postdata == null ||
                            state.postdata!.title == null)
                        ? ""
                        : state.postdata!.title,
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
