import 'package:cypto_design/src/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'theme.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          restorationScopeId: 'app',
          theme: lightTheme,
          debugShowCheckedModeBanner: false,
          darkTheme: myDarkTheme,
          themeMode: ThemeMode.dark,

          onGenerateRoute: (RouteSettings routeSettings) {
            return MaterialPageRoute<void>(
              settings: routeSettings,
              builder: (BuildContext context) {
                return const HomeScreen();
              },
            );
          },
        );
  }
}
