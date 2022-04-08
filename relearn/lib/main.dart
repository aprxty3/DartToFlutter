import 'package:flutter/material.dart';

import 'http_request/http_get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Http_GET(),
    );
  }
}
