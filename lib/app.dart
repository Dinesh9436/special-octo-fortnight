import 'package:flutter/material.dart';
import 'screens/home.dart';

class CountryListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Country List App',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.blue,
      accentColor: Colors.blue
    ),
    home: Home(),
  );
}
