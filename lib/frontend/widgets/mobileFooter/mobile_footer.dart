import 'package:flutter/material.dart';
import 'package:google_search_engine/frontend/widgets/footerText/footer_text.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final text = MediaQuery.of(context).platformBrightness;
    return Wrap(
      children: [
        const FooterText(title: 'About Yabatech'),
        const SizedBox(width: 10),
        text == Brightness.dark
            ? FooterText(
                title: ' Dark Theme',
                onPressed: () {},
              )
            : FooterText(
                title: ' Light Theme',
                onPressed: () {},
              ),
      ],
    );
  }
}
