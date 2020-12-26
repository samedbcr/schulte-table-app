import 'package:SchulteTableApp/theme/custom_theme.dart';
import 'package:SchulteTableApp/view/game_view.dart';
import 'package:SchulteTableApp/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /**
     * StatusBar Color -> White
     */
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarBrightness: Brightness.dark));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: CustomTheme.darkTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/game': (context) => GameScreen(),
      },
    );
  }
}
