import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_search_engine/colors/colors.dart';
import 'package:google_search_engine/frontend/layout/screens/mobile_search_screen.dart';
import 'package:google_search_engine/frontend/layout/screens/searchScreen/search_screen.dart';
import 'package:google_search_engine/frontend/widgets/darkModeFeature/dark_mode_light_mode.dart';
import 'package:provider/provider.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Stack(
      children: [
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/logo/logo.png",
                      height: size.height * 0.18,
                      width: size.width * 0.42,
                    ),
                    Text(
                      "Yabatech Search",
                      style: TextStyle(
                        fontSize: size.height > 768
                            ? size.height * 0.08
                            : size.height * 0.07,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height <= 768
                    ? size.height * 0.030
                    : size.height * 0.027,
              ),
              SizedBox(
                width: size.width > 768 ? size.width * 0.45 : size.width * 0.8,
                child: TextFormField(
                  onFieldSubmitted: (query) {
                    size.width > 768
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SearchScreen(
                                searchQuery: query,
                                start: '0',
                              ),
                            ),
                          )
                        : Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MobileSearchScreen(
                                searchQuery: query,
                                start: '0',
                              ),
                            ),
                          );
                  },
                  decoration: InputDecoration(
                    hintText: "search or type a web address",
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: backgroundColor,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      ),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        'assets/images/search-icon.svg',
                        color: themeProvider.isDarkMode ? primaryColor : backgroundColor,
                        width: 1,
                        height: 1,
                      ),
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        "assets/images/mic-icon.svg",
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
