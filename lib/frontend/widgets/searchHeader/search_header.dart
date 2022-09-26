import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_search_engine/colors/colors.dart';
import 'package:google_search_engine/frontend/layout/screens/searchScreen/search_screen.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 28,
              right: 10,
              top: 4,
            ),
            child: Image.asset(
              'assets/logo/logo.png',
              height: 70,
              width: 120,
            ),
          ),
          const SizedBox(width: 15),
          Container(
            width: size.width * 0.50,
            height: 50,
            decoration: BoxDecoration(
              // color: searchColor,
              borderRadius: BorderRadius.circular(40),
              border: Border.all(),
            ),
            child: TextField(
              onSubmitted: (text) {
                if (text.trim() != "") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SearchScreen(
                        searchQuery: text.trim(),
                      ),
                    ),
                  );
                }
              },
              style: const TextStyle(
                fontSize: 16,
              ),
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 150),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: SvgPicture.asset(
                            "assets/images/mic-icon.svg",
                            height: 20,
                            width: 20,
                          ),
                        ),
                        const SizedBox(width: 20),
                        InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.search,
                            color: blueColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
