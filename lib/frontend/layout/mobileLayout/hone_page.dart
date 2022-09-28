import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.2,
              ),
              Image.asset(
                "assets/logo/logo.png",
                height: size.height * 0.18,
                width: size.width * 0.42,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: RichText(
              text: const TextSpan(
                  text: 'Welcome to Yabatech ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                  children: [
                    TextSpan(
                      text: 'Search Engine',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
