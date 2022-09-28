import 'package:flutter/material.dart';

class SearchErrorHandler extends StatelessWidget {
  const SearchErrorHandler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: LinearProgressIndicator(
        color: Colors.green,
      ),
    );
  }
}
