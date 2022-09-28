import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yabatech_search/colors/colors.dart';
import 'package:yabatech_search/frontend/widgets/darkModeFeature/dark_mode_light_mode.dart';

class SearchFooter extends StatelessWidget {
  const SearchFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: size.width > 768 ? 30 : 10,
            vertical: 15,
          ),
          child: Row(
            children: [
              Text(
                'Nigeria',
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 16,
                ),
              ),
              const SizedBox(width: 10),
              Container(
                height: 20,
                width: 0.5,
                color: primaryColor,
              ),
              const SizedBox(width: 10),
              const Icon(
                Icons.circle,
                size: 12,
                color: Colors.blue,
              ),
              const SizedBox(width: 10),
              Text(
                'Lagos Mainland, Lagos',
                style: TextStyle(
                  color: themeProvider.isDarkMode
                      ? primaryColor
                      : Colors.grey[800],
                  fontSize: 14,
                ),
              )
            ],
          ),
        ),
        const Divider(
          thickness: 0,
          height: 9,
          color: Colors.black26,
        ),
        Container(
          height: 60,
          padding: const EdgeInsets.only(top: 20, left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Help',
                style: TextStyle(
                  color: themeProvider.isDarkMode
                      ? primaryColor
                      : Colors.grey[800],
                  fontSize: 15,
                ),
              ),
              const SizedBox(width: 20),
              Text(
                'Send FeedBack',
                style: TextStyle(
                  color: themeProvider.isDarkMode
                      ? primaryColor
                      : Colors.grey[800],
                  fontSize: 15,
                ),
              ),
              const SizedBox(width: 20),
              Text(
                'Privacy',
                style: TextStyle(
                  color: themeProvider.isDarkMode
                      ? primaryColor
                      : Colors.grey[800],
                  fontSize: 15,
                ),
              ),
              const SizedBox(width: 20),
              Text(
                'Terms',
                style: TextStyle(
                  color: themeProvider.isDarkMode
                      ? primaryColor
                      : Colors.grey[800],
                  fontSize: 15,
                ),
              ),
              // const SizedBox(width: 20),
            ],
          ),
        ),
      ],
    );
  }
}
