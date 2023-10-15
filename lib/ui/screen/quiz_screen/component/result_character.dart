import 'package:flutter/material.dart';

class ResultCharacter extends StatelessWidget {
  final int correctAnswers;

  const ResultCharacter({
    super.key,
    required this.correctAnswers,
  });

  @override
  Widget build(BuildContext context) {
    IconData iconData;
    String message;

    switch (correctAnswers) {
      case 0:
        iconData = Icons.sentiment_satisfied_rounded;
        message = 'まだまだこれから！';
        break;
      case 1:
        iconData = Icons.sentiment_satisfied_rounded;
        message = '頑張ろう！';
        break;
      case 2:
        iconData = Icons.sentiment_satisfied_rounded;
        message = 'いいね！';
        break;
      case 3:
        iconData = Icons.mood_rounded;
        message = 'その調子！';
        break;
      case 4:
        iconData = Icons.mood_rounded;
        message = 'すごい！';
        break;
      case 5:
        iconData = Icons.sentiment_very_satisfied_rounded;
        message = '天才！';
        break;
      default:
        iconData = Icons.sentiment_satisfied_rounded;
        message = 'まだまだこれから！';
        break;
    }

    return SizedBox(
      width: 300,
      height: 200,
      child: Column(
        children: [
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(iconData, size: 80)],
          ),
          Text(message, style: const TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
