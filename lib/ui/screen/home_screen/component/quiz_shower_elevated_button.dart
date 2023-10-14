import 'package:flutter/material.dart';

class QuizShowerElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Widget icon;
  const QuizShowerElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: icon,
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.onSecondaryContainer,
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
      ),
      label: Text(text),
    );
  }
}
