import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quiz_shower/ui/screen/home_screen/component/quiz_shower_elevated_button.dart';

class ShareAppScreen extends StatelessWidget {
  const ShareAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QuizShowerを共有'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(image: AssetImage('assets/images/quiz_shower.png')),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.apple),
                      SizedBox(width: 12.0),
                      Text('iOS'),
                      SizedBox(width: 16.0),
                      Text('App Store'),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      const Spacer(),
                      QuizShowerElevatedButton(
                        text: '共有',
                        onPressed: () {},
                        icon: const Icon(Icons.ios_share_rounded),
                      ),
                      const SizedBox(width: 12.0),
                      QuizShowerElevatedButton(
                        text: 'リンクをコピー',
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.link),
                      ),
                      const Spacer(),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.android),
                      SizedBox(width: 12.0),
                      Text('Android'),
                      SizedBox(width: 12.0),
                      Text('Google Play'),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          QuizShowerElevatedButton(
                            text: '共有',
                            onPressed: () {},
                            icon: const Icon(Icons.share_rounded),
                          ),
                          const SizedBox(width: 12.0),
                          QuizShowerElevatedButton(
                            text: 'リンクをコピー',
                            onPressed: () {},
                            icon: const Icon(Icons.copy_rounded),
                          ),
                        ],
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
