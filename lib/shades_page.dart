import 'main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigation/list_item.dart';

class ShadesPage extends StatelessWidget {
  final MaterialAccentColor color;

  ShadesPage({required this.color});

  @override
  Widget build(BuildContext context) {
    final List<Color> accentShades = [
      color.shade100,
      color.shade200,
      color.shade400,
      color.shade700
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Shades Page")),
      // body: const Text("Shades Page"),
      body: ListView.builder(
        itemCount: accentShades.length,
        itemBuilder: (BuildContext context, int index) {
          return ListItems(color: accentShades[index]); //ListItems comes from the list_item.dart class
        },
      ),
    );
  }
}
