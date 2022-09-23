import 'package:flutter/material.dart';
import 'package:google_search_engine/frontend/widgets/darkModeFeature/dark_mode_light_mode.dart';
import 'package:google_search_engine/frontend/widgets/userPage/user_page.dart';
import 'package:provider/provider.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? 'DarkTheme'
            : 'LightTheme';

    const name = 'Williams Olabamidele';
    const email = 'wobdele@gmail.com';
    const urlImage =
        "https://images.unsplash.com/photo-1663524789641-ac21f6ee2301?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80";
    const padding = EdgeInsets.symmetric(horizontal: 10);
    return Drawer(
      child: Material(
        child: Container(
          // color: themeProvider,
          child: ListView(
            // padding: padding,
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
      InkWell(
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

//   void selectedItem(BuildContext context, int index) {
//     Navigator.of(context).pop();
//     switch (index) {
//       case 0:
//         Navigator.of(context).push(
//           MaterialPageRoute(
//             builder: (context) => const DarkMode(),
//           ),
//         );
//         break;
//       // case 1:
//       //   Navigator.of(context).push(
//       //     MaterialPageRoute(
//       //       builder: (context) => const AccountSetings(),
//       //     ),
//       //   );
//       //   break;
//       // case 2:
//       //   Navigator.of(context).push(
//       //     MaterialPageRoute(
//       //       builder: (context) => const MobileScreenLayout(),
//       //     ),
//       //   );
//       //   break;
//     }
//   }
// }
}
