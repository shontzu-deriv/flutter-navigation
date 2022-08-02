import 'package:flutter/material.dart';
import 'package:flutter_navigation/home_page.dart';
import 'package:flutter_navigation/shades_with_params.dart';
import 'color_picker.dart';

const accents = [100, 200, 400, 700];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Colors App',
      theme: ThemeData(),
      home: const MyHomePage(title: 'Colors App'),
      routes: {
        '/home': (context) => const HomePage(),
        '/shades': (context) => const ShadesPageWithParams(),
        '/color_picker': (context) => const ColorPicker()
      },
      // method 2: onGenerateRoute: () {switch case}
      // onGenerateInitialRoutes: (settings) {
      //   switch(settings.name) {}
      // },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomePage(),
    );
  }
}

class ListItem {}
