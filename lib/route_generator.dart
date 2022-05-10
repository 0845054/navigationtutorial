import 'package:flutter/material.dart';
import 'package:navigationtutorial/pageone.dart';
import 'package:navigationtutorial/pagetwo.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case('/') :
        return MaterialPageRoute(builder: (_) => const PageOne());
      case('/second') :
        return MaterialPageRoute(builder: (_) => const PageTwo());
        
      default:
         return MaterialPageRoute(builder: (_) => const PageOne());
    }
  }
}