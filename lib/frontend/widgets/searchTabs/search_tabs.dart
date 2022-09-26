import 'package:flutter/material.dart';
import 'package:google_search_engine/frontend/widgets/searchTabs/search_buttons_tabs.dart';

class SearchTabs extends StatelessWidget {
  final Color? color;
  const SearchTabs({
    Key? key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
          SizedBox(width: size.width <= 768 ? 10 : 20),
          MaterialButton(
            onPressed: () {},
            child: const SearchButtonTabs(
              text: 'Videos',
              icon: Icons.video_camera_back,
            ),
          ),
          SizedBox(width: size.width <= 768 ? 10 : 20),
          MaterialButton(
            onPressed: () {},
            child: const SearchButtonTabs(
              text: 'Images',
              icon: Icons.image,
            ),
          ),
          SizedBox(width: size.width <= 768 ? 10 : 20),
          MaterialButton(
            onPressed: () {},
            child: const SearchButtonTabs(
              text: 'News',
              icon: Icons.map,
            ),
          ),
          SizedBox(width: size.width <= 768 ? 10 : 20),
          MaterialButton(
            onPressed: () {},
            child: const SearchButtonTabs(
              text: 'more',
              icon: Icons.more,
            ),
          ),
        ],
      ),
    );
  }
}
