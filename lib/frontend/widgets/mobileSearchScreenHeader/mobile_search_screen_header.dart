import 'package:flutter/material.dart';
import 'package:google_search_engine/colors/colors.dart';
import 'package:google_search_engine/frontend/layout/screens/mobile_search_screen.dart';
import 'package:google_search_engine/frontend/widgets/darkModeFeature/dark_mode_light_mode.dart';
import 'package:provider/provider.dart';

class MobileSearchScreenHeader extends StatelessWidget {
  const MobileSearchScreenHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo/logo.png',
                height: 70,
                width: 80,
              ),
              Text(
                'Yabatech Search',
                style: TextStyle(
                  fontSize: 24,
                  color:
                      themeProvider.isDarkMode ? primaryColor : backgroundColor,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        SizedBox(
          height: 50,
          child: Padding(
            padding: const EdgeInsets.only(left: 70, right: 70),
            child: TextFormField(
              onFieldSubmitted: (text) {
                if (text.trim() != "") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => MobileSearchScreen(
                        searchQuery: text.trim(),
                      ),
                    ),
                  );
                }
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
