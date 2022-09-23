import 'package:flutter/material.dart';
import 'package:google_search_engine/colors/colors.dart';
import 'package:google_search_engine/frontend/widgets/searchHeader/search_header.dart';
import 'package:google_search_engine/frontend/widgets/searchTabs/search_tabs.dart';

import '../../../widgets/searchFooter/search_footer.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchHeader(),
            const Padding(
              padding: EdgeInsets.only(left: 100),
              child: SearchTabs(),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Divider(
                height: 0,
                thickness: 0.3,
              ),
            ),
            // Search Results
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      '< Prev',
                      style: TextStyle(
                        fontSize: 15,
                        color: blueColor,
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Next >',
                      style: TextStyle(
                        fontSize: 15,
                        color: blueColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 30),
            const SearchFooter(),
          ],
        ),
      ),
    );
  }
}
