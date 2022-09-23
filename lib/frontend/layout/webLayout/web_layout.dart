import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_search_engine/colors/colors.dart';
import 'package:google_search_engine/frontend/widgets/search/search_bar.dart';
import 'package:google_search_engine/frontend/widgets/webFooter/web_footer.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    List recentWebsites = [
      "g.png",
      "t.png",
      "f.png",
    ];
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        //backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'History of Yabatech',
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Yabatech portal',
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/images/more-apps.svg",
              color: primaryColor,
            ),
          ),
          const SizedBox(width: 10),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0).copyWith(right: 10),
            child: const CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                // user.photoURL!
                  "https://images.unsplash.com/photo-1663524789641-ac21f6ee2301?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                  ),
            ),
            // MaterialButton(
            //   onPressed: () {},
            //   color: const Color(0xff1a73eb),
            //   child: const Text(
            //     'Sign in',
            //     style: TextStyle(
            //       color: Colors.white,
            //     ),
            //   ),
            // ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.18,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const Search(),
                      const SizedBox(height: 30),

                      Wrap(
                        children: List<Widget>.generate(3, (index) {
                          return GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: 30.0,
                                left: 20.0,
                              ),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor:
                                    Theme.of(context).iconTheme.color,
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundColor:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  child: CircleAvatar(
                                    backgroundColor: primaryColor,
                                    radius: 15,
                                    backgroundImage: AssetImage(
                                      // ignore: prefer_interpolation_to_compose_strings
                                      "assets/recent_websites_images/" +
                                          recentWebsites[index],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                      //
                      // const SizedBox(height: 30),
                    ],
                  ),
                  const WebFooter(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
