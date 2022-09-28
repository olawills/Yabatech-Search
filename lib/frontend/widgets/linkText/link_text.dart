import 'package:flutter/material.dart';

class LinkText extends StatefulWidget {
  final Function()? onPressed;
  final TextStyle? textStyle;
  final String text;
  final String link;
  const LinkText({
    Key? key,
    required this.link,
    required this.text,
    this.onPressed,
    this.textStyle,
  }) : super(key: key);

  @override
  State<LinkText> createState() => _LinkTextState();
}

class _LinkTextState extends State<LinkText> {
  @override
  Widget build(BuildContext context) {
    bool showUnderline = false;
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onTap: widget.onPressed,
      onHover: (hovering) {
        setState(() {
          showUnderline = hovering;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.link,
            style: const TextStyle(fontSize: 14, color: Color(0xff202124)),
          ),
          Text(
            widget.text,
            style: widget.textStyle != null
                ? widget.textStyle?.copyWith(
                    decoration: showUnderline
                        ? TextDecoration.underline
                        : TextDecoration.none)
                : TextStyle(
                    color: const Color(0xFF1a0dab),
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    decoration: showUnderline
                        ? TextDecoration.underline
                        : TextDecoration.none,
                  ),
          ),
          // Text(
          //   widget.text,
          //   style: TextStyle(
          //     fontSize: 20,
          //     fontWeight: FontWeight.w400,
          //     color: blueColor,
          //     decoration: _showUnderline
          //         ? TextDecoration.underline
          //         : TextDecoration.none,
          //   ),
          // )
        ],
      ),
    );
  }
}
