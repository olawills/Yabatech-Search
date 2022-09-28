import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yabatech_search/frontend/widgets/darkModeFeature/dark_mode_light_mode.dart';
import 'package:yabatech_search/frontend/widgets/footerText/footer_text.dart';

class WebFooter extends StatelessWidget {
  const WebFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Container(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  child: const FooterText(
                    title: 'About Yabatech',
                  ),
                ),
                const SizedBox(width: 10),
                InkWell(
                  onTap: () {},
                  child: const FooterText(
                    title: 'Settings',
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const FooterText(title: 'Privacy'),
                const SizedBox(width: 10),
                themeProvider.isDarkMode
                    ? const FooterText(
                        title: ' Dark Theme',
                      )
                    : const FooterText(
                        title: ' Light Theme',
                      ),
                const SizedBox(width: 10),
                const FooterText(title: 'Terms'),
                // FooterText(title: 'Settings'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
