import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            '記事を入力します',
            style: GoogleFonts.zenKakuGothicNew(
              fontSize: 28,
            ),
          ),
        ),
        body: const SingleChildScrollView(
          child: Center(
            child: Text('article'),
          ),
        ));
  }
}
