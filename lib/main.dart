import 'package:flutter/material.dart';
import 'package:google_search_engine/frontend/layout/mobileLayout/mobile_layout.dart';
import 'package:google_search_engine/frontend/layout/responsive/responsive_layout_screen.dart';
import 'package:google_search_engine/frontend/layout/webLayout/web_layout.dart';
import 'package:google_search_engine/frontend/widgets/darkModeFeature/dark_mode_light_mode.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        return GetMaterialApp(
          title: 'Google Search Engine',
          debugShowCheckedModeBanner: false,
          themeMode: themeProvider.themeMode,
          theme: MyThemes.lightTheme,
          darkTheme: MyThemes.darkTheme,
          // home:
          // const HomePage()
          // const SearchScreen(),
          //     const ResponsiveLayoutScreen(
          //   mobileScreenLayout: MobileScreenLayout(),
          //   webScreenLayout: WebScreenLayout(),
          // ),
          initialRoute: "/",
          getPages: [
            GetPage(
              name: "/",
              page: () => const ResponsiveLayoutScreen(
                mobileScreenLayout: MobileScreenLayout(),
                webScreenLayout: WebScreenLayout(),
              ),
              
            ),
            
          ],
        );
      },
    );
  }
}
