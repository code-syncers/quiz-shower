import 'package:flutter/material.dart';

class AddAuthScreen extends StatelessWidget {
  const AddAuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add auth'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: const Text('Add auth'),
    );
  }
}
