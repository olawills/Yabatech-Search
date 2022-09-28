import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/link.dart';
import 'package:yabatech_search/colors/colors.dart';
import 'package:yabatech_search/frontend/widgets/darkModeFeature/dark_mode_light_mode.dart';
import 'package:yabatech_search/frontend/widgets/linkText/link_text.dart';

class SearchResult extends StatelessWidget {
  final String linkToGo;
  final String link;
  final String desc;
  final String text;
  const SearchResult({
    Key? key,
    required this.text,
    required this.link,
    required this.linkToGo,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          link,
          style: TextStyle(
            color: themeProvider.isDarkMode ? primaryColor : Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Link(
            target: LinkTarget.blank,
            uri: Uri.parse(linkToGo),
            builder: (context, followLink) => LinkText(
              link: link,
              text: text,
              textStyle: TextStyle(
                color: themeProvider.isDarkMode ? primaryColor : Colors.black,
                fontSize: 20,
              ),
              onPressed: followLink,
            ),
          ),
        ),
        Text(
          desc,
          style: TextStyle(
            fontSize: 14,
            color: themeProvider.isDarkMode ? primaryColor : Colors.black,
          ),
        ),
        // const SizedBox(height: 10),
      ],
    );
  }
}
