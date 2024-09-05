import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_submition/grid_view.dart';
import 'package:flutter_submition/second_page.dart';
import 'package:flutter_submition/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const WelcomePage(),
        '/SecondPage': (context) => const SecondPage(),
      },
    );
  }
}