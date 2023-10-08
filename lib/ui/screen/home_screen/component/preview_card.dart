import 'package:flutter/material.dart';
import 'package:quiz_shower/data/model/article.dart';
import 'package:quiz_shower/ui/screen/quiz_screen/quiz_screen.dart';
import 'package:url_launcher/url_launcher_string.dart';

class PreviewCard extends StatelessWidget {
  const PreviewCard({
    super.key,
    required this.article,
    required this.isQuizMode,
  });

  final Article article;
  final bool isQuizMode;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.transparent,
      elevation: isQuizMode ? 4 : 1,
      surfaceTintColor:
          isQuizMode ? null : Theme.of(context).colorScheme.tertiary,
      child: InkWell(
        onTap: () {
          isQuizMode
              ? Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const QuizScreen(),
                  ),
                )
              : launchUrlString(article.url ?? '');
        },
        child: ListTile(
          title: Text(article.title),
          subtitle: Text(article.description),
          trailing: Icon(
            isQuizMode ? Icons.quiz_rounded : Icons.article_rounded,
            color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
          ),
        ),
      ),
    );
  }
}
