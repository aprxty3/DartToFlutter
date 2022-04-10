import 'package:flutter/material.dart';
import 'package:relearn/1.http_request/future_builder.dart';
import 'package:relearn/1.http_request/http_delete.dart';
import 'package:relearn/1.http_request/http_post.dart';
import 'package:relearn/1.http_request/http_putPatch.dart';
import 'package:relearn/1.http_request/model.dart';

import '1.http_request/http_get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Model(),
    );
  }
}
