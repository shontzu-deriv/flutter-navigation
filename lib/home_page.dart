import 'package:flutter/material.dart';
import 'package:flutter_navigation/list_item.dart';
import 'package:flutter_navigation/shades_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

// NAVIGATOR NAVIGATION
// void navigateToShadesPage(BuildContext context, MaterialAccentColor color) {
//   Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
//     return ShadesPage(color: color);
//   }));
// }

// ROUTER NAVIGATION
void navigateToShadesPage(BuildContext context, MaterialAccentColor color) {
  Navigator.of(context).pushNamed('/shades', arguments: color);
}

void navigateToColorPicker(BuildContext context) {
  Navigator.of(context).pushNamed('/color_picker');
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigateToColorPicker(context);
        },
        tooltip: "null",
        child: const Icon(Icons.add),
      ),
    );
  }
}
