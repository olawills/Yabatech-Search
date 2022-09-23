import 'package:flutter/material.dart';
import 'package:google_search_engine/colors/colors.dart';

class SearchFooter extends StatelessWidget {
  const SearchFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          // color: footerColor,
          padding: const EdgeInsets.symmetric(
            horizontal: 150,
            vertical: 15,
          ),
          child: Row(
            children: [
              Text(
                'Nigeria',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              const SizedBox(width: 10),
              Container(
                height: 20,
                width: 0.5,
                color: Colors.grey,
              ),
              const SizedBox(width: 10),
              const Icon(
                Icons.circle,
                size: 12,
                color: Color(0xff70757a),
              ),
              const SizedBox(width: 10),
              const Text(
                'Lagos Mainland',
                style: TextStyle(
                  color: backgroundColor,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
