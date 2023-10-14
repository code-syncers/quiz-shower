import 'package:flutter/material.dart';

class DebugScreen extends StatelessWidget {
  const DebugScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('debugModeで表示させるもの一覧'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('記事画面'),
            onTap: () {
              Navigator.pushNamed(context, '/article');
            },
          ),
          ListTile(
            title: const Text('デバッグ情報2'),
            onTap: () {
              // onTap action goes here
            },
          ),
          ListTile(
            title: const Text('デバッグ情報3'),
            onTap: () {
              // onTap action goes here
            },
          ),
          // Add more ListTiles here
        ],
      ),
    );
  }
}
