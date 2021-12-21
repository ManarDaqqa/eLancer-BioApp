import 'package:bio_app/screens/about_screen.dart';
import 'package:bio_app/screens/bio_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: BioScreen(),
      initialRoute: '/bio_screen',
      routes: {
        '/about_screen' : (context) => AboutScreen(),
        '/bio_screen' : (context) => BioScreen(),
      },

    );
  }
}
