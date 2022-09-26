import 'package:flutter/material.dart';
import 'package:google_search_engine/colors/colors.dart';

class ShortcutButtons extends StatelessWidget {
  const ShortcutButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 70),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {},
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
          const SizedBox(width: 50),
          GestureDetector(
            onTap: () {},
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
          const SizedBox(width: 50),
          GestureDetector(
            onTap: () {},
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
        ],
      ),
    );
  }
}
