import 'package:flutter/material.dart';
import 'package:flutter_navigation/shades_page.dart';

class ShadesPageWithParams extends StatelessWidget {
  const ShadesPageWithParams({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as MaterialAccentColor;
    return ShadesPage(color: data);
  }
}
