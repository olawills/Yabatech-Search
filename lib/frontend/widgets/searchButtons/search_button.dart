import 'package:flutter/material.dart';
import 'package:google_search_engine/frontend/widgets/searchButtonWidget/search_button_widget.dart';

class SearchButtons extends StatelessWidget {
  const SearchButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SearchButtonWidget(
              title: "Search",
              onpressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
