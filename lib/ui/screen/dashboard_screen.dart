import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.of(context).pop(); // 1つ目の画面を戻る
            Navigator.of(context).pop(); // 2つ目の画面を戻る
          },
        ),
        title: const Text('ダッシュボード'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'プロフィール',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 16),
              Text(
                '履歴',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 16),
              Text(
                '復習する',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 16),
              Text(
                '通知',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
