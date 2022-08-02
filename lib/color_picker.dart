import 'package:flutter/material.dart';
import 'package:flutter_navigation/home_page.dart';

double _redSliderValue = 0;
double _greenSliderValue = 0;
double _blueSliderValue = 0;
String RGBA =
    "RGB ${_redSliderValue.toInt()}, ${_greenSliderValue.toInt()}, ${_blueSliderValue.toInt()}";

class ColorPicker extends StatefulWidget {
  const ColorPicker({Key? key}) : super(key: key);

  @override
  State<ColorPicker> createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("COLOR PICKER")),
      ),
      body: Column(
        children: [
          Slider(
            value: _redSliderValue,
            max: 255,
            // divisions: 255,
            label: "Red: ${_redSliderValue.round().toString()}",
            onChanged: (double value) => {
              setState(() {
                _redSliderValue = value;
                RGBA =
                    "RGB ${_redSliderValue.toInt()}, ${_greenSliderValue.toInt()}, ${_blueSliderValue.toInt()}";
              }),
            },
          ),
          Slider(
            value: _greenSliderValue,
            max: 255,
            // divisions: 255,
            label: "Green: ${_greenSliderValue.round().toString()}",
            onChanged: (double value) => {
              setState(() {
                _greenSliderValue = value;
                RGBA =
                    "RGB ${_redSliderValue.toInt()}, ${_greenSliderValue.toInt()}, ${_blueSliderValue.toInt()}";
              }),
            },
          ),
          Slider(
            value: _blueSliderValue,
            max: 255,
            // divisions: 255,
            label: "Blue: ${_blueSliderValue.round().toString()}",
            onChanged: (double value) => {
              setState(() {
                _blueSliderValue = value;
                RGBA =
                    "RGB ${_redSliderValue.toInt()}, ${_greenSliderValue.toInt()}, ${_blueSliderValue.toInt()}";
              }),
            },
          ),
          Container(
            height: 150.0,
            width: 150.0,
            decoration: BoxDecoration(
              // color: Colors.blue,
              color: Color.fromARGB(
                255,
                _redSliderValue.toInt(),
                _greenSliderValue.toInt(),
                _blueSliderValue.toInt(),
              ),
              borderRadius: const BorderRadius.all(Radius.circular(100)),
            ),
          ),
          TextButton(
            onPressed: () =>
            {  Navigator.of(context).pop('/home', /*arguments:*/ ),
            showDialog<String>(
              context: context,
              builder: (BuildContext context) =>
                  AlertDialog(
                    // title: const Text(''),
                    content: Row(
                      children: [
                        const Text('you have chosen: '),
                        Container(
                          height: 20.0,
                          width: 20.0,
                          decoration: BoxDecoration(
                            // color: Colors.blue,
                            color: Color.fromARGB(
                              255,
                              _redSliderValue.toInt(),
                              _greenSliderValue.toInt(),
                              _blueSliderValue.toInt(),
                            ),
                            borderRadius: const BorderRadius.all(Radius.circular(100)),
                          ),
                        ),
                      ],
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
            ),},
            child: Text("choose $RGBA"),
          ),
        ],
      ),
    );
  }
}
