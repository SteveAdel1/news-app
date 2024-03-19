import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/config/pages_route_names.dart';
import 'package:news_app/pages/home/pages/home_view.dart';
import 'package:news_app/pages/settings/pages/settings_view.dart';
import 'package:news_app/pages/splash/pages/splash_view.dart';

class Routes {
  static Route<dynamic> onGenerateRouts(RouteSettings settings) {
    switch (settings.name) {
      case PagesRouteNames.initial:
        return MaterialPageRoute(
          builder: (context) => SplashView(),
          settings: settings,
        );

      case PagesRouteNames.homeview:
        return MaterialPageRoute(
          builder: (context) =>HomeView(),
          settings: settings,);

      case PagesRouteNames.settingview:
        return MaterialPageRoute(
          builder: (context) => SettingsView(),
        settings: settings,);

        default:
          return MaterialPageRoute(
            builder: (context) => SplashView(),
            settings: settings,
          );
    }
  }
}
