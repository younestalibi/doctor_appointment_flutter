import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/auth_page.dart';
import 'package:flutter_application_1/screens/main_layout.dart';
import 'package:flutter_application_1/utils/config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  //this for pushing navigator
  static final navigateKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    //define ThemData here
    return MaterialApp(
      navigatorKey: navigateKey,
      title: 'Flutter Doctor App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          inputDecorationTheme: const InputDecorationTheme(
              focusColor: Config.primaryColor,
              border: Config.outlineBorder,
              focusedBorder: Config.focusBorder,
              errorBorder: Config.errorBorder,
              enabledBorder: Config.outlineBorder,
              prefixIconColor: Colors.black38),
          scaffoldBackgroundColor: Colors.white,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Config.primaryColor,
            selectedItemColor: Colors.white,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            unselectedItemColor: Colors.grey.shade700,
            elevation: 10,
            type: BottomNavigationBarType.fixed,
          )),
      initialRoute: '/',
      routes: {
        '/': (context) => const AuthPage(),
        'main': (context) => const MainLayout(),
      },
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
