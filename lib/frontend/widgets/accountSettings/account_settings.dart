import 'package:flutter/material.dart';
import 'package:yabatech_search/colors/colors.dart';
import 'package:yabatech_search/frontend/widgets/navigation_drawer/navbar.dart';

class AccountSetings extends StatelessWidget {
  const AccountSetings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        title: const Text(
          'AccountSettings',
        ),
        centerTitle: true,
        backgroundColor: backgroundColor,
      ),
    );
  }
}
