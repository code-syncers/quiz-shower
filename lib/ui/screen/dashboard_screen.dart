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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Text(
                    'プロフィール',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 16),
                  Icon(
                    Icons.edit_rounded,
                    size: 20,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Row(
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
              const SizedBox(height: 8),
              const Divider(thickness: 1),
              const SizedBox(height: 8),
              const Row(
                children: [
                  Text(
                    '履歴：',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 16),
                  Text(
                    '記事名(例)',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 16),
                  Icon(
                    Icons.edit_rounded,
                    size: 20,
                  ),
                ],
              ),
              const Column(
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
              const SizedBox(height: 8),
              const Divider(thickness: 1),
              const SizedBox(height: 8),
              const Text(
                '復習する',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              ListTile(
                title: const Row(
                  children: [
                    Text(
                      'Q21',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 8),
                    Text('透明UIを作る'),
                  ],
                ),
                subtitle: const Text('透明UIについて説明したものを次のうちから選べ'),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {},
              ),
              const SizedBox(height: 8),
              ListTile(
                title: const Row(
                  children: [
                    Text(
                      'Q21',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 8),
                    Text('透明UIを作る'),
                  ],
                ),
                subtitle: const Text('透明UIについて説明したものを次のうちから選べ'),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {},
              ),
              const SizedBox(height: 8),
              ListTile(
                title: const Row(
                  children: [
                    Text(
                      'Q21',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 8),
                    Text('透明UIを作る'),
                  ],
                ),
                subtitle: const Text('透明UIについて説明したものを次のうちから選べ'),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {},
              ),
              const SizedBox(height: 8),
              ListTile(
                title: const Row(
                  children: [
                    Text(
                      'Q21',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 8),
                    Text('透明UIを作る'),
                  ],
                ),
                subtitle: const Text('透明UIについて説明したものを次のうちから選べ'),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {},
              ),
              const SizedBox(height: 8),
              const Divider(thickness: 1),
              const SizedBox(height: 8),
              const Text(
                '通知',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Column(
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
                        'クイズを解こう！',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Icon(
                        Icons.check_box_outline_blank_rounded,
                        size: 20,
                      ),
                      SizedBox(width: 8),
                      Text(
                        '対戦依頼が来ています',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
