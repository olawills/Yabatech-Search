import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_search_engine/colors/colors.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

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
                height: size.height > 768
                    ? size.height * 0.009
                    : size.height * 0.027,
              ),
              SizedBox(
                width: size.width > 768 ? size.width * 0.45 : size.width * 0.8,
                child: TextFormField(
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
                        color: backgroundColor,
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
