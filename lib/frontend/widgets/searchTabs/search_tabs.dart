import 'package:flutter/material.dart';
import 'package:google_search_engine/frontend/widgets/searchTabs/search_buttons_tabs.dart';

class SearchTabs extends StatelessWidget {
  const SearchTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          MaterialButton(
            onPressed: () {},
            child: const SearchButtonTabs(
              isActive: true,
              text: 'All',
              icon: Icons.search,
            ),
          ),
          const SizedBox(width: 20),
          MaterialButton(
            onPressed: () {},
            child: const SearchButtonTabs(
              text: 'News',
              icon: Icons.image,
            ),
          ),
          const SizedBox(width: 20),
          MaterialButton(
            onPressed: () {},
            child: const SearchButtonTabs(
              text: 'Images',
              icon: Icons.article,
            ),
          ),
          const SizedBox(width: 20),
          MaterialButton(
            onPressed: () {},
            child: const SearchButtonTabs(
              text: 'Maps',
              icon: Icons.map,
            ),
          ),
          const SizedBox(width: 20),
          MaterialButton(
            onPressed: () {},
            child: const SearchButtonTabs(
              text: 'Shopping',
              icon: Icons.shop,
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
