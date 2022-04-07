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
    {
      'judul': 'Pilihan ke - 1',
      'data': '1',
    },
    {
      'judul': 'Pilihan ke - 2',
      'data': '2',
    },
    {
      'judul': 'Pilihan ke - 3',
      'data': '3',
    },
    {
      'judul': 'Pilihan ke - 3',
      'data': '3',
    },
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
                    child: Text('TAMPILAN ${e.toString()}'),
                    value: e.toString(),
                  ),
                )
                .toList(),
            onChanged: (value) {
              print(value);
            },
          ),
        ),
      ),
    );
  }
}
