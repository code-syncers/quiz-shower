import 'package:flutter/material.dart';
import 'package:quiz_shower/data/model/quiz.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final quizList = [Quiz.mock()];
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
              Column(
                children: [
                  const SizedBox(height: 16),
                  const Row(
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
                  const SizedBox(height: 12),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 24),
                      const Text('○/○○ 問正解(例)'),
                      const Spacer(),
                      Stack(
                        alignment: AlignmentDirectional.center,
                        children: <Widget>[
                          SizedBox(
                            width: 100,
                            height: 100,
                            child: CircularProgressIndicator(
                              strokeWidth: 15,
                              strokeAlign: BorderSide.strokeAlignOutside,
                              value: 0.78, //ここを正答率に変更する
                              color: Theme.of(context).colorScheme.primary,
                              backgroundColor: Theme.of(context)
                                  .colorScheme
                                  .onBackground
                                  .withOpacity(0.2),
                              strokeCap: StrokeCap.round,
                            ),
                          ),
                          const Text(
                            '78%', //ここを正答率に変更する
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Row(
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
                  const SizedBox(height: 12),
                  const Row(
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
              ...quizList.map((element) {
                return ListTile(
                  title: Text(element.title),
                  subtitle: Text(element.statement),
                  trailing: const Icon(Icons.navigate_next),
                  onTap: () {},
                );
              }).toList(),
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
