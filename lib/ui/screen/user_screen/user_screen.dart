import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('記事のタイトル'),
      ),
      body: const Center(
        child: Text('user'),
      ),
    );
  }
}
