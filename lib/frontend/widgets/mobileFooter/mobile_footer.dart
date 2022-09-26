import 'package:flutter/material.dart';
import 'package:google_search_engine/frontend/widgets/darkModeFeature/dark_mode_light_mode.dart';
import 'package:google_search_engine/frontend/widgets/footerText/footer_text.dart';
import 'package:provider/provider.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const FooterText(title: 'About Yabatech'),
        const SizedBox(width: 10),
        themeProvider.isDarkMode
            ? const FooterText(
                title: ' Dark Theme',
              )
            : const FooterText(
                title: ' Light Theme',
              ),
      ],
    );
  }
}
