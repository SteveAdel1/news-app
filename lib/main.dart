import 'package:flutter/material.dart';
import 'package:news_app/core/config/application_theme_manager.dart';
import 'package:news_app/core/config/pages_route_names.dart';
import 'package:news_app/core/config/routes.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
GlobalKey globalKey= GlobalKey();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:ApplicationThemeManager.applicationThemeManager,
      themeMode: ThemeMode.light,
      initialRoute: PagesRouteNames.initial,
      onGenerateRoute: Routes.onGenerateRouts,
      navigatorKey: navigatorKey,

    );
  }
}
