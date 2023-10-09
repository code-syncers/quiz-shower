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
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.account_circle,
                size: 80,
              ),
              const SizedBox(
                width: 30,
              ),
              const Column(
                children: [
                  Text('ユーザー名', style: TextStyle(fontSize: 20)),
                  Text(
                    'ユーザーID',
                    style: TextStyle(fontSize: 16),
                  ), // ユーザーIDを追加
                ],
              ),
              const SizedBox(
                width: 30,
              ),
              IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
