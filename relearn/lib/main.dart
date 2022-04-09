import 'package:flutter/material.dart';
import 'package:relearn/1.http_request/http_post.dart';

import '1.http_request/http_get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: http_POST(),
    );
  }
}
