import 'package:flutter/material.dart';
import 'package:flutter_navigation/list_item.dart';
import 'package:flutter_navigation/shades_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

// SYNTAX: Navigator.push(context, route)
void navigateToShadesPage(BuildContext context, MaterialAccentColor color) {
  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
    return ShadesPage(color: color);
  }));
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("colors app")),
      ),
      body: ListView.builder(
          itemCount: Colors.accents.length,
          itemBuilder: (BuildContext context, int index) {
            //for each item in accent from main.dart, render the list_item
            return GestureDetector(
              onTap: () {
                // print(Colors.accents.elementAt(index));
                var chosenColor = Colors.accents.elementAt(index);
                navigateToShadesPage(context, chosenColor);
              },
              child: ListItems(color: Colors.accents.elementAt(index)),
            );
          }),
    );
  }
}
