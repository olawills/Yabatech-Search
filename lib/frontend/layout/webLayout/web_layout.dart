import 'package:flutter/material.dart';
import 'package:yabatech_search/frontend/widgets/darkModeFeature/dark_mode_toggle.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/link.dart';
import 'package:yabatech_search/colors/colors.dart';
import 'package:yabatech_search/frontend/layout/webLayout/model/menu_itmes.dart';
import 'package:yabatech_search/frontend/widgets/darkModeFeature/dark_mode_light_mode.dart';
import 'package:yabatech_search/frontend/widgets/search/search_bar.dart';
import 'package:yabatech_search/frontend/widgets/shortcutButtons/shortcut_buttons.dart';
import 'package:yabatech_search/frontend/widgets/webFooter/web_footer.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: <String>[
    'email',
  ],
);

class WebScreenLayout extends StatefulWidget {
  const WebScreenLayout({
    Key? key,
  }) : super(key: key);

  @override
  State<WebScreenLayout> createState() => _WebScreenLayoutState();
}

class _WebScreenLayoutState extends State<WebScreenLayout> {
  GoogleSignInAccount? _currentUser;
  @override
  void initState() {
    super.initState();
    _googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount? account) {
      setState(() {
        _currentUser = account;
      });
    });
    _googleSignIn.signInSilently();
  }

  Future<void> _handleSignIn() async {
    try {
      await _googleSignIn.signIn();
    } catch (error) {
      print(error.toString());
    }
  }

  Future<void> _handleSignOut(BuildContext context) =>
      _googleSignIn.disconnect();
  @override
  Widget build(BuildContext context) {
    const historyLink = "https://www.yabatech.edu.ng/history.php";
    const portalLink = "https://portal.yabatech.edu.ng/portalplus/";
    final themeProvider = Provider.of<ThemeProvider>(context);
    final size = MediaQuery.of(context).size;
    final colour = themeProvider.isDarkMode ? Colors.white : backgroundColor;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: DarkModeToggle().onClicked(context),
        // themeProvider.isDarkMode
        //     ? Padding(
        //         padding: const EdgeInsets.only(left: 20),
        //         child: IconButton(
        //           icon: const Icon(
        //             FontAwesomeIcons.moon,
        //             color: Colors.grey,
        //             size: 50,
        //           ),
        //           onPressed: () {},
        //         ),
        //       )
        //     : Padding(
        //         padding: const EdgeInsets.only(left: 20),
        //         child: IconButton(
        //           icon: const Icon(
        //             FontAwesomeIcons.moon,
        //             color: Colors.black,
        //             size: 50,
        //           ),
        //           onPressed: () {},
        //         ),
        //       ),
        actions: [
          Link(
            target: LinkTarget.blank,
            uri: Uri.parse(historyLink),
            builder: (context, followLink) => TextButton(
              onPressed: followLink,
              child: Text(
                'History of Yabatech',
                style: TextStyle(
                  color: colour,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Link(
            target: LinkTarget.blank,
            uri: Uri.parse(portalLink),
            builder: (context, yabaLink) => TextButton(
              onPressed: yabaLink,
              child: Text(
                'Yabatech portal',
                style: TextStyle(
                  color: colour,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          // top: 10, right: 20
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: _buildBody(),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.08,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Search(),
                      SizedBox(height: 40),
                      ShortcutButtons(),
                      SizedBox(height: 30),
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

  Widget _buildBody() {
    final GoogleSignInAccount? user = _currentUser;
    if (user != null) {
      return Row(
        children: [
          CircleAvatar(
            radius: 70,
            backgroundImage: NetworkImage(user.photoUrl!),
            // title: Text(user.displayName ?? ''),
            // subtitle: Text(user.email),
          ),
          PopupMenuButton<MenusItem>(
            itemBuilder: (context) => [
              ...MenuItems.itemsFirst.map(buildItems).toList(),
            ],
          ),
        ],
      );
    } else {
      return MaterialButton(
        onPressed: _handleSignIn,
        color: const Color(0xff1a73eb),
        child: const Text(
          'Sign in',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }

  PopupMenuItem<MenusItem> buildItems(MenusItem item) => PopupMenuItem(
        value: item,
        child: TextButton(
          onPressed: () {
            _handleSignOut(context).whenComplete(() => Navigator.pop(context));
          },
          child: Row(
            children: [
              Icon(item.icon, color: Colors.black, size: 20),
              const SizedBox(width: 12),
              Text(
                item.text,
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      );
}

// flutter run -d chrome --web-hostname localhost --web-port 5000