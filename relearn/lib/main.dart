import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List data = [
    'data1',
    'data2',
    'data3',
    'data4',
    'data5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dropdown',
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: DropdownButton(
            items: data
                .map(
                  (e) => DropdownMenuItem(
                    child: Text(e.toString()),
                    value: e.toString(),
                  ),
                )
                .toList(),
            onChanged: (valeu) {},
          ),
        ),
      ),
    );
  }
}
