import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ダッシュボード',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'プロフィール',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(width: 16),
                  Icon(
                    Icons.edit_rounded,
                    size: 20,
                  ),
                ],
              ),
              Divider(thickness: 1),
              SizedBox(height: 16),
              Row(
                children: [
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '表示名：ゆうま(例)',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'exp：100(例)',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.account_circle_rounded,
                    size: 60,
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Text(
                    '履歴：',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(width: 16),
                  Text(
                    '記事名(例)',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(width: 16),
                  Icon(
                    Icons.edit_rounded,
                    size: 20,
                  ),
                ],
              ),
              Divider(thickness: 1),
              Column(
                children: [
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Icon(
                        Icons.check_box_outline_blank_rounded,
                        size: 20,
                      ),
                      SizedBox(width: 8),
                      Text(
                        '正答率',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      SizedBox(width: 24),
                      Text('○/○○ 問正解(例)'),
                      Spacer(),
                      Text('ここにグラフを表示させる'),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Icon(
                        Icons.check_box_outline_blank_rounded,
                        size: 20,
                      ),
                      SizedBox(width: 8),
                      Text(
                        '対戦結果',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      SizedBox(width: 24),
                      Text('対戦結果を表示させる'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                '復習する',
                style: TextStyle(fontSize: 20),
              ),
              Divider(thickness: 1),
              SizedBox(height: 16),
              Text(
                '通知',
                style: TextStyle(fontSize: 20),
              ),
              Divider(thickness: 1),
            ],
          ),
        ),
      ),
    );
  }
}
