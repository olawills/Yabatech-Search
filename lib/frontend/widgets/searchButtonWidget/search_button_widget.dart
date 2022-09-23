import 'package:flutter/material.dart';
import 'package:google_search_engine/colors/colors.dart';

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
      onPressed: onpressed,
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 18,
      ),
      hoverColor: blueColor,
      color: Colors.transparent,
      child: Text(title),
    );
  }
}
