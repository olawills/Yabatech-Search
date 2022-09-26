import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_search_engine/backend/database/api/api_service.dart';
import 'package:google_search_engine/colors/colors.dart';
import 'package:google_search_engine/frontend/layout/screens/searchScreen/search_screen.dart';
import 'package:google_search_engine/frontend/widgets/SearchScreenErrorHandler/error_handle.dart';
import 'package:google_search_engine/frontend/widgets/darkModeFeature/dark_mode_light_mode.dart';
import 'package:google_search_engine/frontend/widgets/mobileSearchScreenHeader/mobile_search_screen_header.dart';
import 'package:google_search_engine/frontend/widgets/searchFooter/search_footer.dart';
import 'package:google_search_engine/frontend/widgets/searchReasult/search_result.dart';
import 'package:google_search_engine/frontend/widgets/searchTabs/search_tabs.dart';
import 'package:provider/provider.dart';

class MobileSearchScreen extends StatelessWidget {
  final String searchQuery;
  final String start;
  const MobileSearchScreen({
    Key? key,
    required this.searchQuery,
    this.start = '0',
  }) : super(key: key);

  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Title(
          // for the title of the website
          color: Colors.blue, // This is required
          title: searchQuery,
          child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MobileSearchScreenHeader(),
                  const Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: SingleChildScrollView(
                      child: SearchTabs(),
                    ),
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
                  FutureBuilder<Map<String, dynamic>>(
                    future: ApiService().fetchData(
                        queryTerm: searchQuery, start: start, context: context),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 20, top: 15),
                              child: Text(
                                "About ${snapshot.data?['searchInformation']['formattedTotalResults']} results (${snapshot.data?['searchInformation']['formattedSearchTime']} seconds)",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: themeProvider.isDarkMode
                                      ? primaryColor
                                      : Colors.black,
                                  // color: Color(0xff7075a),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: snapshot.data?['items'].length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.only(left: 20, top: 10),
                                  child: SearchResult(
                                    linkToGo: snapshot.data?['items'][index]
                                        ['link'],
                                    link: snapshot.data?['items'][index]
                                        ['formattedUrl'],
                                    text: snapshot.data?['items'][index]
                                        ['title'],
                                    desc: snapshot.data?['items'][index]
                                        ['snippet'],
                                  ),
                                );
                              },
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  TextButton(
                                    onPressed: start != "0"
                                        ? () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    SearchScreen(
                                                  searchQuery: searchQuery,
                                                  start: (int.parse(start) - 10)
                                                      .toString(),
                                                ),
                                              ),
                                            );
                                          }
                                        : () {
                                            Get.toNamed("/");
                                          },
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
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => SearchScreen(
                                            searchQuery: searchQuery,
                                            start: (int.parse(start) + 10)
                                                .toString(),
                                          ),
                                        ),
                                      );
                                    },
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
                        );
                      }
                      return const SearchErrorHandler();
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
