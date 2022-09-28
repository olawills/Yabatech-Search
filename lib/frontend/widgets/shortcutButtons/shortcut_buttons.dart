import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:yabatech_search/colors/colors.dart';

class ShortcutButtons extends StatelessWidget {
  const ShortcutButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var yabatechLink = "https://www.yabatech.edu.ng";
    var googleLink = "https://www.google.com";
    var facebookLink = "https://www.facebook.com";
    return Padding(
      padding: const EdgeInsets.only(right: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Link(
            target: LinkTarget.blank,
            uri: Uri.parse(yabatechLink),
            builder: (context, followLink) => TextButton(
              onPressed: followLink,
              child: const CircleAvatar(
                radius: 25,
                backgroundColor: primaryColor,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: primaryColor,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: primaryColor,
                    backgroundImage: AssetImage(
                      'assets/recent_websites_images/l.png',
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 50),
          Link(
            target: LinkTarget.blank,
            uri: Uri.parse(googleLink),
            builder: (context, google) => TextButton(
              onPressed: google,
              child: const CircleAvatar(
                radius: 25,
                backgroundColor: primaryColor,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: primaryColor,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: primaryColor,
                    backgroundImage: AssetImage(
                      'assets/recent_websites_images/g.png',
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 50),
          Link(
            target: LinkTarget.blank,
            uri: Uri.parse(facebookLink),
            builder: (context, fb) => TextButton(
              onPressed: fb,
              child: const CircleAvatar(
                radius: 25,
                backgroundColor: primaryColor,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: primaryColor,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: primaryColor,
                    backgroundImage: AssetImage(
                      'assets/recent_websites_images/f.png',
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
