import 'package:flutter/material.dart';
import 'package:quiz_shower/ui/screen/setting_screen/add_auth_screen.dart';
import 'package:quiz_shower/ui/screen/setting_screen/change_email_screen.dart';
import 'package:quiz_shower/ui/screen/setting_screen/change_password_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  SettingScreenState createState() => SettingScreenState();
}

class SettingScreenState extends State<SettingScreen> {
  ThemeMode _selectedValue = ThemeMode.light;

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
                const Spacer(flex: 2),
                const Icon(Icons.account_circle_rounded, size: 80),
                const Spacer(flex: 1),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('表示名', style: TextStyle(fontSize: 20)),
                    Text('ユーザーID', style: TextStyle(fontSize: 16)),
                  ],
                ),
                const Spacer(flex: 3),
                IconButton(
                  icon: const Icon(Icons.edit_rounded),
                  onPressed: () {},
                ),
                const Spacer(flex: 2),
              ],
            ),
            const Divider(thickness: 1),
            const SizedBox(height: 16),
            const Text(
              'アプリの設定',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Row(
                        children: [
                          Icon(Icons.dark_mode_rounded, size: 28),
                          SizedBox(width: 16),
                          Text('アプリのテーマ'),
                        ],
                      ),
                      content: SingleChildScrollView(
                        child: Column(
                          children: [
                            const Divider(thickness: 1),
                            RadioListTile<ThemeMode>(
                              groupValue: _selectedValue,
                              value: ThemeMode.light,
                              onChanged: (ThemeMode? value) {
                                setState(() {
                                  _selectedValue = value!;
                                });
                              },
                              title: const Text('ライトモード'),
                            ),
                            RadioListTile<ThemeMode>(
                              groupValue: _selectedValue,
                              value: ThemeMode.dark,
                              onChanged: (ThemeMode? value) {
                                setState(() {
                                  _selectedValue = value!;
                                });
                              },
                              title: const Text('ダークモード'),
                            ),
                            RadioListTile<ThemeMode>(
                              groupValue: _selectedValue,
                              value: ThemeMode.system,
                              onChanged: (ThemeMode? value) {
                                setState(() {
                                  _selectedValue = value!;
                                });
                              },
                              title: const Text('自動で切り替え'),
                            ),
                            const Divider(thickness: 1),
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('キャンセル'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('決定'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Container(
                color: Colors.transparent,
                child: const Row(
                  children: [
                    Icon(Icons.dark_mode_rounded, size: 28),
                    SizedBox(width: 16),
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
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Row(
                        children: [
                          Icon(Icons.settings_rounded, size: 28),
                          SizedBox(width: 16),
                          Text('表示形式'),
                        ],
                      ),
                      content: SingleChildScrollView(
                        child: Column(
                          children: [
                            const Divider(thickness: 1),
                            RadioListTile<ThemeMode>(
                              groupValue: _selectedValue,
                              value: ThemeMode.light,
                              onChanged: (ThemeMode? value) {
                                setState(() {
                                  _selectedValue = value!;
                                });
                              },
                              title: const Text('記事モード'),
                            ),
                            RadioListTile<ThemeMode>(
                              groupValue: _selectedValue,
                              value: ThemeMode.dark,
                              onChanged: (ThemeMode? value) {
                                setState(() {
                                  _selectedValue = value!;
                                });
                              },
                              title: const Text('クイズモード'),
                            ),
                            const Divider(thickness: 1),
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('キャンセル'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('決定'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Container(
                color: Colors.transparent,
                child: const Row(
                  children: [
                    Icon(Icons.settings_rounded, size: 28),
                    SizedBox(width: 16),
                    Text(
                      '表示形式',
                      style: TextStyle(fontSize: 16),
                    ),
                    Spacer(),
                    Text('記事orクイズ'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Row(
                        children: [
                          Icon(Icons.notifications_rounded, size: 28),
                          SizedBox(width: 16),
                          Text('通知の設定'),
                        ],
                      ),
                      content: SingleChildScrollView(
                        child: Column(
                          children: [
                            const Divider(thickness: 1),
                            RadioListTile<ThemeMode>(
                              groupValue: _selectedValue,
                              value: ThemeMode.light,
                              onChanged: (ThemeMode? value) {
                                setState(() {
                                  _selectedValue = value!;
                                });
                              },
                              title: const Text('1日1回'),
                            ),
                            RadioListTile<ThemeMode>(
                              groupValue: _selectedValue,
                              value: ThemeMode.dark,
                              onChanged: (ThemeMode? value) {
                                setState(() {
                                  _selectedValue = value!;
                                });
                              },
                              title: const Text('1日2回'),
                            ),
                            const Divider(thickness: 1),
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('キャンセル'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('決定'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Container(
                color: Colors.transparent,
                child: const Row(
                  children: [
                    Icon(Icons.notifications_rounded, size: 28),
                    SizedBox(width: 16),
                    Text(
                      '通知の設定',
                      style: TextStyle(fontSize: 16),
                    ),
                    Spacer(),
                    Text('現在の通知設定'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Divider(thickness: 1),
            const SizedBox(height: 16),
            const Text(
              'アカウントの設定',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ChangeEmailScreen(),
                      ),
                    );
                  },
                  child: Container(
                    color: Colors.transparent,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.mail_rounded, size: 28),
                        SizedBox(width: 16),
                        Text(
                          'メールアドレスを変更',
                          style: TextStyle(fontSize: 16),
                        ),
                        Spacer(),
                        Icon(Icons.navigate_next_rounded, size: 24),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ChangePasswordScreen(),
                      ),
                    );
                  },
                  child: Container(
                    color: Colors.transparent,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.lock_rounded, size: 28),
                        SizedBox(width: 16),
                        Text(
                          'パスワードを変更',
                          style: TextStyle(fontSize: 16),
                        ),
                        Spacer(),
                        Icon(Icons.navigate_next_rounded, size: 24),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AddAuthScreen(),
                      ),
                    );
                  },
                  child: Container(
                    color: Colors.transparent,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.verified_user_rounded, size: 30),
                        SizedBox(width: 16),
                        Text('認証方法を追加', style: TextStyle(fontSize: 16)),
                        Spacer(),
                        Icon(Icons.navigate_next_rounded, size: 24),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Row(
                            children: [
                              Icon(Icons.logout_rounded, size: 28),
                              SizedBox(width: 16),
                              Text('ログアウト'),
                            ],
                          ),
                          content: const SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(height: 16),
                                Text('本当にログアウトしますか？'),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('キャンセル'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('ログアウト'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Container(
                    color: Colors.transparent,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.logout_rounded, size: 30),
                        SizedBox(width: 16),
                        Text('ログアウト', style: TextStyle(fontSize: 16)),
                        Spacer(),
                        Icon(Icons.navigate_next_rounded, size: 24),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Row(
                            children: [
                              Icon(Icons.person_off_rounded, size: 28),
                              SizedBox(width: 16),
                              Text('アカウントを削除'),
                            ],
                          ),
                          content: const SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(height: 16),
                                Text('本当にアカウントを削除しますか？'),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('キャンセル'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                'アカウントを削除',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.error,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Container(
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.person_off_rounded,
                          size: 28,
                          color: Theme.of(context).colorScheme.error,
                        ),
                        const SizedBox(width: 16),
                        Text(
                          'アカウントを削除',
                          style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.error,
                          ),
                        ),
                        const Spacer(),
                        const Icon(Icons.navigate_next_rounded, size: 24),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
