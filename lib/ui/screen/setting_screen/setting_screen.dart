import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  SettingScreenState createState() => SettingScreenState();
}

class SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(
                  flex: 2,
                ),
                const Icon(
                  Icons.account_circle,
                  size: 80,
                ),
                const Spacer(
                  flex: 1,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ユーザー名', style: TextStyle(fontSize: 20)),
                    Text(
                      'ユーザーID',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                const Spacer(
                  flex: 3,
                ),
                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () {},
                ),
                const Spacer(
                  flex: 2,
                ),
              ],
            ),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'アプリの設定',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 16,
            ),
            const Row(
              children: [
                Icon(
                  Icons.dark_mode,
                  size: 30,
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  'アプリのテーマ',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Spacer(),
                Text('現在のテーマ'),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const Row(
              children: [
                Icon(
                  Icons.settings,
                  size: 30,
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  '表示形式',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Spacer(),
                Text('インプットorアウトプット'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
