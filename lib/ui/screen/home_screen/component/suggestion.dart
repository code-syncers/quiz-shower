import 'package:flutter/material.dart';

class Suggestion extends StatelessWidget {
  const Suggestion({
    super.key,
    required this.text,
    required this.controller,
    this.isSearched = false,
  });

  final String text;
  final bool isSearched;
  final SearchController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
      ),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        borderRadius: BorderRadius.circular(4),
        onTap: () {
          controller.text = text;
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Row(
            children: [
              Icon(
                isSearched ? Icons.history_rounded : Icons.search_rounded,
                color: Theme.of(context)
                    .colorScheme
                    .onBackground
                    .withOpacity(0.75),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  text,
                  overflow: TextOverflow.fade,
                  maxLines: 1,
                  softWrap: false,
                ),
              ),
              IconButton(
                onPressed: () {
                  controller.text = text;
                },
                icon: Icon(
                  Icons.north_west_rounded,
                  color: Theme.of(context)
                      .colorScheme
                      .onBackground
                      .withOpacity(0.75),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
