import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/main.dart';

class Constants{

  static var mediaQuery =
      MediaQuery.of(navigatorKey.currentState!.context).size;
  static var theme = Theme.of(navigatorKey.currentState!.context);
  static const String apiKey = "27ea748c838a433f9d2be85bd8efb19b";
  static const String baseUrl = "newsapi.org";
}