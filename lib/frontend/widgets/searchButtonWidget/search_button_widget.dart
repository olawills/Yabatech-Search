import 'package:flutter/material.dart';

class SearchButtonWidget extends StatelessWidget {
  final String title;
  final Function()? onpressed;
  const SearchButtonWidget({
    Key? key,
    required this.title,
    required this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: Text(title),
    );
  }
}
