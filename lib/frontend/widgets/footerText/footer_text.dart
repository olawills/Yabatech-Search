import 'package:flutter/material.dart';

class FooterText extends StatelessWidget {
  final String title;
  final Function()? onPressed;
  const FooterText({
    Key? key,
    required this.title,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(
          color: Color(0xff70757a),
          fontSize: 16,
        ),
      ),
    );
  }
}
