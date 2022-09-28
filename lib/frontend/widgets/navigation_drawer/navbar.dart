import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:yabatech_search/frontend/widgets/darkModeFeature/dark_mode_light_mode.dart';
import 'package:yabatech_search/frontend/widgets/userPage/user_page.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    final themeProvider =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? 'Dark Mode'
            : 'Light Mode';

    const name = "Sign in";
    const email = "wobdele@gmail.com";
    const urlImage =
        "https://images.unsplash.com/photo-1663524789641-ac21f6ee2301?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80";

    return Drawer(
      child: Material(
        child: Container(
          child: ListView(
            children: [
              buildHeader(
                urlImage: urlImage,
                name: name,
                email: email,
                onClicked: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const UserPage(
                      name: name,
                      urlImage: urlImage,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  onClicked(context),
                  Text(
                    themeProvider,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              // BuildMenu(
              //   text: 'Account Settings',
              //   icon: Icons.account_box,
              //   onClicked: () => selectedItem(context, 1),
              // ),
              // BuildMenu(
              //   text: 'Home',
              //   icon: Icons.home,
              //   onClicked: () => selectedItem(context, 2),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  buildHeader({
    required String urlImage,
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) =>
      GestureDetector(
        onTap: onClicked,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
          child: Row(
            children: [
              CircleAvatar(
                radius: 32,
                backgroundImage: NetworkImage(urlImage),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    email,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              InkWell(
                onTap: () {},
                child: const CircleAvatar(
                  radius: 24,
                  backgroundColor: Color.fromRGBO(30, 60, 168, 1),
                  child: Icon(
                    Icons.add_comment_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  onClicked(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Switch.adaptive(
      value: themeProvider.isDarkMode,
      onChanged: (value) {
        final provider = Provider.of<ThemeProvider>(context, listen: false);
        provider.toggleTheme(value);
      },
    );
  }
}
