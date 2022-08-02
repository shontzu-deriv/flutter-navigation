import 'package:flutter/material.dart';

class ListItems extends StatelessWidget {
  final Color color;

  const ListItems({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 100,
      color: color,
      margin: const EdgeInsets.only(bottom: 10),
    );
  }
}
