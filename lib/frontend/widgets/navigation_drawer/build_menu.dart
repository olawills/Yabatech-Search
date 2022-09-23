import 'package:flutter/material.dart';

class BuildMenu extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback? onClicked;
  const BuildMenu({
    Key? key,
    required this.text,
    required this.icon,
    this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const color = Colors.black54;
    // const hoverColor = Color.fromRGBO(50, 75, 205, 1);
    return ListTile(
      leading: Icon(
        icon,
        color: color,
        size: 30,
      ),
      title: Text(
        text,
        style: const TextStyle(
          color: color,
          fontSize: 18,
        ),
      ),
      onTap: onClicked,
    );
  }
}
