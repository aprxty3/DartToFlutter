import 'package:flutter/material.dart';
import 'package:relearn/http_request/6model.dart';
import 'package:relearn/http_request/latihan/latihan.dart';

import 'http_request/1http_get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: LatihanHTTP(),
    );
  }
}
