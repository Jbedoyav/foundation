import 'package:flutter/material.dart';
import 'package:foundations/design_system/tokens/theme.dart';
import 'package:foundations/pages/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Themes.defaultTheme,
      debugShowCheckedModeBanner: false,
      home: const HomePage(
        key: Key('home page'),
      ),
    );
  }
}
