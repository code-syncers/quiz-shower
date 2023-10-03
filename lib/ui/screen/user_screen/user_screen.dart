import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('記事のタイトル'),
        ),
        body: const SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('正答率(最新)'),
            SizedBox(height: 20),
            Text('習得状況'),
            SizedBox(height: 20),
            Text('復習する'),
            SizedBox(height: 20),
          ]),
        )));
  }
}
